##Actionbars

title @s[nbt={SelectedItemSlot:6}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Justice ","color":"dark_purple","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Puppet ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Justice ","color":"dark_purple","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Fog ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Justice","color":"dark_purple","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

##Fog

execute unless entity @e[tag = sa_justice_fog] run tag @s remove sa_fog_active
execute if entity @s[nbt={SelectedItemSlot:7}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run function standabilities:stands/justice/fog

##Puppet

execute if entity @s[nbt={SelectedItemSlot:6}] if score @s sa_sneak matches 1.. run tag @s add sa_puppet
execute if score @s sa_sneak matches 0 run tag @s remove sa_puppet
execute if entity @s[tag=sa_puppet, tag = sa_fog_active, tag = !sa_stopped] run function standabilities:stands/justice/puppet


##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2
tag @s remove sa_summoned