local M = {}

M.create_image = function(path, imgName)
	local pathString = path .. imgName .. ".png"
	print(pathString)
	local command = "convert -size 250x250 xc:white " .. pathString
	os.execute(command)
	return pathString
end

M.open_image = function(file)
	os.execute("open -a Pinta " .. file)
end

return M
