execute at @s as @e[distance = ..1, type=minecraft:item] if entity @s[nbt={Item:{id:"minecraft:ender_eye"}}] run function standabilities:stands/hpurple/craft/stronghold
execute at @s as @e[distance = ..1, type=minecraft:item] if entity @s[nbt = {Item:{id:"minecraft:white_banner", tag:{display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}}] run function standabilities:stands/hpurple/craft/mansion
playsound minecraft:entity.generic.burn ambient @a[distance = ..5] ~ ~ ~ 1 1.5

kill @s

