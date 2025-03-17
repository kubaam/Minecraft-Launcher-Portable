# 🚀 Portable MC Launcher by Ambry

## 🔥 Overview

This batch script enables you to run Minecraft portably on any Windows PC. It automates the setup by creating required directories, checking for the Minecraft launcher, and downloading it via PowerShell if necessary. Enjoy a hassle-free and portable Minecraft experience without a full installation!

## 🛠 Features

- **Automated Setup**: Creates necessary directories for Minecraft data storage.
- **Launcher Verification & Download**: Checks if the Minecraft launcher exists and downloads it automatically if missing.
- **Portable Execution**: Launches Minecraft in a portable environment, keeping your data self-contained.
- **User-Friendly Interface**: Displays clear messages and prompts for a smooth user experience.

## 📦 Requirements

- **Operating System**: Windows (tested on Windows 10)
- **PowerShell**: Pre-installed on most Windows systems
- **Internet Connection**: Required for the initial launcher download

## ⚙️ Setup

1. Clone this repository or download the batch script file.
2. Place the script in your desired portable folder.
3. Ensure you have an active internet connection for the launcher download.
4. Double-click the `.bat` file to run the script.

## 🏃‍♂️ How to Run

When you run the script, it will:

- Create the necessary directories for Minecraft data.
- Check if `Minecraft.exe` exists; if not, prompt you to download it.
- Launch Minecraft in portable mode after setup.

Below is a snippet of the script for reference:

```batch
@echo off
title Portable MC Launcher by Ambry
cls

:: Create required directories if they don't exist
if not exist "%CD%\GameData\AppData\.minecraft" (
    echo [INFO] Creating directory: %CD%\GameData\AppData\.minecraft
    mkdir "%CD%\GameData\AppData\.minecraft"
) else (
    echo [INFO] Directory exists: %CD%\GameData\AppData\.minecraft
)
...
```

## 💾 Data Management

The script organizes your data into two primary directories:
- **GameData\AppData\.minecraft**: Stores Minecraft configuration and game data.
- **GameData\Minecraft**: Contains the Minecraft launcher executable.

## 📈 Why Use This?

- **Portability**: Easily run Minecraft on different PCs without installation.
- **Automation**: Simplifies the process of setting up Minecraft by handling directory creation and launcher downloads automatically.
- **Efficiency**: Focus on playing, while the script takes care of the setup.

## 🚨 Important Notes

- **Disclaimer**: This script is for personal use. Always comply with Minecraft's terms of service and verify any downloaded files before running them.
- Use this tool responsibly and in trusted environments.

## 📢 Contact

For issues or questions, please open an issue on [GitHub](https://github.com/ambry) or reach out on [Twitter](https://twitter.com/ambry).

---

Happy Gaming! ✨
