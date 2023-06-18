#include <SFML/Graphics.hpp>
#include <iostream>

int main()
{
    sf::RenderWindow window(sf::VideoMode(800, 600), "Text Box Example");

    sf::Font font;
    if (!font.loadFromFile("arial.ttf")) {
        std::cerr << "Failed to load font." << std::endl;
        return 1;
    }

    sf::Text inputText;
    inputText.setFont(font);
    inputText.setCharacterSize(24);
    inputText.setFillColor(sf::Color::Black);
    inputText.setPosition(10, 10);

    std::string userInput;

    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
            }
            else if (event.type == sf::Event::TextEntered) {
                if (event.text.unicode < 128) {
                    if (event.text.unicode == '\b' && !userInput.empty()) {
                        userInput.pop_back(); // Handle backspace key
                    }
                    else if (event.text.unicode != '\r') {
                        userInput += static_cast<char>(event.text.unicode);
                    }
                    inputText.setString(userInput);
                }
            }
        }

        window.clear(sf::Color::White);
        window.draw(inputText);
        window.display();
    }

    return 0;
}
