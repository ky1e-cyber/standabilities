execute as @a[tag = sa_hcaster] at @s store result score @s sa_hpdistance run locate stronghold
execute as @a[tag = sa_hcaster] run tellraw @s ["",{"text":"Stronghold is "},{"score":{"name":"@s","objective":"sa_hpdistance"}},{"text":" blocks away."}]

kill @s