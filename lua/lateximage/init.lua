local M = {}
M.config = {}
local latex = require("lateximage.latex")
local utils = require("lateximage.utils")
local config = require("lateximage.config")
local img = require("lateximage.image")
local dir
local file

M.setup = function(opts)
	opts = opts or {}
	M.config = opts
	dir = config.get_dir(M.config)
	if not config.check_image_magick_dependency() then
		M = nil
		error("[LatexImage]: Missing Dependency: ImageMagick")
	end
end

M.insert = function(opts)
	latex.insert_text(opts)
end

M.create = function()
	local fname = vim.fn.input("File: ", "", "file")
	file = img.create_image(dir, fname)
	img.open_image(file)
end

-- Temp debug function
M.print_dir = function()
	print(dir)
end

return M
