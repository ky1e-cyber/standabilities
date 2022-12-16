kill @e[tag = sa_ts_marker]
effect clear @s minecraft:night_vision
bossbar set standabilities:timestop players

tag @s remove sa_stopper
scoreboard players set @s sa_cool_ts 150

execute unless entity @a[tag = sa_stopper, distance = ..128] at @s run playsound minecraft:aria.stands.stardust.theworld.resume ambient @a[distance=..6] ~ ~ ~
execute unless entity @a[tag = sa_stopper] run function standabilities:stands/timestop/gr_res