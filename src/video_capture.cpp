#include "video_capture.h"
#include <opencv2/opencv.hpp>
#include <iostream>
#include <winsock2.h>

// Including necessary headers for network communication
#pragma comment(lib, "ws2_32.lib") 

void sendFrameOverNetwork(const cv::Mat& frame) {
    // Initialize Winsock
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "Failed to initialize Winsock\n";
        return;
    }

    // Create a socket and establish a connection to the server
    SOCKET clientSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (clientSocket == INVALID_SOCKET) {
        std::cerr << "Error creating socket\n";
        WSACleanup();
        return;
    }

    sockaddr_in serverAddress;
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_port = htons(12345); // Replace with the server's port
    serverAddress.sin_addr.s_addr = inet_addr("server_ip_address"); // Replace with the server's IP address

    if (connect(clientSocket, (struct sockaddr*)&serverAddress, sizeof(serverAddress)) == SOCKET_ERROR) {
        std::cerr << "Error connecting to the server\n";
        closesocket(clientSocket);
        WSACleanup();
        return;
    }

    // Convert the OpenCV frame to a format suitable for sending over the network
    // You may need to serialize the frame data into a suitable format (e.g., using OpenCV's imencode)

    // Send the frame data
    // You'll need to implement this part based on the serialization method used

    // Close the socket when done
    closesocket(clientSocket);
    WSACleanup();
}

void captureVideoFeed() {
    cv::VideoCapture capture(0);
    if (!capture.isOpened()) {
        std::cerr << "Failed to open camera\n";
        return;
    }

    cv::Mat frame;
    while (true) {
        capture >> frame;
        if (frame.empty()) {
            break;
        }

        // Process the frame if needed (e.g., image processing)

        // Send the frame over the network
        sendFrameOverNetwork(frame);

        // Display the frame (for testing purposes)
        cv::imshow("Video Feed", frame);
        if (cv::waitKey(1) == 27) {
            break;
        }
    }

    capture.release();
}
