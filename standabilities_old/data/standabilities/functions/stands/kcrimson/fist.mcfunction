execute positioned ~ ~0.7 ~ positioned ^-0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_kcfmarker"]}
execute positioned ~ ~0.3 ~ positioned ^-0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_kcfmarker"]}
execute positioned ~ ~0.3 ~ positioned ^0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_kcfmarker"]}
execute positioned ~ ~0.7 ~ positioned ^0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_kcfmarker"]}

execute at @e[tag = sa_kcfmarker, sort=random, limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz_bricks",Count:1b}], Tags:["sa_kcfist", "sa_kcfs"]}

scoreboard players set @e[tag = sa_kcfs] sa_cool 8
tag @e[tag = sa_kcfs] remove sa_kcfs
kill @e[tag = sa_kcfmarker]