# Neovim Cheatsheet

Leader = `,` · Local leader = `\` · Plugin manager: lazy.nvim · Theme: tokyonight (night)

## Core keymaps (`lua/config/keymaps.lua`)

| Mode | Key | Action |
|------|-----|--------|
| n | `<C-s>` | Save file |
| i | `<C-s>` | Exit insert + save |
| n | `<Esc>` | Clear search highlight |
| v | `J` / `K` | Move selected lines down / up (re-indents) |
| n | `J` | Join lines, cursor stays put |
| n | `n` / `N` | Next / prev search, centered |
| n | `<C-d>` / `<C-u>` | Half-page down / up, centered |
| n,v | `,y` / `,Y` | Yank to system clipboard |
| x | `,p` | Paste over selection without clobbering register |
| n,v | `,d` | Delete to black hole (no register) |
| n | `,;;` | Toggle presenter mode (tokyonight dark ↔ retrobox light) |
| n | `,tv` | Open terminal in vertical split (right) |
| t | `<Esc>` | Exit terminal mode |

## Diagnostics

| Key | Action |
|-----|--------|
| `gl` | Show diagnostic float |
| `[d` / `]d` | Prev / next diagnostic |

(Inline virtual text and underline are off; signs only.)

## Telescope (`navigation.lua`)

| Key | Action |
|-----|--------|
| `,sf` | Search files |
| `,sg` | Live grep |
| `,sh` | Search help tags |
| `,sn` | Search Neovim config files |
| `,td` | Todo comments (TODO, FIX, NOTE, HACK, BUG) |

## Harpoon 2

| Key | Action |
|-----|--------|
| `,ha` | Add file to list |
| `,hh` | Toggle quick menu |
| `,h1`…`,h4` | Jump to file 1–4 |

## Oil (file explorer)

| Key | Action |
|-----|--------|
| `-` | Open parent directory (in any buffer) |
| `-` (in Oil) | Go to parent |
| `_` (in Oil) | Open cwd |

Hidden files shown; watches for changes. `<C-h>`/`<C-l>` unbound so tmux nav works.

## Terminal

| Key | Action |
|-----|--------|
| `,tt` | Toggle floating terminal (toggleterm) |
| `,tv` | Terminal in right split |
| `<Esc>` | Leave terminal mode |

## Tmux navigation (vim-tmux-navigator)

`<C-h/j/k/l>` move between nvim splits and tmux panes · `<C-\>` previous pane.

## Debugging (nvim-dap + codelldb; C/C++/Rust)

| Key | Action |
|-----|--------|
| `,db` | Toggle breakpoint |
| `,dd` | Run to cursor |
| `F1` | Continue / start |
| `F2` | Step into |
| `F3` | Step over |
| `F4` | Step out |
| `F5` | Restart |
| `F11` | Run last |

Launch prompts for program path and args; "Launch last" reuses them. Virtual text shows variable values.

## LSP / completion / formatting

- Servers (via Mason): `basedpyright` (type checking off), `clangd` (fallback `-std=c++23`), `lua_ls`, `rust_analyzer`.
- Completion (nvim-cmp, LSP source only): `<C-Space>` trigger · `<CR>` confirm (explicit selection only) · `<C-n>`/`<C-p>` navigate.
- Format: `,f` (conform.nvim, falls back to LSP formatting).
- No custom LSP keymaps yet — Neovim defaults apply (e.g. `K` hover, `grn` rename, `gra` code action, `grr` references, `gri` implementation, `<C-w>d` diagnostic float) on 0.11+.

## Editing helpers

| Plugin | Usage |
|--------|-------|
| vim-surround | `ys{motion}{char}`, `cs{old}{new}`, `ds{char}`, `S{char}` (visual) |
| nvim-autopairs | Auto-closes `()`, `[]`, `{}`, quotes in insert |
| nvim-ts-autotag | Auto-close / rename HTML/JSX tags |
| mini.ai | Extra text objects: `af`/`if` function, `ac`/`ic` class, plus `a`/`i` for args, quotes, brackets, etc. |
| treesitter | Highlighting, auto-install parsers (`:TSUpdate`) |

## Visuals

- gitsigns (git signs in gutter), indent-blankline (indent guides), rainbow-delimiters (yellow/violet/blue brackets), lualine (statusline), todo-comments (highlighted TODO/FIX/NOTE…).
- Colorschemes installed: tokyonight (default), nightfox, vague, plus built-in retrobox. Switch with `:colorscheme <name>`.

## Settings highlights

Relative + absolute line numbers · sign column always on · cursorline · wrap with linebreak/breakindent · 4-space indent (expandtab) · no swap/backup · persistent undo (`~/.vim/undodir`) · system clipboard (`unnamedplus`) · splits open to the right.

## Useful commands

`:Lazy` plugins · `:Mason` LSP installer · `:checkhealth` · `:Oil` · `:TodoTelescope` · `:ToggleTerm`
