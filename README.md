# LatexImage Neovim Plugin

## Description
LatexImage is a Neovim plugin designed to streamline the process of including graphical content in LaTeX documents. It is particularly useful when taking notes that include graphs, diagrams, and other visual elements. The plugin automates the creation of blank PNG files, allows for easy editing in Pinta, and then inserts the necessary LaTeX `\includegraphics` command directly into your Neovim buffer.

## Features
- **Automatic PNG File Creation:** Generates a blank white PNG file for your diagrams or graphs.
- **Easy Editing in Pinta:** Opens the created PNG file in Pinta for quick and hassle-free editing.
- **Seamless LaTeX Integration:** Inserts the LaTeX `\includegraphics` code snippet into your current Neovim buffer, referencing the edited image.

## Dependencies
- **Neovim:** The plugin is developed for Neovim, an extensible Vim-based text editor.
- **ImageMagick:** Utilized for image handling and manipulation.
- **Pinta:** A simple painting and image editing program used for creating and editing the images.
- **Lua:** As the plugin is written in Lua, a Lua runtime environment is required.

## Installation
1. **Install Dependencies:**
   - Ensure that Neovim, ImageMagick, and Pinta are installed on your system.
2. **Install LatexImage Plugin:**
   - You can install the plugin using your preferred Neovim package manager. For instance, using vim-plug:
     ```vim
     Plug 'scarcy/lateximage.nvim'
     ```
## Usage
1. **Setup Plugin:**
   - Call the setup function in your Neovim configuration file to initialize the plugin with necessary options.
     ```lua
        require("lateximage").setup({
	        opts = { dir = "path/to/image/directory/" },
        })
     ```
   - Lazy.nvim
   ```lua
        {"scarcy/lateximage.nvim",
        opts = {
            dir = "path/to/image/directory/"
        }
   ```
2. **Create and Edit Image:**
   - Use the command `:LatexImage` to create a new image and open it in Pinta.
3. **Insert Image in LaTeX Document:**
   - Once the image is saved and Pinta is closed, the plugin automatically inserts the `\includegraphics` command at your current cursor position in Neovim.

## Configuration
- Configure the plugin by passing options to the `setup` function. Refer to the plugin documentation for available configuration options.

## Troubleshooting
- Ensure all dependencies are correctly installed.
- Check if Neovim has appropriate permissions to execute external commands (like opening Pinta and using ImageMagick).

## Contributing
Contributions to LatexImage are welcome. Please follow the standard GitHub pull request process to submit your changes.

## License
Specify the license under which your plugin is distributed.

---

This template covers the key aspects that users need to know. You should replace placeholders (like `your-username` in the installation section) with actual information and expand sections like `Configuration` based on your plugin's capabilities and options.
