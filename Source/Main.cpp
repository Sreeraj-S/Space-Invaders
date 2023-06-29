#include <array>
#include <chrono>
#include <random>
#include <regex>
#include <thread>
#include <SFML/Graphics.hpp>

#include "Headers/Animation.hpp"
#include "Headers/DrawText.hpp"
#include "Headers/Global.hpp"
#include "Headers/MainMenu.hpp"
#include "Headers/Enemy.hpp"
#include "Headers/EnemyManager.hpp"
#include "Headers/Ufo.hpp"
#include "Headers/Player.hpp"
#include "Headers/FileAccess.hpp"
#include "Headers/CheckName.hpp"



int main()
{
	bool game_over = 0;
	bool next_level = 0;

	std::string HIGHSCORE_FILENAME = "highScore.txt";
	unsigned short high_score;
	bool game_start = 0;
	// The current level.
	unsigned short level = 0;
	unsigned short next_level_timer = NEXT_LEVEL_TRANSITION;

	// We'll use this to make the game frame rate independent.
	std::chrono::microseconds lag(0);

	std::chrono::steady_clock::time_point previous_time;

	// Setting a random seed to make sure the random engine will randomly generate random numbers.
	// Random.
	std::mt19937_64 random_engine(std::chrono::system_clock::now().time_since_epoch().count());

	sf::Event event;

	sf::Font font;
	if (!font.loadFromFile("arial.ttf"))
	{
		return 1;
	}

	sf::Text inputText;
	inputText.setFont(font);
	inputText.setCharacterSize(12);
	inputText.setFillColor(sf::Color(255, 255, 255));
	inputText.setPosition(0.5f * SCREEN_WIDTH, 0.5f * SCREEN_HEIGHT - 17.5f);

	sf::RenderWindow window(sf::VideoMode(SCREEN_RESIZE * SCREEN_WIDTH, SCREEN_RESIZE * SCREEN_HEIGHT), "Space Invaders", sf::Style::Close);
	// Resizing the screen.
	window.setView(sf::View(sf::FloatRect(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)));

	sf::Sprite background_sprite;
	sf::Sprite powerup_bar_sprite;
	sf::Sprite logo_sprite;

	sf::Texture logo_texture;
	logo_texture.loadFromFile("Resources/Images/Logo.png");

	sf::Texture background_texture;
	background_texture.loadFromFile("Resources/Images/Background.png");

	sf::Texture font_texture;
	font_texture.loadFromFile("Resources/Images/Font.png");

	sf::Texture powerup_bar_texture;
	powerup_bar_texture.loadFromFile("Resources/Images/PowerupBar.png");

	EnemyManager enemy_manager;

	FileAccess fileaccess(HIGHSCORE_FILENAME);
	fileaccess.directoryPath("HighScores");

	CheckName CheckName;

	MainMenu mainmenu;

	Player player;

	std::string userInput;

	Ufo ufo(random_engine);

	background_sprite.setTexture(background_texture);
	powerup_bar_sprite.setTexture(powerup_bar_texture);
	logo_sprite.setTexture(logo_texture);

	previous_time = std::chrono::steady_clock::now();


	while (1 == window.isOpen())
	{
		// Making the game frame rate independent.
		std::chrono::microseconds delta_time = std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::steady_clock::now() - previous_time);

		lag += delta_time;

		previous_time += delta_time;

		while (FRAME_DURATION <= lag)
		{
			lag -= FRAME_DURATION;

			while (window.pollEvent(event))
			{
				switch (event.type)
				{
				case sf::Event::Closed:
				{
					window.close();
				}
				case sf::Event::TextEntered:
				{
					if (1 == game_over)
					{
						if (event.text.unicode < 128)
						{
							if (event.text.unicode == '\b' && !userInput.empty())
							{
								userInput.pop_back(); // Handle backspace key
							}
							else if (event.text.unicode != '\r')
							{
								userInput += static_cast<char>(event.text.unicode);
							}
							inputText.setString(userInput);
							CheckName.setName(userInput);
							std::thread NameThread(&CheckName::checkName,&CheckName);
							NameThread.join();

						}
					}
				}
				}
			}

			// We're gonna show the "Game over!" text after the player's death animation.
			if (1 == player.get_dead_animation_over())
			{
				game_over = 1;
			}

			if (1 == enemy_manager.reached_player(player.get_y()))
			{
				player.die();
			}

			if (0 == game_over && game_start == 1)
			{
				if (0 == enemy_manager.get_enemies().size())
				{
					if (0 == next_level_timer)
					{
						next_level = 0;

						level++;
						next_level_timer = NEXT_LEVEL_TRANSITION;

						player.reset();

						enemy_manager.reset(level);

						ufo.reset(1, random_engine);
					}
					else // Here we're showing the next level transition.
					{
						next_level = 1;

						next_level_timer--;
					}
				}

				else
				{
					player.update(random_engine, enemy_manager.get_enemy_bullets(), enemy_manager.get_enemies(), ufo);

					std::thread enemyUpdate([&enemy_manager, &random_engine]() {
        enemy_manager.update(random_engine);
    });				
					std::thread ufoUpdate([&ufo, &random_engine]() {
        ufo.update(random_engine);
    });
					enemyUpdate.join();
					ufoUpdate.join();

					
				}
			}
			else if (game_start == 0)
			{
				std::thread mainMenuThread([&mainmenu, &window]() {
        mainmenu.draw(window);
    });
	mainMenuThread.join();
				if (1 == sf::Keyboard::isKeyPressed(sf::Keyboard::P))
				{
					
					game_start = 1;
				}
			}
			else if (1 == sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) & !CheckName.isSpecialChar())
			{
				if(userInput != ""){
					fileaccess.nameHighScoreWrite(userInput,level);
				}
				game_over = 0;

				level = 0;

				player.reset();

				enemy_manager.reset(level);
				
				userInput = "";
				inputText.setString(userInput);

				ufo.reset(1, random_engine);
			}

			if (FRAME_DURATION > lag)
			{
				window.clear();

				window.draw(background_sprite);

				// When the player dies, we won't show anything but the player.
				if (0 == player.get_dead() && game_start == 1)
				{
					enemy_manager.draw(window);

					ufo.draw(window);

					// So much code just to show the duration of the powerup (or power-DOWN!).
					if (0 < player.get_current_power())
					{
						powerup_bar_sprite.setColor(sf::Color(255, 255, 255));
						powerup_bar_sprite.setPosition(SCREEN_WIDTH - powerup_bar_texture.getSize().x - 0.25f * BASE_SIZE, 0.25f * BASE_SIZE);
						powerup_bar_sprite.setTextureRect(sf::IntRect(0, 0, powerup_bar_texture.getSize().x, BASE_SIZE));

						window.draw(powerup_bar_sprite);

						powerup_bar_sprite.setPosition(SCREEN_WIDTH - powerup_bar_texture.getSize().x - 0.125f * BASE_SIZE, 0.25f * BASE_SIZE);
						// Calculating the length of the bar.
						powerup_bar_sprite.setTextureRect(sf::IntRect(0.125f * BASE_SIZE, BASE_SIZE, ceil(player.get_power_timer() * static_cast<float>(powerup_bar_texture.getSize().x - 0.25f * BASE_SIZE) / POWERUP_DURATION), BASE_SIZE));

						switch (player.get_current_power())
						{
						case 1:
						{
							powerup_bar_sprite.setColor(sf::Color(0, 146, 255));

							break;
						}
						case 2:
						{
							powerup_bar_sprite.setColor(sf::Color(255, 0, 0));

							break;
						}
						case 3:
						{
							powerup_bar_sprite.setColor(sf::Color(255, 219, 0));

							break;
						}
						case 4:
						{
							powerup_bar_sprite.setColor(sf::Color(219, 0, 255));
						}
						}

						window.draw(powerup_bar_sprite);
					}
				}
				else if (0 == game_start)
				{
					mainmenu.draw(window);
				}

				player.draw(window);
				if (0 == game_over & 1 == game_start)
				{
					draw_text(0.25f * BASE_SIZE, 0.25f * BASE_SIZE, "Level: " + std::to_string(level), window, font_texture);
				}
				if (1 == game_over)
				{
					window.draw(inputText);
					// I was too lazy to add center alignment, so I just wrote numbers instead.
					draw_text(0.5f * (SCREEN_WIDTH - 5 * BASE_SIZE), 0.5f * SCREEN_HEIGHT - 45.0f, "Game over!", window, font_texture);
					high_score = fileaccess.read();
					if (high_score < level)
					{
						fileaccess.write( level);
					}
					if(CheckName.isSpecialChar()){
					draw_text(0.1f * SCREEN_WIDTH - 20  , 0.9f * SCREEN_HEIGHT, "Cannot add special character in name!!!", window, font_texture);

					}
					high_score = fileaccess.read();
					draw_text(0.5f * (SCREEN_WIDTH - 5 * BASE_SIZE), 0.5f * SCREEN_HEIGHT - 15.0f, "Name:", window, font_texture);
					
					draw_text(0.5f * (SCREEN_WIDTH - 5 * BASE_SIZE), 0.5f * SCREEN_HEIGHT + 25.0f, "High Score:" + std::to_string(high_score), window, font_texture);
					draw_text(0.5f * (SCREEN_WIDTH - 5 * BASE_SIZE), 0.5f * SCREEN_HEIGHT + 5.0f, "Level:" + std::to_string(level), window, font_texture);
				}
				else if (1 == next_level)
				{
					if(level == high_score+1){
					draw_text(0.5f * (SCREEN_WIDTH - 5.5f * BASE_SIZE), 0.5f * (SCREEN_HEIGHT - BASE_SIZE)-25, "New HighScore!", window, font_texture);

					}
					draw_text(0.5f * (SCREEN_WIDTH - 5.5f * BASE_SIZE), 0.5f * (SCREEN_HEIGHT - BASE_SIZE), "Next level!", window, font_texture);
				}

				else if (0 == game_start)
				{
					draw_text(0.5f * ((SCREEN_WIDTH / 2) - 3.0f * BASE_SIZE), 0.5f * (SCREEN_HEIGHT - BASE_SIZE), "Press P to start the game!", window, font_texture);
				}

				window.display();
			}
		}
	}
}