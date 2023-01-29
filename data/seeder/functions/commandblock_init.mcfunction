execute unless data storage seeder:gamerule commandBlockOutput store result storage seeder:gamerule commandBlockOutput byte 1 run gamerule commandBlockOutput
execute unless data storage seeder:gamerule sendCommandFeedback store result storage seeder:gamerule sendCommandFeedback byte 1 run gamerule sendCommandFeedback
execute if data storage seeder:gamerule commandBlockOutput unless data storage seeder:seed StringSeed run gamerule commandBlockOutput true
execute if data storage seeder:gamerule sendCommandFeedback unless data storage seeder:seed StringSeed run gamerule sendCommandFeedback true

execute unless data storage seeder:seed StringSeed in minecraft:overworld if loaded ~ ~ ~ if block ~ -64 ~ minecraft:command_block{"Command":"seed","auto":1b} run data modify storage seeder:seed StringSeed set from block ~ -64 ~ LastOutput
execute unless data storage seeder:seed StringSeed in minecraft:overworld if loaded ~ ~ ~ if block ~ -64 ~ minecraft:bedrock run setblock ~ -64 ~ minecraft:command_block{"Command":"seed","auto":1b} replace
execute if data storage seeder:seed StringSeed in minecraft:overworld if loaded ~ ~ ~ if block ~ -64 ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~ -64 ~ minecraft:bedrock replace
execute if data storage seeder:seed StringSeed if data storage seeder:gamerule {commandBlockOutput:0b} run gamerule commandBlockOutput false
execute if data storage seeder:seed StringSeed if data storage seeder:gamerule {sendCommandFeedback:0b} run gamerule sendCommandFeedback false
execute if data storage seeder:seed StringSeed run scoreboard players set #seeder_global seeder_init 1
execute if score #seeder_global seeder_init matches 0 if score #seeder_global seeder_init_cool matches 1.. run scoreboard players remove #seeder_global seeder_init_cool 1
execute if score #seeder_global seeder_init matches 0 if score #seeder_global seeder_init_cool matches 0 run scoreboard players set #seeder_global seeder_init -1
