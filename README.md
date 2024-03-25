# Useful Functions
## Cursor
- nvim_win_get_cursor({window})
P(vim.api.nvim_win_get_cursor(0)) -> Prints the current cursor position (row, col)

- nvim_win_get_buf({window})
Gets the current buffer in a window. Might be uneccesary as it will likely always be 0, but it's a failsafe at least.

## Text insertion
- `:insert`

## Paste from Vim Helptags
							*:a* *:append*
:{range}a[ppend][!]	Insert several lines of text below the specified
			line.  If the {range} is missing, the text will be
			inserted after the current line.
			Adding [!] toggles 'autoindent' for the time this
			command is executed.

							*:i* *:in* *:insert*
:{range}i[nsert][!]	Insert several lines of text above the specified
			line.  If the {range} is missing, the text will be
			inserted before the current line.
			Adding [!] toggles 'autoindent' for the time this
			command is executed.

These two commands will keep on asking for lines, until you type a line
containing only a ".".  Watch out for lines starting with a backslash, see
|line-continuation|.

When in Ex mode (see |-e|) a backslash at the end of the line can be used to
insert a NUL character.  To be able to have a line ending in a backslash use
two backslashes.  This means that the number of backslashes is halved, but
only at the end of the line.

NOTE: These commands cannot be used with |:global| or |:vglobal|.
":append" and ":insert" don't work properly in between ":if" and
":endif", ":for" and ":endfor", ":while" and ":endwhile".
