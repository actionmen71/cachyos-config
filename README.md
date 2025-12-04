# *PURPLE BLOOM THEME*
# 🚀 CachyOS + Niri + Waybar Dotfiles
A clean, minimal, and fully-featured configuration for **CachyOS** utilizing the **Niri** Wayland compositor and **Waybar** panel.

## ✨ Highlights

*   **Window Manager:** Niri - A modern, scrolling, and column-based Wayland compositor.
*   **Panel:** Custom-themed **Waybar** with essential modules (Workspaces, System Tray, Battery, etc.).


---

## 🛠️ Prerequisites

This configuration is specifically designed for a system running **CachyOS** or a very similar Arch-based distribution.

### Required Software

Please ensure the following packages are installed on your system. You can typically install them using `pacman` or `yay`.

*   **Wayland Compositor:** `niri`
*   **Status Bar:** `waybar`
*   **Terminal:** `[alacritty, kitty]`
*   **Application Launcher:** `[ fuzzel, wofi]`
*   **Notification Daemon:** `[mako, dunst, swaync]`
*   **Wallpaper Tool:** `swaybg` or `swww` 
*   **Utility:** `git` for cloning this repository.
*   **Fonts & Icons:** `Nerd Fonts`

---

## 🚀 Installation (The Dotfiles Method)

The recommended way to use this setup is by cloning this repository and creating **symbolic links** (symlinks) to the configuration files in your home directory.

**⚠️ IMPORTANT:** The following steps will **overwrite** your existing `niri` and `waybar` configuration files. Back up your existing configs first!

### Step 1: Backup Your Current Configuration

```bash
# Create a backup directory
mkdir -p ~/dotfiles_backup

# Backup existing Niri config (if it exists)
mv ~/.config/niri ~/dotfiles_backup/niri_bak 2>/dev/null || echo "No existing niri config found to backup."

# Backup existing Waybar config (if it exists)
mv ~/.config/waybar ~/dotfiles_backup/waybar_bak 2>/dev/null || echo "No existing waybar config found to backup."

# Optional: Backup other files you configured, e.g., Alacritty
# mv ~/.config/alacritty ~/dotfiles_backup/alacritty_bak 2>/dev/null || echo "No existing alacritty config found to backup."

```
## Step 2: Clone the Dotfiles Repository
Clone this repository into a dedicated dotfiles folder in your home directory.
code
```Bash
#create dotfiles diectory
mkdir dotfiles

#move inside dotfiles
cd dotfiles

# Clone the repository (replace <Your-GitHub-Username/Repo-Name> with your actual link)
git clone https://github.com/actionmen71/cachyos-config


```

## Step 3: Create Symbolic Links
You will now create symbolic links from the files in this repository to the standard configuration locations (~/.config/). This makes your system use the configs from your cloned repository.


```bash
# Create the .config directory if it doesn't exist
mkdir -p ~/.config

# Create symlinks for Niri
ln -sfn ~/dotfiles/niri ~/.config/niri

# Create symlinks for Waybar
ln -sfn ~/dotfiles/waybar ~/.config/waybar


# Create symlinks for other tools (optional)
ln -sfn ~/dotfiles/alacritty ~/.config/alacritty
ln -sfn ~/dotfiles/fuzzel ~/.config/fuzzel
ln -sfn ~/dotfiles/dunst ~/.config/dunst


```


## Step 4: Final Steps & Relaunch

**Make sure to enable the scripts provided using chmod+ to enable it otherwise it won't run.**

Reboot or log out/log in to ensure Niri and Waybar pick up the new configuration files.
If you use a display manager (like SDDM/GDM), select Niri from the session list.


## ⌨️ Keybindings

Here are the most important keybindings. Note that the **Super** key is typically the **Windows/Meta** key.

Keybindings are different in CachyOs installations. Refer to **niri github page** for default Keybindings.

| Keybinding | Action |
| :--- | :--- |
| **Super + Enter** | Open Terminal (`[Your Terminal Emulator]`) |
| **Super + Space** | Open Application Launcher (`[Your Launcher]`) |
| **Super + Q** | Close the currently focused window |
| **Super + Shift + Q** | Log out/Exit Niri |
| **Super + H** / **Super + L** | Move focus to the left/right column |
| **Super + J** / **Super + K** | Move focus between windows in a column |
| **Super + Tab** | Switch to the next workspace |
| **Super + [1-9]** | Switch to workspace 1 through 9 |
| **Super + Shift + [1-9]** | Move the focused window to a workspace |
| **Super + W** | Toggle Waybar visibility |
| **PrtScn** | Screenshot (using `grim` and `slurp`) |
| **Media Keys** | Volume up/down, mute, play/pause (configured in `niri/config.kdl`) |

---

## 🖼️ Screenshots

![alt_text](pics/desktop)
![alt_text](pics/waybar)
![alt_text](pics/tooltip)
![alt_text](pics/focus-ring)
![alt_text](pics/power-menu)



---

## 🙏 Credits & Thanks

*   **Niri Compositor:** Thanks to the Niri developers for this amazing Wayland compositor.
*   **CachyOS Team:** For providing a great base operating system.


**Enjoy!**


