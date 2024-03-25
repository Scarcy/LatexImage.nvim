local M = {}
local utils = require("lateximage.utils")

M.get_dir = function(opts)
	local ok, dir = pcall(function()
		return opts["opts"]["dir"]
	end)
	if ok then
		return dir
	else
		print("LatexImage: Directory not setup")
		return nil
	end
end

M.check_image_magick_dependency = function()
	local status, _, _ = os.execute("magick --version > /dev/null 2>&1")
	if status == 0 then
		return true
	else
		return false
	end

	-- print("Status: ", status)
	-- print("Exit Code: ", exit_code)
end
return M
