scoreboard players set @s sa_cool_x 10
summon minecraft:armor_stand ~ ~-1 ~ {Marker:1b, Invisible:1b}
tag @e[type=minecraft:armor_stand, sort=nearest,limit=1] add sa_geb
execute as @s[tag = !sa_vib_sense] run scoreboard players set @e[tag = sa_geb] sa_distance 32
execute as @s[tag = sa_vib_sense] run scoreboard players set @e[tag = sa_geb] sa_distance 128
tag @s add sa_geb_raycaster
execute if entity @s rotated as @s rotated ~ 1 as @e[tag = sa_geb] positioned as @s run function standabilities:stands/geb/raycast/raycast