local tzfile = require "luatz.tzfile"

local zoneinfo_path = "/tz/zoneinfo/"
local tz_cache = {}

local function name_to_zoneinfo_path(name)
	assert(name, "Getting the local time zone is not yet supported")
	name = name .. ".tz"
	if name:sub(1, 1) == "/" then
		return name
	else
		return zoneinfo_path .. name
	end
end

local function clear_tz_cache(name)
	tz_cache[name_to_zoneinfo_path(name)] = nil
end

local function get_tz(name)
	local path = name_to_zoneinfo_path(name)
	-- TODO: stat path
	local tzinfo = tz_cache[path]
	if tzinfo == nil then
		tzinfo = tzfile.read_tzfile(path)
		tz_cache[path] = tzinfo
	end
	return tzinfo
end

return {
	get_tz = get_tz;
	clear_tz_cache = clear_tz_cache;
}
