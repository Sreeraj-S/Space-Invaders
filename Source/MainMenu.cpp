#include <array>
#include <chrono>
#include <random>
#include <SFML/Graphics.hpp>

#include "Headers/Global.hpp"
#include "Headers/MainMenu.hpp"

MainMenu::MainMenu()
{
    sf::Sprite logo_sprite;

    sf::Texture logo_texture;
	logo_texture.loadFromFile("Resources/Images/Logo.png");

    logo_sprite.setTexture(logo_texture);

    logo_sprite.setColor(sf::Color(255, 255, 255));
    logo_sprite.setPosition((SCREEN_WIDTH / 2) - logo_texture.getSize().x - 0.25f * BASE_SIZE, 0.25f * BASE_SIZE);
    //logo_sprite.setTextureRect(sf::IntRect(0, 0, logo_texture.getSize().x, BASE_SIZE));

    
}

void MainMenu::draw(sf::RenderWindow& i_window)
{
    i_window.draw(logo_sprite);
}

