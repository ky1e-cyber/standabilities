execute if score @s sa_ratt_ammo matches ..0 run scoreboard players set @s sa_ratt_ammo 4
scoreboard players remove @s sa_ratt_ammo 1
summon arrow ~ ~ ~ {Tags:["sa_ratt_arrow"],pickup:0,crit:1b,CustomPotionEffects:[{Id:20,Amplifier:4,Duration:80,ShowParticles:0b}]}

execute rotated as @s as @e[type=minecraft:arrow, tag = sa_ratt_arrow, sort = nearest, limit = 1] positioned as @s run function standabilities:stands/ratt/pos

execute if score @s sa_ratt_ammo matches ..0 run scoreboard players set @s sa_cool_x 80