# update the StringSeed if it has not been filled
# must run as a specific loaded entity in one of the built-in dimensions
execute unless data storage seeder:seed StringSeed run function seeder:commandblock_step1
