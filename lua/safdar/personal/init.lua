--- This module contains my personal written scripts

local scripts = {
	"auto-save",
	"nuggets",
	"quick-movement",
	"spell-checker",
	"undo-breakpoints",
	"custom-colorcolumn",
}

for _, script in ipairs(scripts) do
	require("safdar.personal." .. script)
end
