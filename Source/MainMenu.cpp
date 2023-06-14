#include <array>
#include <chrono>
#include <random>
#include <SFML/Graphics.hpp>

#include "Headers/Global.hpp"
#include "Headers/MainMenu.hpp"

MainMenu::MainMenu()
{
    
	logo_texture.loadFromFile("Resources/Images/Logo.png");

    logo_sprite.setTexture(logo_texture);
    //logo_sprite.setTextureRect(sf::IntRect(0, 0, logo_texture.getSize().x, BASE_SIZE));

    
}

void MainMenu::draw(sf::RenderWindow& i_window)
{
    logo_sprite.setPosition((SCREEN_WIDTH / 2) - (logo_texture.getSize().x/2) , (SCREEN_HEIGHT / 4)- (logo_texture.getSize().y/2) );
    logo_sprite.setTextureRect(sf::IntRect(0, 0, logo_texture.getSize().x, logo_texture.getSize().y));

    i_window.draw(logo_sprite);
}

