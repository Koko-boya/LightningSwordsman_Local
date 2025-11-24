# Lightning-Riding Swordsman – Local Version with Save System

A fully playable local version of the Lightning-Riding Swordsman game, featuring a working checkpoint-based save system.

---

## Features

* Fully Local – No internet connection required
* Auto-Save System – Progress is automatically saved at checkpoints
* LocalStorage Persistence – Saves persist across browser sessions
* Visitor Mode Support – Works without login
* Complete Progress Tracking – HP, inventory, checkpoint, tutorial flags, and more are all saved
* Correct Scene Restoration – Resumes at the saved checkpoint with the correct in-game state and title card

---

## How to Play

### Option 1: Play Online

Visit the original game: [Lightning-Riding Swordsman](https://koko-boya.github.io/LightningSwordsman_Local/index.html)

### Option 2: Play Offline (This Version)

1. Follow the setup instructions in the "Running the Game" section below.
2. Open the game in your browser at `http://localhost:8000`
3. Click "Start" to begin.
4. Your progress will auto-save at checkpoints.
5. Refresh the page – your save will auto-load automatically.

---

## Save System

### Auto-Save

Progress is automatically saved at checkpoints to `localStorage` under the key:

```
hoyofair_gamesave
```

### Save Data Includes

* Checkpoint – Current scene and position
* Player Stats – HP, max HP, attack, abilities
* Map Progress – Unlocked areas, collected items, defeated enemies
* Inventory – Items and cards collected
* Tutorial Flags – Completed tutorials won't replay

### Manual Save Access

Open the browser console (F12) and run:

```javascript
// View save data
console.log(JSON.parse(localStorage.getItem('hoyofair_gamesave')));

// Clear save
localStorage.removeItem('hoyofair_gamesave');
```

---

## Technical Details

### Modified Files

* `index.html` – Mock plugins added for offline operation
* `assets/js/index_99c2384191bb2cc9078c.js` – Save system implementation

### Implementation Overview

The save system is built around four core patches:

1. Helper Functions – `saveToLocalStorage()` and `loadFromLocalStorage()`
2. Auto-Save Trigger – Automatically saves at checkpoints
3. Load Interceptor – A `Se()` wrapper that loads saved data on game initialization
4. State Sync – Updates global `ye.gameData` to restore HP and overall progress correctly

---

## Credits

* Original Game: HoYoFair Team (Licialurie, Kuro Lee, To___e, and other creators)
* Localization: Official HoYoFair event
* Save System: Community modification

---

## Disclaimer

This is a fan-made modification for local offline play.
All rights to the original game belong to the original creators.

---

## Troubleshooting

### Game Not Loading Save?

* Clear browser cache (Ctrl + Shift + Delete).
* Check the console (F12) for `[LocalSave]` messages.
* Verify that the save exists:

  ```javascript
  localStorage.getItem('hoyofair_gamesave');
  ```

### Title Card Shows Wrong Scene?

* This is a known cosmetic issue.
* The game will still load the correct scene after you click "Click to continue".

### Progress Not Saving?

* Make sure you actually reach a checkpoint (the game will auto-save there).
* Check that the browser allows `localStorage`.
* Ensure you are not in private / incognito mode.

---

## File Structure

```
LightningSwordsman_Local/
├── index.html                              # Main entry point
├── assets/
│   ├── js/
│   │   ├── index_99c2384191bb2cc9078c.js   # Game logic + save system
│   │   ├── vendors_c305f15d74fe43b9e2ba.js # Dependencies
│   │   └── styles_546cd7b2a89c34836c8f.js  # UI-related scripts
│   ├── css/
│   │   └── styles_7a0c341105bf886443fc.css # Stylesheets
│   └── ...
├── images/                                 # Image assets
├── medias/                                 # Audio / video assets
└── libs/                                   # Libraries
```

---

## Running the Game

No build step required – the game runs directly in the browser.

### Method 1: Using Python Server (Recommended)

1. Download or clone the project.
2. Ensure Python 3 is installed on your system.
3. Navigate to the project directory in terminal/command prompt.
4. Install required dependencies:
   ```bash
   pip install -r requirements.txt
   ```
5. Run the server:
   - **Windows:** Double-click `connect.bat` or run `python server.py`
   - **Linux/Mac:** Run `python server.py` or `python3 server.py`
6. Open your browser and go to `http://localhost:8000`
7. Press Ctrl+C in the terminal to stop the server.

### Method 2: Direct File Access (Not Recommended - Because it won't work)

1. Download or clone the project.
2. Open `index.html` directly in any modern browser.

**Note:** Some browsers may restrict certain features when opening files directly. Using the Python server method is recommended for the best experience.

**Recommended Browsers:**

* Chrome / Edge (latest)
* Firefox (latest)
* Safari (latest)

---

## License


Please refer to the original game's terms of service.
