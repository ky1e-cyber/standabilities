execute if entity @s[nbt = {Inventory:[{id:"minecraft:stone_sword"}]}, type=!#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[type=#standabilities:main/undead] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[nbt = {Inventory:[{id:"minecraft:golden_sword"}]}, type=!#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[type=#standabilities:main/undead] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[nbt = {Inventory:[{id:"minecraft:iron_sword"}]}, type=!#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[type=#standabilities:main/undead] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[nbt = {Inventory:[{id:"minecraft:diamond_sword"}]}, type=!#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[type=#standabilities:main/undead] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[nbt = {Inventory:[{id:"minecraft:netherite_sword"}]}, type=!#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 1 true
execute if entity @s[type=#standabilities:main/undead] run effect give @s minecraft:instant_health 1 1 true

scoreboard players set @s sa_cool_e 40