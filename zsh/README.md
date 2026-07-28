# 🐚 ZSH Shell Configuration

Resilient ZSH configuration with built-in corporate proxy helper functions and automatic tool fallback degrading.

---

## 🛠️ Installation

```bash
ln -sf ~/terminal-setup/zsh/zshrc ~/.zshrc
```

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
