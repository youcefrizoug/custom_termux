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



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Termux Setup Commands</title>
<style>
body { font-family: Arial, sans-serif; margin: 40px; background: #f9f9f9; }
.code-block { background: #272822; color: #f8f8f2; padding: 15px; border-radius: 8px; margin-bottom: 20px; position: relative; }
.copy-btn {
  position: absolute;
  top: 10px;
  right: 10px;
  padding: 6px 10px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.copy-btn:hover { background-color: #45a049; }
</style>
</head>
<body>

<h1>Termux Setup Commands</h1>

<div class="code-block">
<pre id="cmd1">apt update && apt install wget -y</pre>
<button class="copy-btn" onclick="copyToClipboard('cmd1')">Copy</button>
</div>

<div class="code-block">
<pre id="cmd2">cd ~</pre>
<button class="copy-btn" onclick="copyToClipboard('cmd2')">Copy</button>
</div>

<div class="code-block">
<pre id="cmd3">wget -O termux_youcef_ri.sh https://raw.githubusercontent.com/youcefrizoug/custom_termux/main/termux_youcef_ri.sh</pre>
<button class="copy-btn" onclick="copyToClipboard('cmd3')">Copy</button>
</div>

<div class="code-block">
<pre id="cmd4">chmod +x termux_youcef_ri.sh</pre>
<button class="copy-btn" onclick="copyToClipboard('cmd4')">Copy</button>
</div>

<div class="code-block">
<pre id="cmd5">./termux_youcef_ri.sh</pre>
<button class="copy-btn" onclick="copyToClipboard('cmd5')">Copy</button>
</div>

<script>
function copyToClipboard(id) {
  const text = document.getElementById(id).innerText;
  navigator.clipboard.writeText(text).then(() => {
    alert('Copied!');
  });
}
</script>

</body>
</html>

