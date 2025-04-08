<<<<<<< HEAD
 function colorMyPencils(color)
=======
 function bgrm(color)
>>>>>>> 45d9f36 (changed function name from colorMyPencils to bgrm)
	 color = color or "rose-pine"
	 vim.cmd.colorscheme(color)

	 vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	 vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

 end

<<<<<<< HEAD
 colorMyPencils()
=======
 bgrm()

>>>>>>> 45d9f36 (changed function name from colorMyPencils to bgrm)
