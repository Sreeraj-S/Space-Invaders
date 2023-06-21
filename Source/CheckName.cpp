#include <array>
#include <chrono>
#include <random>
#include <thread>
#include <regex>
#include <SFML/Graphics.hpp>

#include "Headers/Animation.hpp"
#include "Headers/Global.hpp"
#include "Headers/CheckName.hpp"



CheckName::CheckName()
{
    isSpecialCharacter = false;
}

void CheckName::setName(std::string value){
    userInput=value;
}

bool CheckName::isSpecialChar(){
    return isSpecialCharacter;
}

void CheckName::checkName()
{
    std::regex specialCharsRegex("[^a-zA-Z0-9]");
    std::smatch match;

    if (std::regex_search(userInput, match, specialCharsRegex)) {
        isSpecialCharacter = true;
    }
    else{
        isSpecialCharacter = false;
    }
}

// void CheckName::startThread(){
//     std::thread NameThread(CheckName::checkName);
//     NameThread.join();
// }