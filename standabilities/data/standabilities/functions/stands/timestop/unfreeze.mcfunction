data merge entity @s {NoAI:0b, NoGravity:0b}
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s sa_x1
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s sa_y1
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s sa_z1

execute if entity @s[type=minecraft:tnt] store result entity @s Fuse short 1 run scoreboard players get @s sa_fuse 
execute if entity @s[type=minecraft:tnt_minecart] store result entity @s Fuse short 1 run scoreboard players get @s sa_fuse 

tag @s remove sa_stopped