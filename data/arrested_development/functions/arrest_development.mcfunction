# Desc: Apply the tag that tells the datapack to reset the mob's age
#
# Called by: arrested_development:check

effect give @s minecraft:glowing 3 0 true
execute as @s run data merge entity @s {Age:-24000}
tag @s add do_not_age
data remove entity @s CustomName
