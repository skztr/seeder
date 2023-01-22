# the tick after the command block was created, clean it up, and check if it ran
execute if score #seeder_global seeder_init_step matches 3 run scoreboard players set #seeder_global seeder_init_cool 0
execute if score #seeder_global seeder_init_cool matches 0 as @a at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] if block ~ -64 ~ minecraft:command_block{"Command":"scoreboard players set #seeder_global seeder_init_step 3","auto":1b} run setblock ~ -64 ~ minecraft:bedrock
execute if score #seeder_global seeder_init_cool matches 0 as @a at @s if entity @s[nbt={Dimension:"minecraft:the_nether"}] if block ~ 0 ~ minecraft:command_block{"Command":"scoreboard players set #seeder_global seeder_init_step 3","auto":1b} run setblock ~ 0 ~ minecraft:bedrock
execute if score #seeder_global seeder_init_cool matches 0 as @a at @s if entity @s[nbt={Dimension:"minecraft:the_end"}] if block ~ 0 ~ minecraft:command_block{"Command":"scoreboard players set #seeder_global seeder_init_step 3","auto":1b} run setblock ~ 0 ~ minecraft:air

execute if score #seeder_global seeder_init_cool matches 0 if score #seeder_global seeder_init_step matches 2 run scoreboard players set #seeder_global seeder_init -1
execute if score #seeder_global seeder_init_cool matches 1.. run scoreboard players remove #seeder_global seeder_init_cool 1
execute if score #seeder_global seeder_init_step matches 3 run scoreboard players set #seeder_global seeder_init 1
