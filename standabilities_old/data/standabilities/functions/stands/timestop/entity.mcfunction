tag @s add sa_stopped

execute store result score @s sa_x1 run data get entity @s Motion[0] 1000
execute store result score @s sa_y1 run data get entity @s Motion[1] 1000
execute store result score @s sa_z1 run data get entity @s Motion[2] 1000
execute if entity @s[type=minecraft:tnt] store result score @s sa_fuse run data get entity @s Fuse 1
execute if entity @s[type=minecraft:tnt_minecart] store result score @s sa_fuse run data get entity @s Fuse 1

execute if entity @s[type = !minecraft:player] run data modify entity @s Motion set value [0d, 0d, 0d]
execute if entity @s[type = !minecraft:player] run data merge entity @s {NoAI:1b, NoGravity:1b}
execute if entity @s[type = minecraft:player] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, Tags:["sa_ts_marker"]}
execute as @s[type=minecraft:player] run scoreboard players set @s sa_death_ts 0