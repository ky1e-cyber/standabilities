clear @s

tag @a[tag = sa_kq_active, sort = nearest, limit = 1] remove sa_kq_active

particle minecraft:lava ~ ~ ~ 0 0 0 0.1 5 force
particle minecraft:crit ^ ^ ^ 0 0 0 1 3 normal
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 2 normal



playsound entity.generic.explode ambient @a[distance = ..3] ~ ~ ~ 1 1.5

execute if entity @s[type = !#standabilities:main/nonliving, type = !#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 1 true
execute if entity @s[type = #standabilities:main/undead] run effect give @s minecraft:instant_health 1 1 true
execute if entity @s[type = #standabilities:main/nonliving] run kill @s


particle minecraft:lava ~ ~ ~ 0 0 0 0.1 5 force
particle minecraft:crit ^ ^ ^ 0 0 0 1 3 normal
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 2 normal

playsound entity.generic.explode ambient @a[distance = ..3] ~ ~ ~ 1 1