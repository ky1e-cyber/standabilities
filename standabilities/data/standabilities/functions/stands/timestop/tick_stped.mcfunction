execute store result score @s[tag = sa_hurted] sa_ts_x2 run data get entity @s Pos[0] 1500
execute store result score @s[tag = sa_hurted] sa_ts_y2 run data get entity @s Pos[1] 1500
execute store result score @s[tag = sa_hurted] sa_ts_z2 run data get entity @s Pos[2] 1500

scoreboard players operation @s[tag = sa_hurted] sa_ts_x2 -= @s sa_ts_x1
scoreboard players operation @s[tag = sa_hurted] sa_ts_y2 -= @s sa_ts_y1
scoreboard players operation @s[tag = sa_hurted] sa_ts_z2 -= @s sa_ts_z1

scoreboard players operation @s[tag = sa_hurted] sa_x1 += @s sa_ts_x2
scoreboard players operation @s[tag = sa_hurted] sa_y1 += @s sa_ts_y2
scoreboard players operation @s[tag = sa_hurted] sa_z1 += @s sa_ts_z2

execute as @s[type=!minecraft:player] store result score @s sa_hurt run data get entity @s HurtTime 1

tag @s[scores={sa_hurt = 1}] add sa_hurted

tag @s[tag = sa_hurted, scores={sa_hurt = 0}] remove sa_hurted

execute store result score @s sa_ts_x1 run data get entity @s Pos[0] 1500
execute store result score @s sa_ts_y1 run data get entity @s Pos[1] 1500
execute store result score @s sa_ts_z1 run data get entity @s Pos[2] 1500

execute as @s[tag = sa_hurted] run data merge entity @s {NoAI:0b}

execute as @s[tag = !sa_hurted] run data merge entity @s {NoAI:1b}

execute as @s[type = minecraft:player] at @s run function standabilities:stands/timestop/player
execute as @s[type = !minecraft:player] run effect give @s minecraft:weakness 1 255 true

execute if entity @s[type=minecraft:tnt] run data merge entity @s {Fuse:60s}
execute if entity @s[type=minecraft:tnt_minecart] run data merge entity @s {Fuse:60s}

execute unless entity @e[tag = sa_stopper] run function standabilities:stands/timestop/unfreeze