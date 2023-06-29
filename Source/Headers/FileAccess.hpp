#pragma once

#include <string>

class FileAccess{
    std::string filePath;
    std::string directoryPathName;
    public:
        FileAccess(std::string value);
        void write(int level);
        unsigned short read();
        void rename(std::string newpath);
        void directoryPath(std::string directPath);
        void nameHighScoreWrite(std::string name,int level);


};