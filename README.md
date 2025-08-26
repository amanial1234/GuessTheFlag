# GuessTheFlag

**GuessTheFlag** is a simple and fun iOS game built with SwiftUI where players try to correctly identify the flag of a given country. It’s a great way to practice SwiftUI, state management, and user interactions.

---

## Features

* Displays three random flags for each round.
* Prompts the user to tap the flag of a specific country.
* Tracks the user’s score and displays it in real time.
* Provides feedback for correct and incorrect guesses using alerts.
* Uses SwiftUI’s `@State` properties for dynamic updates.
* Gradient background for a visually appealing UI.

---

## Screenshots



https://github.com/user-attachments/assets/2beccb2e-1d27-4d35-aaa0-7518b983da5d


---

## How to Play

1. Launch the app.
2. Look at the country name displayed.
3. Tap the flag you think corresponds to that country.
4. An alert will tell you if you were correct and show your current score.
5. Tap **Continue** to move to the next round.

---

## Technologies

* Swift 5+
* SwiftUI
* Xcode

---

## Code Overview

* `ContentView.swift` contains the main UI and game logic.
* Uses `@State` to track the list of countries, the correct answer, the user’s score, and whether an alert is showing.
* `flagTapped(number:)` handles user selections and updates the score.
* `askQuestion()` shuffles the flags for the next round.

---

## Installation

1. Clone this repository:

```bash
git clone https://github.com/yourusername/GuessTheFlag.git
```

2. Open `GuessTheFlag.xcodeproj` in Xcode.
3. Run the app on a simulator or your device.

---

## License

This project is for personal use and learning purposes. You can freely use and modify it.

---

If you want, I can also make a **shorter, more playful version** suitable for GitHub that highlights the game mechanics and your score tracking—good for showing off to recruiters or friends. Do you want me to do that?
