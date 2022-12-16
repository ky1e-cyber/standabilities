scoreboard players set @p[tag = sa_hdsend] sa_cool_x 40
scoreboard players set @s sa_cool_e 40
execute unless entity @e[tag = sa_hdtag] run scoreboard players set @p[tag = sa_hdsend] sa_damage_hd 0
execute at @s run playsound minecraft:entity.villager.work_cartographer player @a[distance = ..5] ~ ~ ~ 3 1.2
execute as @p[tag = sa_hdsend] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.2
tag @s add sa_hdtag
tag @s add sa_hdctag
scoreboard players set @s sa_hd_eid 0
execute store result score @s sa_hd_eid run scoreboard players get @p[tag = sa_hdsend] sa_hd_eid
tellraw @s[scores={sa_hd_eid = 0}] ["",{"text":"You're trying to hurt yourself with a ","bold":true,"color":"dark_red"},{"text":"sword","bold":true,"italic":true,"color":"dark_red"},{"text":".","bold":true,"color":"dark_red"}]