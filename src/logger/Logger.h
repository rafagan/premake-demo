#ifndef LOGGER_H
#define LOGGER_H

#include <fstream>
#include <memory>
#include "DualStreamBuffer.h"

class Logger {
private:
    std::ofstream logFile;
    std::unique_ptr<DualStreamBuffer> dualBuffer;
    std::streambuf* originalCoutBuffer = nullptr;
public:
    static void printFlagMacro();
    static void printValueMacro();
    static void printStringMacro();

    void configNewOuputStreams();
    void close();
};

#endif // LOGGER_H
