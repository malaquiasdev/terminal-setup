# 🐚 ZSH Shell Configuration

Resilient ZSH configuration with built-in tab completion, auto-suggestions, syntax highlighting, and corporate proxy helper functions.

---

## 🛠️ Installation

```bash
ln -sf ~/terminal-setup/zsh/zshrc ~/.zshrc
```

---

## ✨ Autocomplete & Enhancements

- **Native Tab Completion (`compinit`):** Case-insensitive matching, colored menu lists, and command flag autocompletion.
- **Auto-suggestions (`zsh-autosuggestions`):** Shows grey command suggestions from history as you type (accept via Right Arrow `->` or `Ctrl+f`).
- **Syntax Highlighting (`zsh-syntax-highlighting`):** Green for valid commands, red for invalid commands.

---

## 🔒 Corporate Proxy Helpers

| Command | Action |
| --- | --- |
| `setproxy <url>` | Sets `http_proxy`, `https_proxy`, `no_proxy` environment variables |
| `showproxy` | Displays current active proxy environment variables |
| `unsetproxy` | Unsets all active proxy variables |

---

## ⚡ Smart Utility Functions

- **`tm [session_name]`**: Connects to an existing TMUX session or creates a new session named `session_name` (defaults to `main`).
- **Resilient Aliases**: Automatically degrades to system `ls` / `cat` if modern CLI replacements (`eza`, `bat`) are missing.
