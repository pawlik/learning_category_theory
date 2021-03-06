> What kind of order is this

> a) A set of sets with the inclusion relation: 𝐴 is included in 𝐵 if every element of 𝐴 is also an element of 𝐵

- Composition: yes, `A included_in B included_in C => A included_in C` 
- No loops, or `A included_in B && B included_in C => A == B`
- any 2 objects in relation: no `A is not (), and B is not (), and B and A is (), then A and B are not in inclusion relation`

This is a partial order

> b) C++ types with the following subtyping relation: T1 is a sub-type of T2 if a pointer to T1 can be passed to a function that expects a pointer to T2 without triggering a compilation error.

- Composition: yes
- Loops: I think not. 
- any 2 objects in relation: definitely no

This is a partial order.

> 3. Considering that Bool is a set of two values True and False, show that it forms two (set-theoretical) monoids with respect to, re-spectively, operator &&(AND) and ||(OR).

`||`

- associativity: yes
(a || b) || c = a || (b || c)

(we can enumarate)

a | b | c | (a OR b) OR c | a OR (b OR c) |
--|---|---|-------------  | ---|
1 | 1 | 0 | 1             | 1
1 | 0 | 0 | 1             | 1
0 | 1 | 0 | 1             | 1
0 | 0 | 0 | 0             | 0
1 | 1 | 1 | 1             | 1
1 | 0 | 1 | 1             | 1
0 | 1 | 1 | 1             | 1
0 | 0 | 1 | 1             | 1

- neutral element: False

X || False = X 

X | X OR False
-|-
1 | 1 
0 | 0


Similar for `&&`, we can enumarate for associativity, and for neutral element which is True. 

> 4. Represent the Bool monoid with the AND operator as a category: List the morphisms and their rules of composition.

`and_True(x)` is the identity morphism
`and_False(x)` is the same as `x && False`  
`const_False(x)` just returns `False`
`const_True(x)` just returns `True` 

All can be composed (because it's a monoid). 

> 5. Represent addition modulo 3 as a monoid category.

`add_0(x)` identity morphism `x + 0 % 3 == x % 3 == x`
`add_1(x)`, `add_2(x)`, `add_N(x)` (where N is > 0) - infinite number of morphisms

