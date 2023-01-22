# the tick after the command block which held the "seed" value was created,
# output the command block's data (ie: the seed value) to storage

execute unless data storage seeder:seed StringSeed if block ~1 ~ ~ minecraft:command_block{"Command":"seed","auto":1b} run data modify storage seeder:seed StringSeed set from block ~1 ~ ~ LastOutput
execute if data storage seeder:seed StringSeed run function seeder:commandblock_step3
