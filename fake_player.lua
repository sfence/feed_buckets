
local fake_player = {}

function feed_buckets.new_fake_player(player)
  local new_fake_player = table.copy(fake_player)
  new_fake_player.player = player
  setmetatable(new_fake_player, {__index=player})
  return new_fake_player
end

-- objectref
function fake_player:get_pos()
  return self.player:get_pos()
end
function fake_player:set_pos(vel)
  return self.player:set_pos(vel)
end

function fake_player:get_velocity()
  return self.player:get_velocity()
end
function fake_player:add_velocity(vel)
  return self.player:add_velocity(vel)
end

function fake_player:move_to(...)
  return self.player:move_to(...)
end
function fake_player:punch(...)
  return self.player:punch(...)
end
function fake_player:right_click(clicker)
  return self.player:right_click(clicker)
end

function fake_player:get_hp()
  return self.player:get_hp()
end
function fake_player:set_hp(...)
  return self.player:set_hp(...)
end

function fake_player:get_inventory()
  return self.player:get_inventory()
end
function fake_player:get_wield_list()
  return self.player:get_wield_list()
end
function fake_player:get_wield_index()
  return self.player:get_wield_index()
end

function fake_player:get_wielded_item()
  return self.player:get_wielded_item()
end
function fake_player:set_wielded_item(item)
  return self.player:set_wielded_item(item)
end

function fake_player:get_armor_groups()
  return self.player:get_armor_groups()
end
function fake_player:set_armor_groups(groups)
  return self.player:set_armor_groups(groups)
end

function fake_player:get_animation()
  return self.player:get_animation()
end
function fake_player:set_animation(...)
  return self.player:set_animation(...)
end

function fake_player:set_animation_frame_speed(frame_speed)
  return self.player:set_animation_frame_speed(frame_speed)
end
function fake_player:get_attach()
  return self.player:get_attach()
end
function fake_player:set_attach(...)
  return self.player:set_attach(...)
end
function fake_player:get_children()
  return self.player:get_children()
end
function fake_player:set_detach()
  return self.player:set_detach()
end

function fake_player:get_bone_position()
  return self.player:get_bone_position()
end
function fake_player:set_bone_position(...)
  return self.player:set_bone_position(...)
end

function fake_player:get_properties()
  return self.player:get_properties()
end
function fake_player:set_properties(vel)
  return self.player:set_properties(vel)
end

function fake_player:is_player()
  return self.player:is_player()
end

function fake_player:get_nametag_attributes()
  return self.player:get_nametag_attributes()
end
function fake_player:set_nametag_attributes(vel)
  return self.player:set_nametag_attributes(vel)
end

-- lua entity
function fake_player:remove()
  return self.player:remove()
end

function fake_player:set_velocity(vel)
  return self.player:set_velocity(vel)
end

function fake_player:get_acceleration()
  return self.player:get_acceleration()
end
function fake_player:set_acceleration(acc)
  return self.player:set_acceleration(acc)
end

function fake_player:get_rotation()
  return self.player:get_rotation()
end
function fake_player:set_rotation(rot)
  return self.player:set_rotation(rot)
end

function fake_player:get_yaw()
  return self.player:get_yaw()
end
function fake_player:set_yaw(yaw)
  return self.player:set_yaw(yaw)
end

function fake_player:get_texture_mod()
  return self.player:get_texture_mod()
end
function fake_player:set_texture_mod(mod)
  return self.player:set_texture_mod(mod)
end

function fake_player:set_sprite(...)
  return self.player:set_sprite(...)
end

function fake_player:get_luaentity()
  return self.player:get_luaentity()
end

-- player specific
function fake_player:get_player_name()
  return self.player:get_player_name()
end

function fake_player:get_look_dir()
  return self.player:get_look_dir()
end
function fake_player:get_look_vertical()
  return self.player:get_look_vertical()
end
function fake_player:set_look_vertical(radians)
  return self.player:set_look_vertical(radians)
end
function fake_player:get_look_horizontal()
  return self.player:get_look_horizontal()
end
function fake_player:set_look_horizontal(radians)
  return self.player:set_look_horizontal(radians)
end

function fake_player:get_breath()
  return self.player:get_breath()
end
function fake_player:set_breath(value)
  return self.player:set_breath(value)
end

function fake_player:get_fov()
  return self.player:get_fov()
end
function fake_player:set_fov(fov, is_multiplier, transition_time)
  return self.player:set_fov(fov, is_multiplier, transition_time)
end

function fake_player:get_meta()
  return self.player:get_meta()
end

function fake_player:get_inventory_formspec()
  return self.player:get_inventory_formspec()
end
function fake_player:set_inventory_formspec(formspec)
  return self.player:set_inventory_formspec(formspec)
end

function fake_player:get_formspec_prepend(formspec)
  return self.player:get_formspec_prepend(formspec)
end
function fake_player:set_formspec_prepend(formspec)
  return self.player:set_formspec_prepend(formspec)
end

function fake_player:get_player_control()
  return self.player:get_player_control()
end
function fake_player:get_player_control_bits()
  return self.player:get_player_control_bits()
end

function fake_player:get_physic_override()
  return self.player:get_physic_override()
end
function fake_player:set_physic_override(override_table)
  return self.player:set_physic_override(override_table)
end

function fake_player:hud_add(hud_definition)
  return self.player:hud_add(hud_definition)
end
function fake_player:hud_remove(id)
  return self.player:hud_remove(id)
end
function fake_player:hud_change(id, stat, value)
  return self.player:hud_change(id, stat, value)
end
function fake_player:hud_get(id)
  return self.player:hud_get(id)
end

function fake_player:hud_get_flags()
  return self.player:hud_get_flags()
end
function fake_player:hud_set_flags(flags)
  return self.player:hud_set_flags(flags)
end

function fake_player:hud_get_hotbar_itemcount()
  return self.player:hud_get_hotbar_itemcount()
end
function fake_player:hud_set_hotbar_itemcount(count)
  return self.player:hud_set_hotbar_itemcount(count)
end

function fake_player:hud_get_hotbar_image()
  return self.player:hud_get_hotbar_image()
end
function fake_player:hud_set_hotbar_image(texturename)
  return self.player:hud_set_hotbar_image(texturename)
end

function fake_player:hud_get_hotbar_selected_image()
  return self.player:hud_get_hotbar_selected_image()
end
function fake_player:hud_set_hotbar_selected_image(texturename)
  return self.player:hud_set_hotbar_selected_image(texturename)
end

function fake_player:set_minimap_modes(modes, selected_mode)
  return self.player:set_minimap_mdoes(mdoes, selected_mode)
end

function fake_player:get_sky()
  return self.player:get_sky()
end
function fake_player:set_sky(sky_parameters)
  return self.player:set_sky(sky_parameters)
end
function fake_player:get_sky_color()
  return self.player:get_sky_color()
end

function fake_player:get_sun()
  return self.player:get_sun()
end
function fake_player:set_sun(sun_parameters)
  return self.player:set_sun(sun_parameters)
end

function fake_player:get_moon()
  return self.player:get_moon()
end
function fake_player:set_moon(moon_parameters)
  return self.player:set_moon(moon_parameters)
end

function fake_player:get_stars()
  return self.player:get_stars()
end
function fake_player:set_stars(stars_parameters)
  return self.player:set_stars(stars_parameters)
end

function fake_player:get_clouds()
  return self.player:get_clouds()
end
function fake_player:set_clouds(clouds_parameters)
  return self.player:set_clouds(clouds_parameters)
end

function fake_player:get_day_night_ratio()
  return self.player:get_day_night_ratio()
end
function fake_player:override_day_night_ratio(ratio)
  return self.player:override_day_night_ratio(ratio)
end

function fake_player:get_local_animation()
  return self.player:get_local_animation()
end
function fake_player:set_local_animation(...)
  return self.player:set_local_animation(...)
end

function fake_player:get_eye_offset()
  return self.player:get_eye_offset()
end
function fake_player:set_eye_offset(...)
  return self.player:set_eye_offset(...)
end

function fake_player:send_mapblock(blockpos)
  return self.player:send_mapblock(blockpos)
end

