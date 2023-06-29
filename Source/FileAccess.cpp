#include <iostream>
#include <fstream>
#include <filesystem>

#include "Headers/FileAccess.hpp"

namespace fs = std::filesystem;

FileAccess::FileAccess(std::string value){
    filePath = value;
    std::ofstream outputFile(filePath);
    std::ifstream inputFile(filePath);
    int level = 0;

    if (!inputFile.is_open()) {
        outputFile << level;
    }
}


void FileAccess::write( int level) {
    std::ofstream outputFile(filePath);
    if (outputFile.is_open()) {
        outputFile << level;
    } else {
        std::cerr << "Failed to open file for writing: " << filePath << std::endl;
    }
}

unsigned short FileAccess::read() {
    std::ifstream inputFile(filePath);
    int value = 0;
    if (inputFile.is_open()) {
        inputFile >> value;
    } else {
        std::cerr << "Failed to open file for reading: " << filePath << std::endl;
    }
    return value;
}

void FileAccess::rename(std::string newpath){
    fs::rename(filePath,newpath);
    filePath = newpath;
}

void FileAccess::directoryPath(std::string directPath){
    directoryPathName = directPath;
    try {
        fs::create_directory(directPath);
    }
    // Catch block
    catch (const char* exception) {
        //do nothing
    }
}

void FileAccess::nameHighScoreWrite(std::string name,int level){
    std::string namePath = directoryPathName+"/"+name+".txt";
    std::ofstream outputFile(namePath);
    std::ifstream inputFile(namePath);
    int highScore = 0;
    inputFile >> highScore;


    if(highScore <= level){


        outputFile << level;
    }
}

