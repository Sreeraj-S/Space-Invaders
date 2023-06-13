#pragma once

#include <string>

class FileAccess{
    public:
        FileAccess();
        void write(std::string filename,int level);
        unsigned short read(std::string filename);
};