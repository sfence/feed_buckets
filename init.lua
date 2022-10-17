
feed_buckets = {
  translator = minetest.get_translator("feed_bucket")
}

local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath.."/adaptation.lua")

dofile(modpath.."/functions.lua")

dofile(modpath.."/feed_buckets.lua")

