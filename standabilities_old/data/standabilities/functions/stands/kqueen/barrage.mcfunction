execute at @e[tag = sa_kqbarrage] run function standabilities:stands/kqueen/fist
execute as @e[tag = sa_kqfist] if score @s sa_cool matches ..0 run kill @s

execute rotated as @s as @e[tag = sa_kqfist] positioned as @s run tp @s ^ ^ ^0.2 ~ ~ 

particle minecraft:instant_effect ~ ~ ~ 0.4 0.1 0.4 3 2 normal
particle minecraft:crit ~ ~ ~ 0.4 0.1 0.4 2 2 force
playsound minecraft:entity.blaze.hurt player @a[distance = ..2.5] ~ ~ ~ 0.2 0.75

execute as @e[distance=..2, tag = !sa_standmodel, tag = !sa_kq_barrage, tag = !sa_kqfist] run function standabilities:stands/world/punch
execute as @e[distance=..2, tag = sa_standmodel, tag = !sa_kqbarrage, tag = !sa_kqmodel] at @s run function standabilities:stands/world/s_punch
