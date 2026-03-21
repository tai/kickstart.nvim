# Files and Buffers
- %         - new file in dir (folder browser)
- d         - new folder in dir (folder browser)

- <Space>fb - list buffer /w telescope
- <Space>ff - list files /w telescope
- <Space>fg - live grep /w telescope
- <Space>fm - list marks /w telescope
- <Space>fo - list oldfiles /w telescope

- :e <path> - open or create file
- :e %:p:h  - open dir of current file
- :pwd      - print working dir of nvim

- C-w [sv]    - split window
- C-w [hjkl]  - switch to window
- C-w o       - only one window

- :ls       - list buffers
- :b<n>     - switch to buffer
- :bd       - close current buffer

# Range ops
- 10,20s/foo/bar/g  (absolute line)
- .,+10s/foo/bar/g  (relative line)
- -3,+5s/foo/bar/g  (relative line)
- %s/foo/bar/g      (% = shortcut of 1,$)
- '<,'>s/foo/bar/g  (after visual selection)

# Copy and Paste
- yy p
- dd p
- (visual-select) y p
- (visual-select) d p

# Registers
- :reg - List registers (0-9, a-z, +)

- "ayy  - copy to reg.a
- "ap   - paste from reg.a
- C-r a  - paste from reg.a (insert mode)

- "+yy  - copy to OS clipboard (visual mode)
- "+p   - paste from OS clipboard (visual mode)
- C-r + - paste from OS clipboard (insert mode)
- (visual select) "+y - copy range to OS clipboard

