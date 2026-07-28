# 🪟 TMUX Setup (Ghostty Edition)

Uma configuração do **TMUX** autônoma (*self-contained*), focada em performance, usabilidade e compatibilidade com o terminal **Ghostty**, sem exigir downloads de plugins de terceiros ou conexão com a internet.

---

## ⚡ Guia Rápido de Atalhos

O caractere de prefixo principal é **`Ctrl + a`**.

### 1. Gestão de Painéis (Panes)

| Atalho | Ação |
| --- | --- |
| `Ctrl + a` depois `\` | Divide a janela verticalmente (lado a lado), mantendo a pasta atual |
| `Ctrl + a` depois `-` | Divide a janela horizontalmente (em cima/em baixo), mantendo a pasta atual |
| `Ctrl + a` depois `h` | Move o foco para o painel da **esquerda** |
| `Ctrl + a` depois `j` | Move o foco para o painel de **baixo** |
| `Ctrl + a` depois `k` | Move o foco para o painel de **cima** |
| `Ctrl + a` depois `l` | Move o foco para o painel da **direita** |

### 2. Gestão de Janelas (Windows) & Sessão

| Atalho | Ação |
| --- | --- |
| `Ctrl + a` depois `c` | Cria uma nova janela no diretório atual |
| `Ctrl + a` depois `1`..`9` | Alterna para a janela de número correspondente |
| `Ctrl + a` depois `r` | Recarrega as configurações do `~/.tmux.conf` |

---

## 📋 Modo de Cópia & Área de Transferência (Vi-Mode)

O modo de visualização/cópia utiliza os atalhos clássicos do **Vim**:

1. Pressione **`Ctrl + a` + `[`** para entrar no modo de navegação.
2. Navegue usando as teclas `h`, `j`, `k`, `l` (ou a roda do mouse).
3. Pressione **`v`** para iniciar a seleção de texto.
4. Pressione **`y`** para copiar o texto selecionado para a área de transferência do sistema operacional.

> **Suporte Automático de Clipboard por Sistema:**
> - **macOS:** Envia o texto copiado para o `pbcopy`.
> - **Windows (WSL2):** Envia o texto copiado para o `clip.exe`.
> - **Linux:** Envia o texto copiado para o `xclip`.

---

## 🎨 Interface Visual (Tokyo Night)

- **Suporte TrueColor 24-bit:** Habilitado para renderização perfeita no Ghostty (`COLORTERM=truecolor`).
- **Barra de Status (Topo):** Exibe o nome da sessão ativa à esquerda, a lista de janelas abertas ao centro, e a data, hora e hostname à direita.
- **Suporte a Mouse:** Totalmente ativado (clique para alternar painéis, arraste para redimensionar e scroll para rolar o histórico).
