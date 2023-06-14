#include<iostream>
#include<fstream>
#include<array>
#include<chrono>
#include <SFML/Graphics.hpp>
#include <string>

#include "Headers/Global.hpp"
#include "Headers/FileAccess.hpp"

FileAccess::FileAccess(){
    unsigned short level = 0;
}
void FileAccess::write(std::string filename,int level){
    std::ofstream file(filename, std::ios::trunc);
    if (file.is_open()) {
        file << std::to_string(level);
        file.close();
    }
    else {
        return;
    }
}

unsigned short FileAccess::read(std::string filename){

    std::ifstream file(filename);
    unsigned short level;

    if (file.is_open()) {
        std::string line;
        
        while (std::getline(file, line)) {
            level = stoi(line);
        }
        file.close();
        return level;
    }
    else {
        level = 0;
        return level;
    }
}