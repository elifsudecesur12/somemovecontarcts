/*
Move provides two types of references:
immutable & - cannot modify underlying values (or any of its fields).
mutable &mut - allow for modifications via a write through that reference.
*/
module my_addrx::ReferencesInMove {

    use std::debug::print;


    struct A has copy, drop {
        b: B
    }
    struct B  has store ,copy, drop {
        value:u64
    }

    //A reference expression with multiple fields works as long as both structs are in the same module

    // input arg is immutable type
    fun ref_fun(a:&A):u64 {
     a.b.value
    
    }
    // input Arg is mutable type
    fun update(a: &mut A , newvalue:u64)
    {
        // update value 
        a.b.value = newvalue
    }


    #[test]

    fun test_ref(){
        let firstvalue = B{
            value:2
        };

        let second_value = A{
            b: firstvalue
        };

        // call function here

        let num = ref_fun(&second_value);
        print(&num);
        // pass mutable reference and value
        update(&mut second_value ,33);
          let num = ref_fun(&second_value);
        print(&num);

    }
}