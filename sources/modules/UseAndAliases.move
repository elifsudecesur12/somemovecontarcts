/*
The use syntax can be used to create aliases to members in other modules.
 use can be used to create aliases that last either for the entire module, 
 or for a given expression block scope
*/
module my_addrx::UseAndAliases{
    
    // "use" import vector module from std library
    use std::vector::{empty ,push_back};
   // "p" is use as aliases for print
   use std::debug::print as p;

    public fun exemple():vector<u64>{
        let v = empty();
        push_back(&mut v ,23);
        push_back(&mut v ,2);
         push_back(&mut v ,222);
        return v
    }

    #[test]

    fun test_exemple(){
        let n = exemple();
        p(&n);
    }
}