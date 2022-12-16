##execute if entity @s[tag = sa_fog_active] at @s run 

execute unless entity @e[tag = sa_justice_fog] unless entity @s[tag = sa_fog_active] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",NoGravity:0b,Radius:10f,Duration:6000,Tags:["sa_justice_fog"]}
execute at @e[tag = sa_justice_fog] run playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance = ..10] ~ ~ ~
execute if entity @s[tag = sa_fog_active] run kill @e[tag = sa_justice_fog]
execute if entity @s[tag = sa_fog_active] run tag @s remove sa_fog_active
execute if entity @e[tag = sa_justice_fog] run tag @s add sa_fog_active

