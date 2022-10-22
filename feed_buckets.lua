
local adaptation = feed_buckets.adaptation

if (not adaptation.bucket_empty) then
  minetest.log("error", "[feed_buckets] Feed buckets: No empty bucket definition was found.")
  return
end

local bucket_empty = adaptation.bucket_empty.name

if minetest.get_modpath("hades_aquaz") then
	minetest.register_craftitem("feed_buckets:bucket_algae_feed", {
			description = "Bucket Of Algae Feed",
			_tt_help = "Use it to feed up to 8 nearby fishes (up to 4 nodes) poitned entity or node.",
			inventory_image = "feed_buckets_bucket_algae_feed.png",
			groups = {
				algae = 1,
			},
			_feed_bucket = {
				max_distance = 4,
				max_feeds = 8,
				feed_item = "hades_aquaz:algae_feed",
				empty_item = bucket_empty,
			},
			on_use = feed_buckets.use_bucket_of_feed_from_def,
			on_place = feed_buckets.use_bucket_of_feed_from_def,
			on_secondary_use = feed_buckets.use_bucket_of_feed_from_def,
		})
	minetest.register_craft({
			output = "feed_buckets:bucket_algae_feed",
			recipe = {
				{"hades_aquaz:algae_feed", "hades_aquaz:algae_feed", "hades_aquaz:algae_feed"},
				{"hades_aquaz:algae_feed", "hades_aquaz:algae_feed", "hades_aquaz:algae_feed"},
				{"hades_aquaz:algae_feed", bucket_empty, "hades_aquaz:algae_feed"},
			},
		})
end

if adaptation.seagrass then
  local seagrass = adaptation.seagrass.name
	minetest.register_craftitem("feed_buckets:bucket_seagrass", {
			description = "Bucket Of Sea Grass",
			_tt_help = "Use it to feed up to 8 nearby mobs (up to 4 nodes) poitned entity or node.",
			inventory_image = "feed_buckets_bucket_seagrass.png",
			groups = {
				algae = 1,
			},
			_feed_bucket = {
				max_distance = 4,
				max_feeds = 8,
				feed_item = seagrass,
				empty_item = bucket_empty,
			},
			on_use = feed_buckets.use_bucket_of_feed_from_def,
			on_place = feed_buckets.use_bucket_of_feed_from_def,
			on_secondary_use = feed_buckets.use_bucket_of_feed_from_def,
		})
	minetest.register_craft({
			output = "feed_buckets:bucket_seagrass",
			recipe = {
				{seagrass, seagrass, seagrass},
				{seagrass, seagrass, seagrass},
				{seagrass, bucket_empty, seagrass},
			},
		})
end

if adaptation.wheat_seed then
  local wheat_seed = adaptation.wheat_seed.name
	minetest.register_craftitem("feed_buckets:bucket_wheat_seeds", {
			description = "Bucket Of Wheat Seeds",
			_tt_help = "Use it to feed up to 8 fishes nearby (up to 4 nodes) poitned entity or node.",
			inventory_image = "feed_buckets_bucket_wheat_seeds.png",
			groups = {
				algae = 1,
			},
			_feed_bucket = {
				max_distance = 4,
				max_feeds = 8,
				feed_item = wheat_seed,
				empty_item = bucket_empty,
			},
			on_use = feed_buckets.use_bucket_of_feed_from_def,
			on_place = feed_buckets.use_bucket_of_feed_from_def,
			on_secondary_use = feed_buckets.use_bucket_of_feed_from_def,
		})
	minetest.register_craft({
			output = "feed_buckets:bucket_wheat_seeds",
			recipe = {
				{wheat_seed, wheat_seed, wheat_seed},
				{wheat_seed, wheat_seed, wheat_seed},
				{wheat_seed, bucket_empty, wheat_seed},
			},
		})
end

