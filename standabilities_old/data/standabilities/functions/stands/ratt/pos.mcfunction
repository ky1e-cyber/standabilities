execute store result score @s sa_x1 run data get entity @s Pos[0] 1000
execute store result score @s sa_y1 run data get entity @s Pos[1] 1000
execute store result score @s sa_z1 run data get entity @s Pos[2] 1000

tp ^ ^ ^0.1

execute store result score @s sa_x2 run data get entity @s Pos[0] 1000
execute store result score @s sa_y2 run data get entity @s Pos[1] 1000
execute store result score @s sa_z2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.05 run scoreboard players operation @s sa_x2 -= @s sa_x1
execute store result entity @s Motion[1] double 0.05 run scoreboard players operation @s sa_y2 -= @s sa_y1
execute store result entity @s Motion[2] double 0.05 run scoreboard players operation @s sa_z2 -= @s sa_z1