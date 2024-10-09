# Flashcard Quiz App

A simple command-line flashcard application written in Swift. Users can add their own flashcards (questions and answers) and quiz themselves in random order. The flashcards are stored in a text file, making it easy to edit and persist them between sessions.

## Features
- Add custom flashcards with questions and answers.
- Quiz yourself with random questions.
- Save and load flashcards from a text file (`flashcards.txt`).

## Requirements
- **Swift 5.7 or later**
- **VS Code** (or any text editor/IDE that supports Swift)
- **Windows 11** (or other platforms where Swift is installed)

## File Structure
```
FlashcardQuizApp/
├── Sources/
│   └── main.swift
├── flashcards.txt
└── Package.swift
```

- **`Sources/main.swift`**: Contains the main logic for the flashcard app.
- **`flashcards.txt`**: Stores flashcards in the format `question|answer`.
- **`Package.swift`**: Defines the Swift package configuration.

## Installation and Setup

1. **Install Swift**: Follow [this guide](https://swift.org/getting-started/#installing-swift) to install Swift on your machine.

3. Clone this repository or download the project files.
3. Open the project folder in Visual Studio Code.
4. Open a terminal in the project directory and run the following command to initialize the Swift package:
    ```bash
    swift package init --type executable
    ```
    This will generate the necessary package files, including `Package.swift`.

5. Ensure your project structure matches the one provided above.

6. Run the following command to compile and execute the project:
    ```bash
    swift run
    ```

## Usage

### Adding a Flashcard
1. When prompted, choose the option to "Add a flashcard".
2. Enter the question and the answer when prompted.

### Quizzing Yourself
1. Choose the "Quiz yourself" option to start a quiz.
2. The app will display questions in random order. Type your answer and the app will tell you if you're correct or not.

### Exiting the App
Choose "Exit" to close the app.

### Flashcards File Format
The flashcards are stored in `flashcards.txt`. Each line is a flashcard in the following format:
```
question|answer
```
You can manually edit this file or let the app manage it.

Example:
```
What is the capital of France?|Paris
What is 2 + 2?|4
What is the largest planet in our solar system?|Jupiter
```

## Example Session
```
--- Flashcard Quiz App ---
1. Quiz yourself
2. Add a flashcard
3. Exit
Enter your choice: 1

Question: What is the capital of France?
Type your answer: Paris
Correct!

Question: What is 2 + 2?
Type your answer: 4
Correct!

Question: What is the largest planet in our solar system?
Type your answer: Earth
Incorrect! The correct answer is: Jupiter

--- Flashcard Quiz App ---
1. Quiz yourself
2. Add a flashcard
3. Exit
Enter your choice: 2

Enter the question: What is the square root of 16?
Enter the answer: 4
```

## Contributing
Feel free to submit issues and pull requests to improve the functionality of the app.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to the Swift.org team for bringing Swift to multiple platforms, including Windows.