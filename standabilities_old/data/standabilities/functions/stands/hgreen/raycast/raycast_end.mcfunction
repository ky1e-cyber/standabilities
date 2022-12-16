execute as @e[distance=..2, tag=!raycaster_hg, type= !#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 0 true
execute as @e[distance=..2, type= #standabilities:main/undead] run effect give @s minecraft:instant_health 1 0 true

execute as @e[distance=..2, tag = sa_standmodel, tag = !sa_hgmodel] at @s as @a[tag = sa_standuser] if score @s jp2_standid = @e[tag = sa_standmodel, sort=nearest, limit=1] sa_modelsid run effect give @s minecraft:instant_damage 1 0 true



particle minecraft:explosion ~ ~ ~ 0 0 0 2 1 force
playsound minecraft:entity.generic.explode ambient @a[distance = ..13] ~ ~ ~ 0.7 2
