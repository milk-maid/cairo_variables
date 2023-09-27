// VARIABLES are immutable and can't be reassigned to 
// ...except with `mut` in front of the let ... e.g 

// use debug::PrintTrait;
// fn main() {
//     let mut x = 5;
//     x.print();
//     x = 6;
//     x.print();
// }

// VARIABLE SHADOWING!!! 
// must be re-assigned with let & the program uses the lastly declared
// just like creating a new variable BUT re-using the same name 
/////////////////////////
// mutable variables & shadowing are same at the low-level... ONLY THAT compiler will not scream if type changes in SHADOWING ::: i.e type can change but we decided to use the same name!!!

// use debug::PrintTrait;
// fn main() {
//     let x = 5;
//     let x = x + 1;
//     {
//         let x = x * 2;
//         'Inner scope x value is:'.print();
//         x.print() // returns 0xc but I expected 12
//     }
//     'Outer scope x value is:'.print();
//     x.print();
// }

// SHADOW INDEPT 
use debug::PrintTrait;

fn main() {
    let x: u64 = 2;
    x.print();
    let x: felt252 = x.into(); // converts x to a felt, type annotation is required.
    x.print()
    
}

// CONSTANTS : the type of the value must be anotated & can ONLY have the global scope!!!
// `mut` keyword cannot be used with constants!!! 
// currently only literal constants are supported!!! 
const ONE_HOUR_IN_SECONDS: u32 = 3600;

// an example code copied from learnweb3
// fn fib(a: felt252, b: felt252, n: felt252) -> felt252 {
//     match n {
//         0 => a,
//         _ => fib(b, a + b, n - 1),
//     }
// }
