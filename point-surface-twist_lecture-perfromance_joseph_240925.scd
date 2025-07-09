// point surface twist
// lecture performance graz, 26.10.24



// check list:
/*
* speakers charged?
* text there?
* motors connected and working?
* speakers connected and working?
* network test
*/

SerialPort.listDevices

// prepare
(
p = SerialPort(
	"/dev/ttyACM0", // your arduino's nameL
	baudrate: 9600, // must match arduino rate
	crtscts: true
);
)

(
// sender
// broadcast IP anschalten
NetAddr.broadcastFlag_(true);

n = NetAddr("255.255.255.255", 57120); // alle

// empfänger
OSCdef(\x, { |msg|
	var paramName = msg[1];
	var value = msg[2];
	msg.postln;
	Ndef(\torus).set(paramName, value);
}, "/joseph");
)

p.putAll("X".ascii) //--> STOP booth
p.putAll("Y".ascii) // --> play both



///////////////////////////////////////////// Lecture Performance //////////////////////
//////////////////////////////

// Start both motors
(
p.putAll("A300".ascii);  // A -> Motor 1, B --> Motor 2
p.putAll("B260".ascii);
);

p.putAll("Y".ascii) // --> play both

/*
SHUOXIN:
„Begin by thinking you don’t understand. Start from the idea of a fundamental misunderstanding. This is an initial attitude, failing which there is really no reason why you should not understand anything and everything.“
*/

// accelerate speaker A and listen
(
r= Routine({
100.do{|i|
		var char, val;
		val = i.fold(0, 100).linexp(0, 100, 300, 100).asInteger.postln;
		p.putAll(("A" ++ val).asString.ascii);
		0.3.wait;
	};
}).play
)

(
k= Routine({
100.do{|i|
		var char, val;
		val = i.fold(0, 100).linexp(0, 100, 300, 100).asInteger.postln;
		p.putAll(("B" ++ val).asString.ascii);
		0.1.wait;
	};
}).play
)

(
j= Routine({
100.do{|i|
		var char, val;
		val = i.fold(0, 100).linexp(0, 100, 99, 40).asInteger.postln;
		p.putAll(("B0" ++ val).asString.ascii);
		0.2.wait;
	};
}).play
)


/*
SHUOXIN
hehe, joseph and i tried something today.
i tried to interprete "S1 × S1 represents the Cartesian product of two circles, which is topologically equivalent to a torus.


JOSEPH
genau!!!!


SHUOXIN
and in supercollider we can realise like this:

[[1, 2, 3], [4, 5, 6]].allTuples;

allTuples means make all the ordered pairs of elements in the sets.

~wannBeATorus = [[sin(1), sin(2), sin(3)], [cos(1), cos(2), cos(3)]].allTuples

-> [ [ 0.8414709848079, 0.54030230586814 ], [ 0.8414709848079, -0.41614683654714 ], [ 0.8414709848079, -0.98999249660045 ], [ 0.90929742682568, 0.54030230586814 ], [ 0.90929742682568, -0.41614683654714 ], [ 0.90929742682568, -0.98999249660045 ], [ 0.14112000805987, 0.54030230586814 ], [ 0.14112000805987, -0.41614683654714 ], [ 0.14112000805987, -0.98999249660045 ] ]

it is just rough try-out


JOSEPH
what's sin(n) got to do with the torus?


SHUOXIN
we thought of circle
and we tried sine function


JOSEPH
ach wait i see now
alternatively, perhaps easier than drawing circles and sines, a torus is also a square where opposite boundaries are identified in the same direction
that seems easier to code


SHUOXIN
this is the sonified version till today. it sounds great.
we interprete "stretch" to the duration speed.

*/

(
p.putAll("A006".ascii);  // A -> Motor 1, B --> Motor 2
p.putAll("B001".ascii);
);



/*
JOSEPH
~wannBeATorus is not the cartesian product of circles
*/


// some crazy motor motion?
(
r= Routine({
	80.do{|i|
		var char, val;
		val = (1..9).choose;
		p.putAll(("A00" ++ val).asString.ascii);

		// while { char = p.next; char.notNil } { post(char.asAscii) };
		[0.1, 0.24, 0.04, 0.09, 0.03].choose.wait;
	};
}).play;


k= Routine({
	80.do{|i|
		var char, val;
		val = (1..9).choose;
		p.putAll(("B00" ++ val).asString.ascii);

		// while { char = p.next; char.notNil } { post(char.asAscii) };
		[0.1, 0.24, 0.04, 0.09, 0.03].choose.wait;
	};
}).play;
)

(
p.putAll("A120".ascii);  // A -> Motor 1, B --> Motor 2
p.putAll("B200".ascii);
);

/*
but alltuples does the right thing


SHUOXIN
yes, without geometrical imagination is actually easier.


JOSEPH
genau


SHUOXIN
i love algebra, hehe


JOSEPH
i agree
by the way, try this:
*/

(
n.sendMsg("/shuoxin", "~density=40;
~circle = Array.fill(~density, {arg n; Array.with(cos(2pi*n/~density),sin(2pi*n/~density))});
~torus = [~circle, ~circle].allTuples;
");
)

/*
SHUOXIN
why 2pi*n/~density is "circle"?
it is the whole scale of a circle, and divided by "density" ?
and then you firstly select 40 point from the circle, then make cartesian product?


JOSEPH
yes everything interesting happens before the cartesian product.
basically i am writing the circle as pairs of points (cos(t),sin(t)) as t ranges from 0 to 2pi.
*/
(
n.sendMsg("/shuoxin", "

i.e. (cos(t),sin(t),cos(s),sin(s)) as t and s range from 0 to 2pi.");
)

/*
or discretely, if N is some density then t = 2 pi n/N for n going from 0 to N,
increasing N increases the "resolution“. i.e. the continuous thing.
that's the tricky part, if you want to write a point on a circle in terms of its coordinates, you already have two coordinates, so on a torus it'll be four coordinates.
*/



/*
SHUOXIN
i'm trying to understand this point.


JOSEPH
it's because we view the circle as sitting inside the cartesian product of R with itself,
that's not necessary or natural but it's the first recognisable way to sonify a circle i think.


SHUOXIN
R means ring?
or real number?


JOSEPH
the ring of real numbers
*/

(
n.sendMsg("/shuoxin",

	":D");
)

/*
SHUOXIN
so each point need 2 coordinates. ok.


JOSEPH
it doesn't *need it* but that's one option
*/

(
n.sendMsg("/shuoxin", "

[0, 2pi] / 0~2pi = [0,1]/0~1 = {(cos(2pi t),sin(2pi t))| t in [0,1]}");
)

/*
JOSEPH
those are all the same :3
but i think the last one is probably what you want to use for sonification ...


SHUOXIN
i have to digest your suggestion. thank you hehe, you're the best~
*/




// SHUOXIN: fade in: high pitched pattern
// JOSEPH: slow down motors (?), then speed them up
(
p.putAll("A099".ascii);
p.putAll("B099".ascii);
);

(
r= Routine({
100.do{|i|
		var char, val;
		val = i.fold(0, 100).linexp(0, 100, 99, 10).asInteger.postln;
		p.putAll(("A0" ++ val).asString.ascii);
		0.3.wait;
	};
}).play
)

(
r= Routine({
100.do{|i|
		var char, val;
		val = i.fold(0, 100).linexp(0, 100, 99, 10).asInteger.postln;
		p.putAll(("B0" ++ val).asString.ascii);
		0.3.wait;
	};
}).play
)




/*
JOSEPH
A moving point turns into a line, a moving line turns into a plane, a moving plane into a volume… what about moving several points? How can we perceive this transformation from a discrete to a continuous family of sound masses? Stockhausen demonstrated what happens if one speeds up the repetitive point-like signal of an impulse generator, and by this crossing the threshold between individuality and continuity bounds.
*/

// JOSEPH:
p.putAll("B009".ascii); // "characters" (bourbaki)


// SHUOXIN: a lot of motion torus


/* SHUOXIN:
The great types of structures.
The relations which form the starting point for the definition of a structure can be of very different characters.
*/

// JOSEPH:
p.putAll("B008".ascii); // "characters" (bourbaki)

/*
SHUOXIN
The one which occurs in the group structure is what one calls a „law of composition,“ i.e., a relation between three elements which determines the thrid uniquely as a function of the first two. When the relations which enter the definition of a structure are „laws of composition,“ the corresponding structure is called an algebraic structure (for example, a field structure is defined by two laws of composition, with suitable axioms: the addition and mulplicaiton of real numbers define a field structure on the set of these numbers).
*/


// SHUOXIN: start joyful synth

/*
JOSEPH
When intervals between sound events are so great that the listener perceives each individual sound event as separate from the next, we call this a 'point-like' structure. If the sounds follow one another more quickly, so that the listener begins to associate groups of events, we call this a 'group-form'. When the sounds are so close together that individual events can no longer be perceived and instead are heard as a continuum, we speak of a 'mass structure'.
*/


// JOSEPH (just after Stockhausen)
(
p.putAll("A004".ascii);
p.putAll("B003".ascii);
)




/*
SHUOXIN:
Both a torus and a Möbius strip have a single continuous surface. A Möbius strip is a non-orientable surface with only one continuous side. While the torus (genus 1 surface)1 is a surface with orientation, it has an inside and an outside when embedded in 3-dimensional space. If you start drawing a line on one side of a Möbius strip and continue along the strip, you will eventually return to the starting point having covered both "sides" without lifting your pen. The key differences lie in their topological properties and in their orientability.
By studying their topological properties, we may be able to explore new approaches to sound synthesis. To start with, by comparatively sonify certain properties, we may create auditory experiences and render perceptible these topological characteristics of the torus and Möbius strip through sound.




JOSEPH:
Our sonic speculation is a topological one. How can we stretch, shift and bend the sound without losing its character? Like a torus or a rubber band.
A topological space which reflects many of our ideas on sound synthesis is the transformation from the torus to the Moebius strip.
The points (p,q) are points on two circles, and it is the movement of two circles that gives you a surface called torus, which is a closed structure like a donut or bagel with a hollow centre. If we cut along the surface of this torus, along a half twisted line which is rotated by 180 degrees, we get 2 joint Moebius strips. This transformation puts an orientable surface into a non-orientable one.
A Moebius strip has only one side, which somehow contradicts intuition. Such counter-intuitive processes offer an insight into speculative thinking and practice.
*/



// SHUOXIN: starts last synth transition
// JOSEPH: start in sync with shuoxin before last bourbaki



// SHUOXIN, JOSEPH: wait and listen until the new sound is hearable, then:
/*From the axiomatic point of view, mathematics appears thus as a storehouse of abstract forms - the mathematical structures; and it so happens - without our knowing why - that certain aspects of empirical reality fit themselves into these forms, as if through a kind of preadaptation. Of course, it can not be denied that most of these forms had originally a very definite intuitive content; but, it is exactly by deliberately throwing out this content, that it has been possible to give these forms all the power which they were capable of displaying and to prepare them for new interpretations and for the development of their full power.
*/



(
r= Routine({
100.do{|i|
		var char, val;
		val = i.fold(0, 100).linexp(0, 100, 10, 60).asInteger.postln;
		p.putAll(("A0" ++ val).asString.ascii);
		p.putAll(("B0" ++ (val+1)).asString.ascii);
		(1).wait;
	};
}).play
)



p.putAll("X".ascii) //--> STOP booth

// ENDE







