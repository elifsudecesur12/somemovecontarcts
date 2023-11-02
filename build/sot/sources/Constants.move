/*
 *In Move, constants are declared using the "const" keyword.
 *Constants must start with a capital letter 
 *Constant value cannot be accessed outside its module or script scope.
*/

module my_addrx::Constants{
    use std::debug::print as p;
    /* Constants*/
    const Numb:u64 = 123;
    const B:bool = true;
    const Addrs:address =@my_addrx;
    
    fun printConstants(){
    
       

        p(&Numb); p(&B); p(&Addrs);

    }

    #[test]
    fun test_constants(){
        printConstants();
    }
}