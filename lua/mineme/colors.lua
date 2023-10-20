local Color, colors, Group, groups, styles = require('colorbuddy').setup()

local M = {}

function M.setup(opts)
	opts = opts or {}

	Color.new('backg',     '#141414')
	Color.new('foreg',     '#BCBCBC')
	Color.new('red',       '#FF0000')
	Color.new('redn',      '#e61919')
	Color.new('comment',   '#44b340')
	Color.new('blue',      '#0000FF')
	Color.new('bluen',     '#863e95')
	-- Color.new('bluen',     '#666699')
	-- Color.new('bluen',     '#d4d4ff')
	Color.new('darkgreen', '#37ad82')
	Color.new('green',     '#33cc33')
	Color.new('bg_alt',    '#585858')

	Group.new('Normal',     colors.foreg, colors.backg)
	Group.new('Visual',     colors.foreg, colors.bluen)
	Group.new('NonText',    nil,          nil)
	Group.new('String',     colors.redn)
	Group.new('Comment',    colors.bluen)
	Group.new('Cursor',     nil)
	Group.new('Error',      colors.red)
	Group.new('Todo',       colors.red)
	Group.new('Special',    colors.darkgreen)
	Group.new("DiffAdd",    colors.green)
	Group.new("DiffChange", colors.blue)
	Group.new("DiffDelete", colors.red)
	Group.new("DiffText",   colors.foreg, colors.backg)
	Group.new("WildMenu",   colors.backg, colors.foreg)
	Group.new("PMenu",      colors.backg, colors.foreg)
	Group.new("PMenuThumb", colors.backg, colors.foreg)
	Group.new("MatchParen", colors.foreg, colors.backg_alt)

	Group.link("SpecialChar",    groups.Special)
	Group.link("Character",      groups.String)
	Group.link("Keyword",        groups.Normal)
	Group.link("Constant",       groups.Normal)
	Group.link("Number",         groups.Normal)
	Group.link("ErrorMsg",       groups.Error)
	Group.link("Search",         groups.Visual)
	Group.link("IncSearch",      groups.Visual)
	Group.link("Boolean",        groups.Normal)
	Group.link("Delimiter",      groups.Normal)
	Group.link("Identifier",     groups.Normal)
	Group.link("Title",          groups.Normal)
	Group.link("Debug",          groups.Normal)
	Group.link("Exception",      groups.Normal)
	Group.link("FoldColumn",     groups.Normal)
	Group.link("Macro",          groups.Normal)
	Group.link("ModeMsg",        groups.Normal)
	Group.link("MoreMsg",        groups.Normal)
	Group.link("Question",       groups.Normal)
	Group.link("Conditional",    groups.Keyword)
	Group.link("Statement",      groups.Keyword)
	Group.link("Operator",       groups.Keyword)
	Group.link("Structure",      groups.Keyword)
	Group.link("Function",       groups.Keyword)
	Group.link("Include",        groups.Keyword)
	Group.link("Type",           groups.Keyword)
	Group.link("Typedef",        groups.Keyword)
	Group.link("Todo",           groups.Keyword)
	Group.link("Label",          groups.Keyword)
	Group.link("Define",         groups.Keyword)
	Group.link("DiffAdd",        groups.Keyword)
	Group.link("diffAdded",      groups.Keyword)
	Group.link("diffCommon",     groups.Keyword)
	Group.link("Directory",      groups.Keyword)
	Group.link("PreCondit",      groups.Keyword)
	Group.link("PreProc",        groups.Keyword)
	Group.link("Repeat",         groups.Keyword)
	Group.link("Special",        groups.Keyword)
	Group.link("SpecialChar",    groups.Keyword)
	Group.link("StorageClass",   groups.Keyword)
	Group.link("SpecialComment", groups.String)
	Group.link("CursorLineNr",   groups.String)
	Group.link("Character",      groups.Number)
	Group.link("Float",          groups.Number)
	Group.link("Tag",            groups.Number)
	Group.link("Folded",         groups.Number)
	Group.link("WarningMsg",     groups.Number)
	-- Group.link("iCursor",        groups.SpecialKey)
	-- Group.link("SpellLocal",     groups.SpellCap)
	Group.link("LineNr",         groups.Comment)
	Group.link("NonText",        groups.Comment)
	Group.link("DiffDelete",     groups.Comment)
	Group.link("diffRemoved",    groups.Comment)
	Group.link("PmenuSbar",      groups.Visual)
	Group.link("PmenuSel",       groups.Visual)
	Group.link("VisualNOS",      groups.Visual)
	Group.link("VertSplit",      groups.Visual)
	-- Group.link("Cursor",         groups.StatusLine)
	-- Group.link("Underlined",     groups.SpellRare)
	-- Group.link("rstEmphasis",    groups.SpellRare)
	-- Group.link("diffChanged",    groups.DiffChange)
end

return M
