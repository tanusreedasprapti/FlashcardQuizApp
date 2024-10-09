import Foundation

// Made by Nayan Das
// Follow ME: https://socialportal.nayanchandradas.com


// Struct to store individual flashcards
struct Flashcard {
    let question: String
    let answer: String
}

// Function to load flashcards from file
func loadFlashcards() -> [Flashcard] {
    var flashcards: [Flashcard] = []
    let fileURL = URL(fileURLWithPath: "flashcards.txt")
    
    do {
        let data = try String(contentsOf: fileURL, encoding: .utf8)
        let lines = data.split(separator: "\n")
        
        for line in lines {
            let parts = line.split(separator: "|")
            if parts.count == 2 {
                let question = String(parts[0])
                let answer = String(parts[1])
                flashcards.append(Flashcard(question: question, answer: answer))
            }
        }
    } catch {
        print("Error loading flashcards: \(error)")
    }
    
    return flashcards
}

// Function to save flashcards to file
func saveFlashcards(_ flashcards: [Flashcard]) {
    let fileURL = URL(fileURLWithPath: "flashcards.txt")
    var data = ""
    
    for card in flashcards {
        data += "\(card.question)|\(card.answer)\n"
    }
    
    do {
        try data.write(to: fileURL, atomically: true, encoding: .utf8)
    } catch {
        print("Error saving flashcards: \(error)")
    }
}

// Function to display flashcards in random order
func quizUser(flashcards: [Flashcard]) {
    if flashcards.isEmpty {
        print("No flashcards available.")
        return
    }
    
    let shuffledCards = flashcards.shuffled()
    
    for card in shuffledCards {
        print("\nQuestion: \(card.question)")
        print("Type your answer:")
        let userAnswer = readLine() ?? ""
        
        if userAnswer.lowercased() == card.answer.lowercased() {
            print("Correct!")
        } else {
            print("Incorrect! The correct answer is: \(card.answer)")
        }
    }
}

// Function to add a new flashcard
func addFlashcard() -> Flashcard {
    print("Enter the question:")
    let question = readLine() ?? ""
    
    print("Enter the answer:")
    let answer = readLine() ?? ""
    
    return Flashcard(question: question, answer: answer)
}

// Main program loop
var flashcards = loadFlashcards()

while true {
    print("\n--- Flashcard Quiz App ---")
    print("1. Quiz yourself")
    print("2. Add a flashcard")
    print("3. Exit")
    print("Enter your choice:")
    
    let choice = readLine() ?? ""
    
    switch choice {
    case "1":
        quizUser(flashcards: flashcards)
    case "2":
        let newCard = addFlashcard()
        flashcards.append(newCard)
        saveFlashcards(flashcards)
    case "3":
        print("Goodbye!")
        exit(0)
    default:
        print("Invalid choice, please try again.")
    }
}
