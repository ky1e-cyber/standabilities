execute at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..4] ~ ~ ~ 0.4 2
execute at @s positioned ~ ~0.5 ~ run particle minecraft:ash ~ ~ ~ 0.3 0.3 0.3 5 20 force

effect give @s minecraft:invisibility 60 1 true