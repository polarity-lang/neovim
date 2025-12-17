local M = {}

function M.setup(opts)
	opts = require("polarity.config").setup(opts)
	require("polarity.autocommands").setup(opts)
end

return M
