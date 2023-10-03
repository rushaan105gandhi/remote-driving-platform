// video_capture.cpp
#include "video_capture.h"
#include <opencv2/opencv.hpp>
#include <iostream>
#include <winsock2.h>

#pragma comment(lib, "ws2_32.lib") // Linking against the Winsock2 library

void sendFrameOverNetwork(const cv::Mat& frame, SOCKET clientSocket) {
    // Converting the OpenCV frame to a format suitable for sending over the network
    std::vector<uchar> encodedFrame;
    cv::imencode(".jpg", frame, encodedFrame);

    // Sending the frame data
    send(clientSocket, reinterpret_cast<char*>(encodedFrame.data()), encodedFrame.size(), 0);
}

void captureVideoFeed() {
    // Initialize Winsock
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "Failed to initialize Winsock\n";
        return;
    }

    // Creating sockets and establishing connections to the servers
    SOCKET clientSocket1 = socket(AF_INET, SOCK_STREAM, 0);
    SOCKET clientSocket2 = socket(AF_INET, SOCK_STREAM, 0);

    if (clientSocket1 == INVALID_SOCKET || clientSocket2 == INVALID_SOCKET) {
        std::cerr << "Error creating sockets\n";
        WSACleanup();
        return;
    }

    sockaddr_in serverAddress1, serverAddress2;
    serverAddress1.sin_family = AF_INET;
    serverAddress1.sin_port = htons(12345); // Replace with the first server's port
    serverAddress1.sin_addr.s_addr = inet_addr("your_first_server_ip_here"); // Replace with the first server's IP address

    serverAddress2.sin_family = AF_INET;
    serverAddress2.sin_port = htons(54321); // Replace with the second server's port
    serverAddress2.sin_addr.s_addr = inet_addr("your_second_server_ip_here"); // Replace with the second server's IP address

    if (connect(clientSocket1, (struct sockaddr*)&serverAddress1, sizeof(serverAddress1)) == SOCKET_ERROR ||
        connect(clientSocket2, (struct sockaddr*)&serverAddress2, sizeof(serverAddress2)) == SOCKET_ERROR) {
        std::cerr << "Error connecting to the servers\n";
        closesocket(clientSocket1);
        closesocket(clientSocket2);
        WSACleanup();
        return;
    }

    cv::VideoCapture capture1(0); // Camera 1 (index 0)
    cv::VideoCapture capture2(1); // Camera 2 (index 1)

    if (!capture1.isOpened() || !capture2.isOpened()) {
        std::cerr << "Failed to open one or both cameras\n";
        closesocket(clientSocket1);
        closesocket(clientSocket2);
        WSACleanup();
        return;
    }

    cv::Mat frame1, frame2;
    while (true) {
        capture1 >> frame1;
        capture2 >> frame2;
        
        if (frame1.empty() || frame2.empty()) {
            break;
        }

        // Sending frames over the network
        sendFrameOverNetwork(frame1, clientSocket1);
        sendFrameOverNetwork(frame2, clientSocket2);

        // Displaying the frames (for testing purposes)
        cv::imshow("Camera 1 Feed", frame1);
        cv::imshow("Camera 2 Feed", frame2);
        
        // Exit when 'Esc' key is pressed
        if (cv::waitKey(1) == 27) {
            break;
        }
    }

    capture1.release();
    capture2.release();
    closesocket(clientSocket1);
    closesocket(clientSocket2);
    WSACleanup();
}
