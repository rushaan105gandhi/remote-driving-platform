// video_capture.cpp
#include "video_capture.h"
#include <opencv2/opencv.hpp>

void sendFrameToRemoteOperator(const cv::Mat& frame) {
    // Simulating sending the processed frame to the remote operator over the network
    
    std::cout << "Sending processed frame to remote operator...\n";
}

void captureVideoFeed() {
    cv::VideoCapture capture(0); 
    if (!capture.isOpened()) {
        std::cerr << "Failed to open camera\n";
        return;
    }

    cv::Mat frame;
    while (true) {
        capture >> frame; // Capturing a frame
        if (frame.empty()) {
            break;
        }
        
        
        cv::Mat processedFrame;
        cv::cvtColor(frame, processedFrame, cv::COLOR_BGR2GRAY);

        // Sending the processed frame to a remote operator (simulated)
        sendFrameToRemoteOperator(processedFrame);

        // Exit when 'Esc' is pressed
        if (cv::waitKey(1) == 27) {
            break;
        }
    }

    capture.release();
    cv::destroyAllWindows();
}
