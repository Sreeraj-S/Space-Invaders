#pragma once



class CheckName{
    std::string userInput;
bool isSpecialCharacter;

public:
    CheckName();
    void setName(std::string value);
    void checkName();
    bool isSpecialChar();
    // void startThread();
};