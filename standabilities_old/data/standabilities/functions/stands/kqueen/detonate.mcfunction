playsound minecraft:aria.stands.diamond.killerqueen.click ambient @a[distance=..5] ~ ~ ~

execute unless entity @s[nbt={ActiveEffects:[{Id:2b}]}] unless entity @s[nbt={ActiveEffects:[{Id:18b}]}] as @e[tag = sa_kqbomb, distance = ..16] at @s run function standabilities:stands/kqueen/f_exp



execute if predicate standabilities:afternoon as @e[tag = sa_btd_main, distance = ..256] at @s as @a[distance=..16] run function standabilities:stands/kqueen/btd_exp