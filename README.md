🔧 Professional Termux Customization

A comprehensive script to enhance and customize your Termux environment in an attractive and practical way, with full root environment support and integration of smart Zsh tools — for an advanced and smooth terminal experience.

⭐️ Features

⚙️ Professional hostname generation displayed at the top of the terminal to easily distinguish sessions.

💡 Smart autocompletion support using:

zsh-autosuggestions for command suggestions while typing

zsh-syntax-highlighting to colorize commands based on syntax/context


🧠 Fixes overlapping commands issue when writing long commands, ensuring clarity.

🔓 Perfect root environment support:

Creates a dedicated HOME folder for the root user

Displays files/folders with color coding to reflect permissions and states (executable, readable, protected…etc.)


🎨 A stylish MOTD (Message of the Day) welcome screen that shows system information when launching the terminal.


🚀 Installation

Run the following commands directly in Termux:

apt update && apt install wget -y
cd ~
wget -O termux_youcef_ri.sh https://raw.githubusercontent.com/youcefrizoug/custom_termux/main/termux_youcef_ri.sh
chmod +x termux_youcef_ri.sh
./termux_youcef_ri.sh

