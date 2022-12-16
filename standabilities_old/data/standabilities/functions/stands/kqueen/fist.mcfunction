execute positioned ~ ~0.7 ~ positioned ^-0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_kqfmarker"]}
execute positioned ~ ~0.3 ~ positioned ^-0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_kqfmarker"]}
execute positioned ~ ~0.3 ~ positioned ^0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_kqfmarker"]}
execute positioned ~ ~0.7 ~ positioned ^0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_kqfmarker"]}

execute at @e[tag = sa_kqfmarker, sort=random, limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}], Tags:["sa_kqfist", "sa_kqfs"]}

scoreboard players set @e[tag = sa_kqfs] sa_cool 8
tag @e[tag = sa_kqfs] remove sa_kqfs
kill @e[tag = sa_kqfmarker]