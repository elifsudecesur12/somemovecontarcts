/*
std::hash
sha2_256 and sha3_256 are available in std::hash.
*/
module my_addrx::Hashingmodule {
    use std::hash;
    use std::bcs;
    use std::debug::print;


    fun Hashfun():vector<u8>{
        let x:vector<u8> = bcs::to_bytes<u64>(&12);
        print(&x);
        let h = hash::sha2_256(x);
        h
    }

    #[test]

    fun test_hashfun(){
        let hf = Hashfun();
        print(&hf);
    }
}