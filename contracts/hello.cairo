%lang starknet
%builtins range_check

const hello = 1000805121215;
const world = 10002315181204;

@view 
func greeting() -> (number_1: felt, number_2: felt):
    return (hello, world);
end

