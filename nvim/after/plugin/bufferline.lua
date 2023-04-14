require("bufferline").setup{
	options = {
		mode = "buffers",
		numbers = "ordinal",
		close_command = "bdelete %d",
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',

		max_name_lenght = 18,
		diagnostics = "nvim_lsp",
		color_icon = true,
		seperator_style = "slant",
	},
}
