#!/data/data/com.termux/files/usr/bin/bash

# Colors and Symbols
GREEN="\033[1;32m"
RED="\033[1;31m"
BLUE="\033[1;34m"
RESET="\033[0m"
BOLD="\033[1m"

INFO="🔹"
OK="✅"
FAIL="❌"

# Medium-width Blue Banner Frame
FRAME="${BLUE}┌────────────────────────────────────────────┐
│           Termux by Youcef_Ri              │
└────────────────────────────────────────────┘${RESET}"

# Display the frame now
echo -e "$FRAME"

# Save it to motd to persist on future Termux launches
echo -e "$FRAME" > "$PREFIX/etc/motd"

# Fancy Step Printer with border
step() {
    local msg="${BLUE}${BOLD}${INFO} Step $1:${RESET} $2"
    local plain_msg="🔹 Step $1: $2"
    local len=${#plain_msg}
    local border=$(printf '%*s' "$((len + 4))" '' | tr ' ' '-')

    echo -e "\n${BLUE}+${border}+${RESET}"
    echo -e "${BLUE}| ${msg}${BLUE} |${RESET}"
    echo -e "${BLUE}+${border}+${RESET}"
}

success() {
    echo -e "${GREEN}${OK} Done${RESET}"
}

error() {
    echo -e "${RED}${FAIL} $1${RESET}"
    exit 1
}

# Step 1: Disable MOTD
step 1 "Disabling Termux welcome message"
: > "$PREFIX/etc/motd" || error "Could not clear motd"
# Re-insert custom frame
echo -e "$FRAME" > "$PREFIX/etc/motd"
success

# Step 2: Update package list
step 2 "Updating package list"
apt update -y || error "Failed to update package list"
success

# Step 3: Install Zsh
step 3 "Installing Zsh shell"
apt install zsh -y || error "Failed to install Zsh"
success

# Step 4: Download archive
ARCHIVE="termux_youcef_Ri.tar.xz"
URL="https://github.com/youcefrizoug/custom_termux/raw/main/$ARCHIVE"

step 4 "Downloading $ARCHIVE"
if [ -f "$ARCHIVE" ]; then
    echo "🟡 Archive already exists, skipping download"
else
    wget -q --show-progress "$URL" || error "Failed to download archive"
fi
success

# Step 5: Extract archive
step 5 "Extracting $ARCHIVE"
tar -xf "$ARCHIVE" || error "Failed to extract archive"
rm -f "$ARCHIVE"
success

# Step 6: Source environment
step 6 "Applying environment from ~/.bashrc"
source ~/.bashrc 2>/dev/null || true
success

echo -e "\n${GREEN}${BOLD}🎉 All steps completed successfully!${RESET}\n"