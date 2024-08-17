# A Bash Script for Importing Osu Beatmap Packs

This is a handy-dandy bash script for importing beatmap packs into osu! lazer on Linux.

## How to use
1. Download the script.
2. Make a new folder in the Downloads folder and call it whatever you want.
3. Place the script into that folder.
   This is what your folder should look like at this stage.
   ```
   SomeFolder/
   | import-beatmaps.sh
   ```
4. Copy your osu lazer AppImage file into the same folder as the script. Make sure that the AppImage file is exactly named (without the quotation marks) "osu.AppImage". If the AppImage file is named anything else, then the script WILL NOT WORK.
This is what your folder should look like at this stage.
   ```
   SomeFolder/
   | import-beatmaps.sh
   | osu.AppImage
   ```
5. Place as many beatmap packs as you like from [the official osu! website](https://osu.ppy.sh/beatmaps/packs) into the same folder where your script and AppImage file are in. Each beatmap pack comes in a `.zip` file. Do not extract these files; simply copy or move them into the folder where your script and AppImage file are. At this stage, this is what your folder should look like:
   ```
   SomeFolder/
   | import-beatmaps.sh
   | osu.AppImage
   | BeatmapPack1.zip
   | BeatmapPack2.zip
   | BeatmapPack3.zip
   | ...
   | BeatmapPack69.zip
   ```
6. Open a terminal window in the folder, in which your script, AppImage file and beatmap packs are located. This can be done by right clicking on an empty space in the file explorer, then left clicking on "Open in Terminal".
7. Now type: `chmod +x osu.AppImage`. Then press Enter.
8. Then type: `bash import-beatmaps.sh`
9. osu! lazer should then open and import your beatmaps. Enjoy!
10. If you want to import more beatmaps again, then simply repeat steps 5 through 9, excluding 7.
---
Notes
---
The script will automatically delete all beatmap packs placed into the folder.

This script will only work with beatmaps, whose contents entirely consist of `.osz` files.
