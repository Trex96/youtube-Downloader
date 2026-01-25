# 🗄️ Project File Guide (For Developers)

As a beginner dev, here is what each folder and file in this project does.

### 🏠 Root Folder
*   **`main.py`**: The "Power Switch". This is the file you run. It tells Python to look into the `src` folder and start the app.
*   **`Launch.command`**: A shortcut that tells your Mac to open the terminal and run `main.py` for you.
*   **`setup.sh`**: The "Auto-Installer". It checks if your Mac has all the tools needed and installs them.
*   **`requirements.txt`**: A "Grocery List" of Python libraries the app needs to work.

### 📂 `src/` (The Brains)
This is where the actual code lives:
*   **`app.py`**: Sets up the basic window and prepares things like language settings.
*   **`mainframe.py`**: The "Map" of the window. It defines where the buttons go and what happens when you click them.
*   **`downloadmanager.py`**: The "Task Master". It keeps a list of all your downloads and decides who goes first.
*   **`downloaders.py`**: The "Worker". It manages the invisible engine (`yt-dlp`) that does the heavy lifting.
*   **`utils.py`**: A toolbox of small helper functions (like opening a folder or checking your Mac version).
*   **`optionsmanager.py`**: The "Memory". This file remembers your settings (like the dark theme or download folder).

### 📂 `assets/` (The Visuals)
*   **`pixmaps/`**: Contains all the tiny icons for the buttons (Play, Stop, Settings).
*   **`icons/`**: Contains the main application icon that you see in the Dock.

### 📂 `venv/` (The Sandbox)
*   Short for "Virtual Environment". It's a private box where we keep all the Python tools just for this app so they don't mess with the rest of your Mac.

### 📂 `docs/`
*   **`how_it_works.md`**: The spiritual guide to understanding how the app talks to YouTube safely.
