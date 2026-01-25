# 📖 How This Downloader Works (Beginner Guide)

Think of this application as a **"Translator"** and a **"Remote Control"**. 

Actually, there are two apps working together:
1.  **The GUI (The Face)**: The window you see with buttons and text boxes.
2.  **yt-dlp (The Engine)**: A powerful, invisible tool that does the actual work of talking to YouTube.

Here is the step-by-step journey of a download:

---

### Step 1: You give an Order
When you paste a URL into the box and click **"Add"**, the app creates a "Job". 
*   It looks at your settings (like "Save to Downloads" or "Format: MP4").
*   It bundles the URL and settings together into an instruction.

### Step 2: Preparing the "Engine"
When you hit the **"Cloud/Start"** button, the GUI wakes up the "Engine" (`yt-dlp`). Since `yt-dlp` doesn't have buttons, the GUI "types" a command for it in the background, like this:
> *"Hey Engine, go to this URL, use these Chrome cookies for age-verification, and save the video as an MP4."*

### Step 3: Solving the "Puzzles"
YouTube doesn't want bots downloading videos. They use two main protections:
1.  **Identity Check**: For age-restricted videos, they check if you are logged in. The app uses your **Browser Cookies** to prove you are an adult.
2.  **JavaScript Puzzles (The "n-challenge")**: YouTube sends a tiny code puzzle that must be solved before the video starts. The app uses **Deno** (which we installed) to solve this puzzle instantly.

### Step 4: Grabbing the Stream
Once the puzzles are solved, YouTube gives the "Engine" a direct link to the video stream.
*   The engine starts grabbing tiny pieces of the video one by one.
*   The engine reports back to the GUI: *"I am at 10%... speed is 5MB/s... 1 minute left."*
*   The GUI updates the progress bar so you can see it.

### Step 5: Finalizing the File
Sometimes, YouTube sends the **Video** and the **Audio** separately. 
*   Once both are finished, the app uses another tool called **FFmpeg** to "stitch" them together into one perfect `.mp4` file.
*   It then moves the final file to your specified folder.

---

### 🧩 Key Components Summary

| Component | Role | Why is it needed? |
| :--- | :--- | :--- |
| **Python** | Brain | Controls the entire flow of the app. |
| **wxPython** | Visuals | Design the buttons, windows, and progress bars. |
| **yt-dlp** | Engine | The "hands" that actually reach out to YouTube. |
| **Deno** | Math Expert | Solves the complex puzzles YouTube uses to block bots. |
| **FFmpeg** | Weaver | Combines video and audio into a high-quality file. |
| **Cookies** | Passport | Proves your age so you can see restricted videos. |

---

### 🔒 Where is my data?
*   The app stores its settings in a hidden folder on your Mac: `~/.config/yt-dlg/`.
*   It **never** stores your password. It only borrows your "session cookies" while it's running to talk to YouTube.
