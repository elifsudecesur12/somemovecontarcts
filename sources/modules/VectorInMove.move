/*
* vector<T> is the only primitive collection type provided by Move. 
* vector<T> is a homogenous collection of T's that can grow or shrink by
 pushing/popping values off the "end".
 *vectors cannot be copied unless the element type has copy.
 *vector<u8> literals are used to represent byte and hex strings in move.
*/

module my_addrx::VectorInMove{

    use std::debug::print as p;
    use std::vector;
    use std::string::{utf8};

 public fun vectorinmove(){
    // This line wil create empty vector ,type u64
    let list:vector<u64> = vector::empty<u64>();
     p(&list);
     let i:u64 = 1;
    while(i < 5){
      vector::push_back(&mut list , i);
      i = i + 1;
    };
   // print updated vector
      p(&list);

// create empty vector
     let a= (vector[]: vector<bool>);
     // update empty vector with value
     vector::push_back(&mut a , true);
     // create vector with values
     let b = (vector[0u8, 1u8, 2u8]: vector<u8>);
     // update value
     vector::push_back(&mut b , 12u8);
     // create address type vector with values
     let adds = (vector<address>[@0x42, @0x100, @0x23]: vector<address>);

     
// print all vectors
p(&a);
p(&b);
p(&adds);

// get value at index 2 and print it
let num = *vector::borrow(&list ,2);
p(&num);
// get address at index 1 and print it
let ads = *vector::borrow(&adds ,1);
p(&ads);
let cc = adds;
p(&adds);
p(&cc);

// remove last element from vector address type
vector::pop_back(&mut adds);
p(&adds);

 }  
 
fun vectorUsedAsu8String(){
    let name:vector<u8>;
     name = b"vector is used to represent byte strings in move";
     p(&utf8(name));
}

#[test]
fun test_vertorinmove(){
     vectorinmove();

}
#[test]
fun test_vectorUsedAsu8String(){
     vectorUsedAsu8String();
}

}