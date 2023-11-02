/**
*Local variables in Move are lexically (statically) scoped. 
*New variables are introduced with the keyword let

*/

module my_addrx::LocalVaribales{
    use std::debug::print as p;

    fun printLocalVariables(){
        // define local varibales
        let a:u8;
        // value must be assigned before use it
        a =10;
        let c:bool = true;
        let add:address =@my_addrx;

        // for unused variable use " _ " otherwise move compiler will give error
        let _ =12;
        //or 
        let d:u64 =12;
        _ =d;
    // pirnt all local variables
    p(&a); p(&c); p(&add);
    }

    #[test]
    
    fun test_localvaribales(){
        printLocalVariables();
    }
}