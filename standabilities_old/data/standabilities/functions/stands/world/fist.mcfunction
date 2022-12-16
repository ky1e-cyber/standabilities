##kill @e[tag = sa_wfist, limit= 1]
##execute positioned ~ ~0.5 ~ positioned ^-0.56 ^ ^ run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}],HandItems:[{},{}], Tags:["sa_wfist", "sa_wfs"]}
execute positioned ~ ~0.3 ~ positioned ^-0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_wfmarker"]}
execute positioned ~ ~0.7 ~ positioned ^-0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_wfmarker"]}
execute positioned ~ ~0.3 ~ positioned ^0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_wfmarker"]}
execute positioned ~ ~0.7 ~ positioned ^0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_wfmarker"]}

execute at @e[tag = sa_wfmarker, sort=random, limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}], Tags:["sa_wfist", "sa_wfs"]}

scoreboard players set @e[tag = sa_wfs] sa_cool 8
tag @e[tag = sa_wfs] remove sa_wfs
kill @e[tag = sa_wfmarker]
