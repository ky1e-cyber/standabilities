execute as @s[type= #standabilities:main/undead] run effect give @s minecraft:instant_health 1 0 true
execute as @s[type= !#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 0 true

execute at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 2 1 force
execute at @s run playsound minecraft:entity.generic.explode ambient @a[distance = ..13] ~ ~ ~ 0.4 2

kill @e[tag = sa_hgstr, sort=nearest, limit=1]
