effect give @s minecraft:night_vision 11 255 true
effect give @s minecraft:slow_falling 1 255 true



execute at @s as @e[distance = ..128, tag = !sa_stopper, tag = !sa_stopped] run function standabilities:stands/timestop/entity

scoreboard players remove @s sa_timer_ts 1

execute if score @s jp2_standid matches 8 store result bossbar standabilities:timestop_sp value run scoreboard players get @s sa_timer_ts
execute if score @s jp2_standid matches 9 store result bossbar standabilities:timestop_tw value run scoreboard players get @s sa_timer_ts
execute if score @s jp2_standid matches 15 store result bossbar standabilities:timestop_ts value run scoreboard players get @s sa_timer_ts


execute if score @s sa_timer_ts matches ..0 run function standabilities:stands/timestop/resume
