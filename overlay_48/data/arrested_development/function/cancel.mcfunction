# Desc: Remove the do-not-age tag to allow the mob to continue ageing
#
# Called by: arrested_development:check

effect give @s minecraft:glowing 3 0 true
tag @s remove do_not_age
data remove entity @s CustomName
