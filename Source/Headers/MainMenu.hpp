#pragma once

class MainMenu
{
    sf::Sprite logo_sprite;

    sf::Texture logo_texture;


    public:
        MainMenu();
        void draw(sf::RenderWindow& i_window);
};