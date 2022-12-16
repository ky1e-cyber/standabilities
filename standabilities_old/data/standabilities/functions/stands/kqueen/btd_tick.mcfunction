execute if entity @s[scores= {sa_death_kq = 1..}] run tag @a[tag = sa_btd_exp] remove sa_btd_exp
execute as @s[scores = {sa_death_kq = 1..}] run scoreboard players set @s sa_death_kq 0

execute as @a[tag = sa_btd_exp] at @s unless entity @a[tag = sa_btd_active, distance = ..512] run tag @s remove sa_btd_exp

execute store result score sa sa_btd_daytime run time query daytime
execute if score sa sa_btd_time = sa sa_btd_daytime as @a[tag = sa_btd_exp] at @s run function standabilities:stands/kqueen/btd_kill

##execute unless entity @e[tag = sa_btd_main] run tag @s remove sa_btd_active