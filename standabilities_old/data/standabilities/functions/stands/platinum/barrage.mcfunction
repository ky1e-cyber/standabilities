execute at @e[tag = sa_pbarrage] run particle minecraft:dust 0.9 0.1 0.9 1 ^ ^1 ^ 0.5 1 0.4 0 15 normal
execute at @e[tag = sa_pbarrage] run function standabilities:stands/platinum/fist
execute as @e[tag = sa_spfist] if score @s sa_cool matches ..0 run kill @s

execute rotated as @s as @e[tag = sa_spfist] positioned as @s run tp @s ^ ^ ^0.2 ~ ~ 

particle minecraft:instant_effect ~ ~ ~ 0.4 0.1 0.4 3 2 normal
particle minecraft:crit ~ ~ ~ 0.4 0.1 0.4 2 2 force
playsound minecraft:entity.blaze.hurt player @a[distance = ..2.5] ~ ~ ~ 0.2 0.75

execute as @e[distance=..2, tag = !sa_standmodel, tag = !sa_plat_barrage, tag = !sa_spfist] run function standabilities:stands/world/punch
execute as @e[distance=..2, tag = sa_standmodel, tag = !sa_pbarrage, tag = !sa_pmodel] at @s run function standabilities:stands/world/s_punch
