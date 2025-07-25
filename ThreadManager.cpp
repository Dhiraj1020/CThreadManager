#include <iostream>
#include <thread>

void printNumbers() {
    for (int i = 1; i <= 5; ++i) {
        std::cout << "Number: " << i << std::endl;
    }
}

int main() {
    std::thread t(printNumbers);  // Start the thread

    t.join();  // Wait for the thread to finish

    std::cout << "Thread finished. Main continues..." << std::endl;

    return 0;
}

