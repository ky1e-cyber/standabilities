playsound minecraft:aria.stands.diamond.killerqueen.click ambient @a[distance=..5] ~ ~ ~

execute unless entity @s[nbt={ActiveEffects:[{Id:2b}]}] unless entity @s[nbt={ActiveEffects:[{Id:18b}]}] as @e[tag = sa_kqbomb, distance = ..16, sort = nearest, limit = 1] at @s run function standabilities:stands/kqueen/f_exp