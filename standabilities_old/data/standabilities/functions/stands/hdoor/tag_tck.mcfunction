execute if score @s sa_hd_eid matches 0 run function standabilities:stands/hdoor/effects/selfhurt
execute if score @s sa_hd_eid matches 1 run function standabilities:stands/hdoor/effects/selfimm
execute if score @s sa_hd_eid matches 2 run function standabilities:stands/hdoor/effects/cantmove
execute if score @s sa_hd_eid matches 3 run function standabilities:stands/hdoor/effects/goup
execute if score @s sa_hd_eid matches 4 run function standabilities:stands/hdoor/effects/slowfall
execute if score @s sa_hd_eid matches 5 run function standabilities:stands/hdoor/effects/fatigue
execute if score @s sa_hd_eid matches 6 if data entity @s SelectedItem at @s run function standabilities:stands/hdoor/effects/shands
execute if score @s sa_hd_eid matches 6 if data entity @s HandItems[0].id at @s run function standabilities:stands/hdoor/effects/shands_altm
execute if score @s sa_hd_eid matches 6 if data entity @s HandItems[1].id at @s run function standabilities:stands/hdoor/effects/shands_alts
execute if score @s sa_hd_eid matches 7 run function standabilities:stands/hdoor/effects/clear

execute at @s unless entity @a[tag = sa_standuser, scores = {jp2_standid = 19}, distance = ..32] run tag @s remove sa_hdtag