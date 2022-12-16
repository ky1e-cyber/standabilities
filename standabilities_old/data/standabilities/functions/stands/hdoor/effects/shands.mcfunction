summon item ~ ~1 ~ {Tags:["sa_hddrop"],Motion:[0.1,0.1,0.0],Item:{id:"minecraft:stone",Count:1b},PickupDelay:40s}
data modify entity @e[tag = sa_hddrop, sort=nearest, limit=1] Item merge from entity @s SelectedItem
item replace entity @s weapon.mainhand with air