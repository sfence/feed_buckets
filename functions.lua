
local function check_follow(follow, feed_item)
  for _,follow_item in pairs(follow) do
    if (follow_item==feed_item) then
      return true
    elseif (follow_item:sub(1, 6)=="group:") then
      if (minetest.get_item_group(feed_item, follow_item:sub(7))>0) then
        return true
      end
    end
  end
  
  return false
end

function feed_buckets.use_bucket_of_feed(itemstack, user, pointed_thing, feed_data)
  local feed_pos = user:get_pos()
  if (pointed_thing.type=="node") then
    feed_pos = pointed_thing.under
  elseif (pointed_thing.type=="object") then
    feed_pos = pointed_thing.ref:get_pos()
  end
  
  local objects = minetest.get_objects_inside_radius(feed_pos, feed_data.max_distance)
  
  local feeds = 0
  for _,object in pairs(objects) do
    local luaentity = object:get_luaentity()
    if luaentity and (luaentity.follow) then
      local follow = luaentity.follow
      if (type(follow)=="string") then
        follow = string.split(follow, ",")
      end
      if check_follow(follow, feed_data.feed_item) then
        user:set_wielded_item(ItemStack(feed_data.feed_item))
        luaentity:on_rightclick(user)
        feeds = feeds + 1
      end
    end
    if feeds>=feed_data.max_feeds then
      break
    end
  end
  
  if (feeds>0) then
    itemstack:take_item(1)
    local inv = user:get_inventory()
    local empty = inv:add_item("main", ItemStack(feed_data.empty_item))
    if (empty:get_count()>0) then
      minetest.add_item(user:get_pos(), empty)
    end
  end
  
  return itemstack
end

function feed_buckets.use_bucket_of_feed_from_def(itemstack, user, pointed_thing, feed_data)
  local def = itemstack:get_definition()
  return feed_buckets.use_bucket_of_feed(itemstack, user, pointed_thing, def._feed_bucket)
end

