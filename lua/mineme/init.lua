local M = {}

-- Colorbuddy setup

-- Color definition

-- Setup func
function M.setup(opts)
	opts = opts or {}
	require('mineme.colors').setup()
end

return M
