#include <opencv2/opencv.hpp>
#include <iostream>
#include <winsock2.h> 

// Including necessary networking headers

#pragma comment(lib, "ws2_32.lib")

int main() {
    // Initializing Winsock
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "Failed to initialize Winsock\n";
        return 1;
    }

    // Creating socket to listen for incoming video stream connections
    SOCKET serverSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (serverSocket == INVALID_SOCKET) {
        std::cerr << "Error creating server socket\n";
        WSACleanup();
        return 1;
    }

    sockaddr_in serverAddress;
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_port = htons(54321); // Specifing the port for video streaming
    serverAddress.sin_addr.s_addr = INADDR_ANY;

    if (bind(serverSocket, (struct sockaddr*)&serverAddress, sizeof(serverAddress)) == SOCKET_ERROR) {
        std::cerr << "Error binding server socket\n";
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    if (listen(serverSocket, 1) == SOCKET_ERROR) {
        std::cerr << "Error listening on server socket\n";
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    std::cout << "Waiting for video stream connection...\n";

    SOCKET clientSocket = accept(serverSocket, NULL, NULL);
    if (clientSocket == INVALID_SOCKET) {
        std::cerr << "Error accepting client connection\n";
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    std::cout << "Video stream connection established\n";

    // Start receiving and displaying video frames
    cv::namedWindow("Remote Video Feed", cv::WINDOW_NORMAL);
    cv::Mat frame;
    while (true) {
        // Receiving the frame data from the client
        std::vector<uchar> encodedFrame;
        // Receiving frame data into 'encodedFrame' from the 'clientSocket'

        // Decoding the received frame
        if (!encodedFrame.empty()) {
            frame = cv::imdecode(encodedFrame, cv::IMREAD_COLOR);
            if (!frame.empty()) {
                cv::imshow("Remote Video Feed", frame);
            }
        }

        // Exit when 'Esc' key is pressed
        if (cv::waitKey(1) == 27) {
            break;
        }
    }

    // Cleaning up and closing sockets
    closesocket(clientSocket);
    closesocket(serverSocket);
    WSACleanup();

    return 0;
}
