# Desc: Periodically reset the ages of permababies
#
# Called by: #minecraft:load

execute as @e[tag=do_not_age] run data merge entity @s {Age:-24000}
schedule function arrested_development:second 10s
