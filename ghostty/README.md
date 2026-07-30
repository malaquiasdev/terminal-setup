# 👻 Ghostty Configuration

Configuration for [Ghostty](https://github.com/ghostty-org/ghostty), a fast, feature-rich, native terminal emulator.

---

## 🛠️ Installation

```bash
mkdir -p ~/.config/ghostty
ln -sf ~/terminal-setup/ghostty/config ~/.config/ghostty/config
```

---

## ✨ Features & Settings

- **Font:** JetBrainsMono Nerd Font (Size 15) with fallback system monospace fonts.
- **Theme:** Catppuccin Frappe with 0.95 opacity & background blur.
- **Titlebar:** Transparent macOS style with custom 12px inner padding.
- **Cursor:** Block style in orange accent (`#fe8019`).

---

## ⌨️ Keybindings

| Keybinding | Action |
| --- | --- |
| `Cmd + Ctrl + r` | Reload Ghostty configuration |
| `Cmd + t` | Open new tab |
| `Cmd + w` | Close tab / window surface |
| `Cmd + Shift + w` | Close tab |
| `Cmd + k` | Clear terminal screen |

### Splits

| Keybinding | Action |
| --- | --- |
| `Cmd + d` | New split (right) |
| `Cmd + Shift + d` | New split (down) |
| `Cmd + Shift + Enter` | Toggle split zoom |
| `Cmd + Alt + Arrow Keys` | Move focus between splits |
| `Cmd + Shift + Arrow Keys` | Resize active split |
