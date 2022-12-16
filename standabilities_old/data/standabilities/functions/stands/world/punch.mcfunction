execute as @s[type= !#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[type= #standabilities:main/undead] run effect give @s minecraft:instant_health 1 1 true

execute store result score @s sa_ts_x1 run data get entity @s Pos[0] 2000
execute store result score @s sa_ts_y1 run data get entity @s Pos[1] 2000
execute store result score @s sa_ts_z1 run data get entity @s Pos[2] 2000

execute positioned as @s positioned ~ ~0.2 ~ if block ^ ^ ^0.2 #standabilities:main/voids run tp @s ^ ^ ^0.2

execute store result score @s sa_ts_x2 run data get entity @s Pos[0] 2000
execute store result score @s sa_ts_y2 run data get entity @s Pos[1] 2000
execute store result score @s sa_ts_z2 run data get entity @s Pos[2] 2000

scoreboard players operation @s sa_ts_x2 -= @s sa_ts_x1
scoreboard players operation @s sa_ts_y2 -= @s sa_ts_y1
scoreboard players operation @s sa_ts_z2 -= @s sa_ts_z1

scoreboard players operation @s sa_x1 += @s sa_ts_x2
scoreboard players operation @s sa_y1 += @s sa_ts_y2
scoreboard players operation @s sa_z1 += @s sa_ts_z2