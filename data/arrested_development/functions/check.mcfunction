# Desc: Checks for mobs with specific name
#
# Called by: arrested_development:detect (advancement)

execute as @e[name="baby", distance=..16, nbt=!{Age:0}, sort=nearest, limit=1] run function arrested_development:arrest_development
execute as @e[name="Baby", distance=..16, nbt=!{Age:0}, sort=nearest, limit=1] run function arrested_development:arrest_development

execute as @e[name="grow", distance=..16, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="Grow", distance=..16, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="grow up", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="Grow Up", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="Grow up", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="grow_up", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="Grow_Up", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="Grow_up", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="growup", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="GrowUp", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel
execute as @e[name="Growup", distance=..16, tag=do_not_age, sort=nearest, limit=1] run function arrested_development:cancel


advancement revoke @s only arrested_development:detect
