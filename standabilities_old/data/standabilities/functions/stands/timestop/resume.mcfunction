kill @e[tag = sa_ts_marker]
effect clear @s minecraft:night_vision
execute if score @s jp2_standid matches 8 run bossbar set standabilities:timestop_sp players
execute if score @s jp2_standid matches 9 run bossbar set standabilities:timestop_tw players
execute if score @s jp2_standid matches 15 run bossbar set standabilities:timestop_ts players
tag @s remove sa_stopper
scoreboard players set @s sa_cool_ts 600

execute unless entity @a[tag = sa_stopper, distance = ..128] at @s run playsound minecraft:aria.stands.stardust.theworld.resume ambient @a[distance=..6] ~ ~ ~
execute unless entity @a[tag = sa_stopper] run function standabilities:stands/timestop/gr_res