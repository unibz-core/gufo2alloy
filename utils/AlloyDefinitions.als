sig Resource {} 

sig Property extends Resource 
 {sub_val: Resource -> Resource}

sig Class extends Resource {instances: set Resource}

// List Definition
sig List {} 
sig NonEmptyList extends List {next: List, element: Resource} 
	fact Canonical { 
	no disj p0, p1: List | p0.next = p1.next and p0.element = p1.element 
} 
fun List::first (): Resource {this.element} 
fun List::rest (): List {this.next} 
fun List::addFront (e: Resource): List { 
	{p: List | p.next = this and p.element = e} 
}

// OWL/RDFS Definitions 
fun subClassOf[csup, csub: Class] : Class 
 {csub.instances in csup.instances}

fun disjointWith [c1, c2: Class] : Class {no c1.instances & c2.instances}

fun allValuesFrom 
 [p: Property, c1: Class, c2: Class] : Resource 
 {all r1, r2: Resource | 
 r1 in c1.instances => 
 r2 in r1.(p.sub_val) => 
 r2 in c2.instances}

fun hasValue [p: Property, c1: Class, r: Resource] : Resource 
 {all r1: Resource | r1 in c1.instances => r1.(p.sub_val) = r}

fun maxCardinality [p: Property, c1: Class, N: Int] : Resource 
 {all r1: Resource| r1 in c1.instances <=> 
 # r1.(p.sub_val) <= int N }

fun intersectionOf [clist: List, c1: Class] : Resource 
 {all r: Resource| r in c1.instances <=> 
 all ca: clist.*next.val | r in ca.instances}

fun unionOf [clist: List, c1: Class] : Resource 
 {all r: Resource| r in c1.instances <=> 
 some ca: clist.*next.val| r in ca.instances}

fun subPropertyOf [psup, psub: Property] : Property 
 {psub.sub_val in psup.sub_val}

fun domain [p: Property, c: Class] : Resource 
 {(p.sub_val).Resource in c.instances}

fun inverseOf [p1, p2: Property] : Property {p1.sub_val = ~(p2.sub_val)} 