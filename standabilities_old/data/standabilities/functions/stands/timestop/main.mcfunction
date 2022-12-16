execute if entity @s[tag = !sa_stopper] unless entity @a[tag = sa_stopper, distance = 0.1..128] at @s run playsound minecraft:aria.stands.stardust.theworld.stop ambient @a[distance=..6] ~ ~ ~


scoreboard players set @s[tag = !sa_stopper] sa_timer_ts 100

execute if score @s jp2_standid matches 8 run bossbar set standabilities:timestop_sp players @s
execute if score @s jp2_standid matches 9 run bossbar set standabilities:timestop_tw players @s
execute if score @s jp2_standid matches 15 run bossbar set standabilities:timestop_ts players @s


execute if entity @s[tag=!sa_stopper] run function standabilities:stands/timestop/gr_stop

execute as @s[tag=!sa_stopper] run effect give @s minecraft:blindness 1 255 true
tag @s[tag = !sa_stopper] add sa_stopping
tag @s[tag = !sa_stopper] add sa_stopper

execute as @s[tag = sa_stopper, tag = !sa_stopping] unless entity @a[tag = sa_stopper, distance = 0.1..128] at @s run playsound minecraft:aria.stands.stardust.theworld.resume ambient @a[distance=..6] ~ ~ ~
execute as @s[tag = sa_stopper, tag = !sa_stopping] unless entity @a[tag = sa_stopper, distance = 0.1..] run function standabilities:stands/timestop/gr_res
execute as @s[tag = sa_stopper, tag = !sa_stopping] if score @s jp2_standid matches 8 run bossbar set standabilities:timestop_sp players
execute as @s[tag = sa_stopper, tag = !sa_stopping] if score @s jp2_standid matches 9 run bossbar set standabilities:timestop_tw players
execute as @s[tag = sa_stopper, tag = !sa_stopping] if score @s jp2_standid matches 15 run bossbar set standabilities:timestop_ts players
execute as @s[tag = sa_stopper, tag = !sa_stopping] run effect clear @s minecraft:night_vision
execute as @s[tag = sa_stopper, tag = !sa_stopping] run scoreboard players set @s sa_cool_ts 160
tag @s[tag = sa_stopper, tag = !sa_stopping] remove sa_stopper
