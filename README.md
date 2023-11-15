
# Space Invader Game in C++ with SFML

## Overview

This C++ project implements a classic Space Invader game using the SFML library for graphics. The game features 7 levels, each with varying difficulty and speed. High scores are stored for each player name using a file system. To enhance performance, multithreading is employed to parallelize the update of user input and frames. The game incorporates 16x16 pixel images for enemies and UFOs, and additional fun elements are introduced through power-ups such as triple shot, increased fire rate, and slowed-down fire rate. The code is inspired by YouTube tutorials.

## Features

- **7 Levels with Different Difficulty and Speed**
  - Each level presents new challenges, keeping the gameplay engaging.

- **SFML Graphics**
  - Utilizes the Simple and Fast Multimedia Library for smooth and visually appealing graphics.

- **High Score Tracking**
  - Player names and their respective high scores are stored in the file system.

- **Multithreading**
  - Parallelizes the update of user input and frames to enhance game responsiveness.

- **Power-ups for Added Fun**
  - Triple Shot: Shoot three bullets simultaneously.
  - Increased Fire Rate: Shoot bullets at a faster pace.
  - Slow Down Fire Rate: Temporarily reduces the firing speed.

## Dependencies

- [SFML Library](https://www.sfml-dev.org/): Simple and Fast Multimedia Library.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/space-invader-game.git
   ```

2. Install SFML following the instructions on the [SFML website](https://www.sfml-dev.org/download.php).

3. Build the project using your preferred C++ compiler.

## Usage

1. Run the compiled executable.

2. Use arrow keys for movement and the spacebar to shoot.

3. Survive through all 7 levels, defeating enemies and collecting power-ups.

4. Enter your name to track your high score.

## Code Structure

- `Source/`: Contains the source code.
  - `mainmenu.cpp`: Entry point of the application.
  - `main.cpp`: Game logic implementation.
  - `player.cpp` and `player.h`: Player-related functionalities.
  - `enemy.cpp` and `enemy.h`: Enemy-related functionalities.
  -`global.h`:Main backbone for enemy-manager, player and game funtionalities

- `Resources/Images`: Stores image assets, such as 16x16 pixel images for enemies and UFOs.

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests.

## Credits

This project was inspired by tutorials on YouTube. Special thanks to [Kofybrek](https://www.youtube.com/@Kofybrek) for the guidance and inspiration.

## License

This project is licensed under the [MIT License](LICENSE).
