# Card Matching Game (SwiftUI + MVVM)

> **Course-Inspired Implementation**
>
> This project is inspired by concepts from Stanford University's CS193p (Developing Applications for iOS) course, taught by Paul Hegarty.
>
> In addition to the original coursework concepts, this implementation is being extended with custom enhancements including improved gameplay logic, animations, timer mechanics, and scoring.

---

## Overview

Card Matching Game is an iOS memory game built using **Swift** and **SwiftUI**, following the **Model-View-ViewModel (MVVM)** architectural pattern.

The project focuses on implementing interactive game logic, state-driven UI updates, and maintainable architectural patterns using modern iOS development practices.

Players tap cards to reveal them and attempt to find matching pairs. Matching cards are removed from play, while non-matching cards return to their hidden state.

> **Status:** 🚧 Work in Progress  
> This project is currently under active development. Core gameplay mechanics are partially implemented, with additional features planned.

---

## Features

### Implemented
- Card grid layout using SwiftUI
- Randomized card shuffling
- Tap-to-reveal card interactions
- Match detection logic
- MVVM-based architecture
- Reactive UI updates using SwiftUI state management

### Planned / In Progress
- Card flip animations
- Match disappearance animations
- Score reward system
- Timer-based gameplay
- Difficulty levels
- Persistent high scores
- Sound and haptic feedback

---

## Architecture

This project follows **MVVM** to maintain clear separation of concerns.

### Model
Defines game entities such as:
- Card
- Card identity
- Match status
- Game state

### View
Built with SwiftUI to render:
- Card grid
- CardView
- User interactions
- Game progress UI

### ViewModel
Implemented by `CardGameVM`, responsible for:
- Game logic
- Match validation
- Shuffle mechanics
- Timer management
- Score calculations

---

## Technical Concepts Demonstrated
- SwiftUI state management
- MVVM architecture
- ObservableObject
- @Published properties
- Collection manipulation
- Game state synchronization
- Algorithmic match detection
- Scalable UI composition

---

## Tech Stack
- Swift
- SwiftUI
- MVVM
- Xcode
- Git / GitHub

---

## Future Enhancements

This repository serves as an evolving project to further demonstrate:
- Advanced SwiftUI animations
- Architectural best practices
- Testing strategies
- Performance optimization
- Production-ready iOS engineering practices

---

## Author
**Jalal Hemidach**  
Senior iOS Engineer | Swift | SwiftUI | Mobile Architecture
