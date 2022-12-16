clear @s
tag @s remove sa_kqbomb
particle minecraft:lava ~ ~1 ~ 0 0 0 0.1 7 force
particle minecraft:crit ^ ^1 ^ 0 0 0 1 4 normal
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 3 normal

playsound entity.generic.explode ambient @a[distance = ..5] ~ ~ ~ 1 1.5

execute if entity @s[type = !#standabilities:main/nonliving, type = !#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 2 true
execute if entity @s[type = #standabilities:main/undead] run effect give @s minecraft:instant_health 1 2 true
execute if entity @s[type = #standabilities:main/nonliving] run kill @s

particle minecraft:lava ~ ~ ~ 0 0 0 0.1 7 force
particle minecraft:crit ^ ^ ^ 0 0 0 1 4 normal
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 3 normal

playsound entity.generic.explode ambient @a[distance = ..3] ~ ~ ~ 1 1