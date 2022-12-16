kill @e[tag = sa_spawnmarker]
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, PersistenceRequired:1b, Tags:["sa_spawnmarker"]}
execute store result score @e[tag = sa_spawnmarker, sort=nearest, limit=1] sa_btd_id run data get entity @s UUID[0]