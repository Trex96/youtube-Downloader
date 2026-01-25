# YouTube DL GUI (yt-dlg) - Mac Setup Guide

A streamlined, cross-platform GUI for `yt-dlp` and `youtube-dl` written in Python. This version has been specifically optimized and fixed for macOS to handle age-restricted videos and modern YouTube protections.

---

## � First-Time Setup
If you are running this for the first time or on a new machine, run the setup script to install all dependencies (Python packages, Deno, and FFmpeg):
```bash
./setup.sh
```

---

## �🚀 How to Run (GUI Mode)

To start the application with the user interface:

1.  **Open your terminal** and navigate to the folder:
    ```bash
    cd "input/Yt-downloader/youtube-dl-gui"
    ```
2.  **Activate the environment**:
    ```bash
    source venv/bin/activate
    ```
3.  **Launch the App**:
    ```bash
    python main.py
    ```

---

## 🛠 Fixing "Age-Restricted" or "403 Forbidden" Errors

If you encounter errors while downloading (especially for age-restricted videos), follow these steps inside the GUI:

1.  Click the **Options** icon (gear/settings button).
2.  Navigate to the **Extra** tab.
3.  Locate **Authentication Options**.
4.  Check **"Import cookies from browser"**.
5.  Select the browser where you are logged into YouTube (e.g., `chrome`, `safari`, `firefox`).
6.  **Important**: When you start the download, macOS will ask for your **Keychain password**. Enter your Mac login password and click **"Always Allow"**.

---

## 💻 Running via Terminal (CLI Mode)

If you prefer to download directly via the terminal (the fastest method), use the updated `yt-dlp` tool included in the virtual environment:

```bash
# General command structure
./venv/bin/yt-dlp [OPTIONS] "VIDEO_URL"

# Example: Download an age-restricted video using Chrome cookies:
./venv/bin/yt-dlp -f mp4 --cookies-from-browser chrome "https://www.youtube.com/watch?v=VIDEO_ID"
```

---

## 📁 Project Structure

The project has been organized for simplicity:
*   `main.py`: The entry point for the GUI.
*   `src/`: Contains all core logic engine files.
*   `assets/`: Icons and GUI resources.
*   `venv/`: The Python virtual environment with all fixes installed.
*   `requirements.txt`: List of required Python packages.

---

## ⚙️ Requirements Installed
*   **Python**: 3.14+
*   **wxPython**: 4.2.4 (GUI Framework)
*   **Deno**: (Installed via Homebrew) Required for solving YouTube JavaScript challenges.
*   **yt-dlp (Nightly)**: Latest version to bypass YouTube blocks.
