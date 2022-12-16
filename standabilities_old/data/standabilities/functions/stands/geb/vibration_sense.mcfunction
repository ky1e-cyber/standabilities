execute as @s[tag = !sa_vib_sense] at @s if block ~ ~-1 ~ #minecraft:sand run tag @s add sa_vib_summon
execute as @s[tag = sa_vib_sense] run tag @s remove sa_vib_sense