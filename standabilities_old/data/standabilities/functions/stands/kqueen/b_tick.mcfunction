execute if entity @a[tag = sa_kq_active, scores= {sa_death_kq = 1..}] run tag @s remove sa_kqbomb
execute as @a[tag = sa_kq_active, scores = {sa_death_kq = 1..}] run scoreboard players set @s sa_death_kq 0

execute as @s[type=minecraft:item] if entity @e[type=!minecraft:player, distance=0.1..0.3] run function standabilities:stands/kqueen/mine_exp

execute as @e[type=!minecraft:player, distance=0.1..0.3] run function standabilities:stands/kqueen/mine_exp

execute unless entity @a[tag = sa_kq_active, distance = ..16] run tag @s remove sa_kqbomb