execute unless entity @e[tag = sa_bastet] run tag @s add sa_plate_summon

execute if entity @s[tag = sa_plate_summon] run tag @s add sa_bst_active
execute if entity @s[tag = sa_plate_summon] at @s run setblock ~ ~ ~ minecraft:stone_pressure_plate destroy
execute if entity @s[tag = sa_plate_summon] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Tags:[sa_bastet]}
execute if entity @s[tag = sa_plate_summon] at @s run playsound minecraft:block.stone.place ambient @a[distance=..5] ~ ~ ~ 1 2

execute if entity @s[tag = !sa_plate_summon] at @s run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 0.25 1.5
execute if entity @s[tag = !sa_plate_summon] at @e[tag = sa_bastet] run setblock ~ ~ ~ air
execute if entity @s[tag = !sa_plate_summon] at @e[tag = sa_bastet] run particle minecraft:witch ~ ~ ~ 1 1 1 0 10
execute if entity @s[tag = !sa_plate_summon] as @e[tag = sa_bastet] run kill @s
execute if entity @s[tag = !sa_plate_summon] run tag @s remove sa_bst_active

tag @s remove sa_plate_summon