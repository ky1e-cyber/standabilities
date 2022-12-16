execute as @a[tag = sa_hcaster] at @s store result score @s sa_hpdistance run locate mansion
execute as @a[tag = sa_hcaster] run tellraw @s ["",{"text":"Mansion is "},{"score":{"name":"@s","objective":"sa_hpdistance"}},{"text":" blocks away."}]

kill @s