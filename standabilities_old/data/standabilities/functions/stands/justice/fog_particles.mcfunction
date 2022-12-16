summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["sa_fog_particle"]}
spreadplayers ~ ~ 3 10 false @e[sort=nearest,limit=1,tag=sa_fog_particle]
execute at @e[tag = sa_fog_particle] run particle minecraft:cloud ~ ~ ~ 1 1 1 0 10 normal
kill @e[tag = sa_fog_particle]