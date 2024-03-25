local M = {}
-- This function in its current state inserts text at the current cursor position.
-- It inserts the text sent as arguments to the function
M.insert_image = function(image)
	local pos = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, pos) .. image .. line:sub(pos + 1)
	vim.api.nvim_set_current_line(nline)
end

-- This also does the same thing, but with a different approach
M.insert_text = function(text)
	local pos = vim.api.nvim_win_get_cursor(0)
	local row = pos[1]
	local col = pos[2]
	-- print("Row: ", row)
	-- print("Col: ", col)
	vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { text })
end
return M
