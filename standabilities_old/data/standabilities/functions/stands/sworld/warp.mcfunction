execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Tags:["sa_sw_warp"]} 

execute as @e[tag=sa_sw_warp] run scoreboard players set @s sa_distance 11
execute rotated as @s rotated ~ 0 as @e[tag=sa_sw_warp] positioned as @s run function standabilities:stands/sworld/r_loop

execute positioned as @e[tag = sa_sw_warp] run tp ~ ~ ~
kill @e[tag = sa_sw_warp]

scoreboard players set @s sa_cool_ts 600