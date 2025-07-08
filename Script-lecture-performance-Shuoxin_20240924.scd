/*

Checklist
1. 打开一个蓝牙音箱 - “等待连接”
2. 从电脑上连接 BS-01 - “连接成功”
supercollider -> bluetooth speaker
input device不可以选蓝牙音箱，因为蓝牙音箱的sample rate是8000
*/

ServerOptions.devices;
s.options.outDevice="BS-01";
s.options.inDevice="Built-in Microph";
s.reboot;

/*
3. SuperCollider连接蓝牙
4. 打开另一个蓝牙音箱 - “配对成功”
5. 执行Netzwerksetup_Shuoxin.scd
*/



//zuerst testen: CHECKLISTE

//#1 habe ich den richtigen PORT
NetAddr.langPort // sollte 57120 sein
//wenn es nicht 57120 ist, computer neustarten

//#2 bin ich im gleichen netzwerk wie alle anderen?
//wenn nicht, ins netzwerk wechseln


(
// sender
// broadcast IP anschalten
NetAddr.broadcastFlag_(true);

n = NetAddr("255.255.255.255", 57120); // alle

// empfängy
OSCdef(\x, { |msg|
	 // msg[0] ist immer der name
	// msg[1] ist das erste argument
	(msg[1] ++ " ").post // <-- hier lässt sich beliebiges schreiben

}, "/shuoxin").permanent_(true);
);







/*
Script, Lecture Performance Graz SSSS 2024




INTRO

Joseph starts the motors.
Shuoxin and Joseph observe the rotation and the noise.

Shuoxin (Jacques Lacan, Seminar III)
"„Begin by thinking you don’t understand. Start from the idea of a fundamental misunderstanding. This is an initial attitude, failing which there is really no reason why you should not understand anything and everything.“


(The motors keep running at the background.)


*/




(//检查post window 字体大小
"torus as a product of s¹×s¹"
"\n"
"\n"
)




/*

MOVEMENT I
Shuoxin + Joseph (Shuoxin Tan, Lucas Piessevaux, Chat history)

Shuoxin
hehe, joseph and i tried something today.

*/

(
"s¹×s¹ represents the Cartesian product of two circle[1], which is topologically equivalent to a torus."
"\n"
"\n"
"[1] s¹: 1-dimensional sphere with 1 hole."
"\n"
"\n"
)

/*

Shuoxin
i tried to interprete "S1 × S1 represents the Cartesian product of two circles, which is topologically equivalent to a torus."

Joseph
genau!!!!

Shuoxin
and in supercollider we can realise like this:

*/


(
"e.g.: notation of Cartesian product of two sets A and B"
"\n"
"A × B = {(a, b) | a ∈ A, b ∈ B}"
"\n"
"\n"
)


(
"a=[1,2,3]".postln;
a=[1,2,3];
"\n".post;


"b=['x','y','z']".postln;
b=['x','y','z'];
"\n".post;


"[a,b].allTuples;".postln;
"\n".post;
[a,b].allTuples;

//"\n".post;
)


/*
Shuoxin
allTuples means make all the ordered pairs of elements in the sets.
*/



//~wannaBeATorus
(
"\n".post;
"\n".post;
"~wannaBeATorus = [[sin(1),sin(2),sin(3)],[cos(1),cos(2),cos(3)]].allTuples".postln;
"\n".post;
~wannaBeATorus = [[sin(1),sin(2),sin(3)],[cos(1),cos(2),cos(3)]].allTuples;
)

/*

Shuoxin
it is just rough try-out.

Joseph
what's sin(n) got to do with the torus?

Shuoxin
we thought of circle
and we tried sine function

Joseph
ach wait i see now

alternatively, perhaps easier that drawing circles and sines, a torus is also a square where opposite boundaries are identified in the same direction

that seems easier to code

*/


// Shuoxin
// stretch a torus (sinus version)

(
"\n"
"stretch a torus (sinus version)"
"\n".post;
"\n".post;
)

(
SynthDef(\sin, {
 |gate = 1, freq|
 var env, sig;
 env = EnvGen.ar(Env.perc(0.001, 0.16), gate, doneAction: Done.freeSelf);
	sig = SinOsc.ar(freq) * env;
 Out.ar(0, sig * 0.1)
}).add
)

// sin and cos are just one way to demonstrate circle analogy.

~freqRange = 600;
(
var stretch = 1/2pi;
x=0;
Pbindef(\torusSin,
	\instrument, \sin,
	\count, Pfunc({x = x + stretch}),
	\freq, Pfunc({~wannBeATorus = [[sin(x+1), sin(x+2)], [cos(x-1), cos(x-2)]].allTuples}) * Pfunc({~freqRange}),
	\dur, stretch
).play;
)


Pbindef(\torusSin).clear;


/*

Shuoxin
this is the sonified version till today. it sounds great.

we interprete "stretch" to the duration speed.

Joseph
~wannBeATorus is not the cartesian product of circles

but alltuples does the right thing

Shuoxin
yes, without geometrical imagination is actually easier.

Joseph
genau

Shuoxin
i love algebra, hehe

*/



" i love algebra"



/*

Joseph
i agree


(Joseph send the following code via netzwerk.)

~density=40;
~circle = Array.fill(~density, {arg n; Array.with(cos(2pi*n/~density),sin(2pi*n/~density))});
~torus = [~circle, ~circle].allTuples;

Joseph
try this btw


Shuoxin
why 2pi*n/~density is "circle"? (read: 2 pi times n divided by "density")


it is the whole scale of a circle, and divided by "density" ?


and then you firstly select 40 point from the circle, then make cartesian product?


Joseph
yes everything interesting happens before the cartesian product.
basically i am writing the circle as pairs of points (cos(t),sin(t)) as t ranges from 0 to 2pi.


(Joseph send (cos(t),sin(t),cos(s),sin(s)) )


or discretely, if N is some density then t = 2 pi n/N for n going from 0 to N,
increasing N increases the "resolution“. i.e. the continuous thing.
that's the tricky part, if you want to write a point on a circle in terms of its coordinates, you already have two coordinates, so on a torus it'll be four coordinates.

i.e. (cos(t),sin(t),cos(s),sin(s)) as t and s range from 0 to 2pi.


Shuoxin
i'm trying to understand this point.


Joseph
it's because we view the circle as sitting inside the cartesian product of R with itself,
that's not necessary or natural but it's the first recognisable way to sonify a circle i think.


Shuoxin
R means ring?

or real number?


Joseph
the ring of real numbers


(Joseph sends :D)


Shuoxin
so each point need 2 coordinates. ok.

Joseph
it doesn't *need it* but that's one option

(Joseph sends
[0, 2pi] / 0~2pi = [0,1]/0~1 = {(cos(2pi t),sin(2pi t))| t in [0,1]})

all the same :3

but i think the last one is probably what you want to use for sonification ...


Shuoxin
i have to digest your suggestion. thank you hehe, you're the best~


*/






/*


Movement II
Shuoxin + Joseph (Shuoxin Tan, Joseph Baader, PointSurfaceTwist)

…Shuoxin coding live with our torus synthesizer…
…Joseph controlling the speed of the motors…


*/


//Shuoxin (Ndef(\torus) //high)


(//high
Ndef(\torus).fadeTime = 60;
Ndef(\torus, {
	|stretch = 142, shift = 1300, trigRate = 16| //16,12'
	var dens, cir, tor, trig, env, frq, sig;

	//torus as a product s¹×s¹ of two circles
	dens = 3; //5,3, should be at least 3 to get out a torus (3 results in a torus, constructed out of 2 triangles)
	cir = Array.fill(dens, {|n| Array.with(cos(2pi * n / dens), sin(2pi * n / dens))});
	tor = [cir*1, cir*1].allTuples; // stretching the circles of which we will calculate the torus

	//sonification the torus
	trig = Impulse.ar(trigRate);

	env = EnvGen.ar(Env.perc(0.014, 0.037), trig);
	frq = Demand.ar(trig, 0, Dseq(tor, inf));

	sig = SinOsc.ar(frq * stretch + shift).sum * env;
	// sig = Pan2.ar(sig, -1);
	sig * 0.1;
}).play;
)


/*

Joseph (Shuoxin Tan, Joseph Baader, PointSurfaceTwist.)

A moving point turns into a line, a moving line turns into a plane, a moving plane into a volume… what about moving several points? How can we perceive this transformation from a discrete to a continuous family of sound masses? Stockhausen demonstrated what happens if one speeds up the repetitive point-like signal of an impulse generator, and by this crossing the threshold between individuality and continuity bounds.

*/



//Shuoxin (Ndef(\torus) //a lot of movement)

(//a lot of movement
Ndef(\torus, {

	var dens, cir, tor, trig, env, frq, sig;

	//torus as a product s¹×s¹ of two circles
	dens = 20;
	cir = Array.fill(dens, {|n| Array.with(cos(2pi * n / dens), sin(2pi * n / dens))});
	tor = [cir*1, cir*1].allTuples;

	//sonification the torus
	trig = Impulse.ar(1); //1, 100, 440,
	env = EnvGen.ar(Env.perc(0.1, 0.02), trig);
	frq = Demand.ar(trig, 0, Dseq(tor, inf));
	sig = SinOsc.ar((frq * 500 + 600)).sum * env;
	// sig = Pan2.ar(sig, 0);
	sig * 0.1;
}).play;
)


/*

Shuoxin (Bourbaki, The Architecture of Mathematics)

4. The great types of structures. S.226
The relations which form the starting point for the definition of a structure can be of very different characters. The one which occurs in the group structure is what one calls a „law of composition,“ i.e., a relation between three elements which determines the thrid uniquely as a function of the first two. When the relations which enter the definition of a structure are „laws of composition,“ the corresponding structure is called an algebraic structure (for example, a field structure is defined by two laws of composition, with suitable axioms: the addition and mulplicaiton of real numbers define a field structure on the set of these numbers).

*/


//Shuoxin (Ndef(\torus) //joyful)


(//joyful
Ndef(\torus, {

	var dens, cir, tor, trig, env, frq, sig;

	//torus as a product s¹×s¹ of two circles
	dens = 10; //10,3,4
	cir = Array.fill(dens, {|n| Array.with(cos(2pi * n / dens), sin(2pi * n / dens))});
	tor = [cir*1, cir*1].allTuples;

	//sonification the torus
	trig = Impulse.ar(100); //1, 100, 440,
	env = EnvGen.ar(Env.perc(0.1, 0.02), trig);
	frq = Demand.ar(trig, 0, Dseq(tor, inf));
	sig = SinOsc.ar((frq * 500 + 600)).sum * env;
	// sig = Pan2.ar(sig, 0);
	sig * 0.1;
}).play;
)


/*

Joseph (K. Stockhausen, …Wie die Zeit vergeht…)

When intervals between sound events are so great that the listener perceives each individual sound event as separate from the next, we call this a 'point-like' structure. If the sounds follow one another more quickly, so that the listener begins to associate groups of events, we call this a 'group-form'.

When the sounds are so close together that individual events can no longer be perceived and instead are heard as a continuum, we speak of a 'mass structure'.

*/


//Shuoxin (Ndef(\torus) //drone phase) during Joseph reading.

(// drone phase
Ndef(\torus, {

	var dens, cir, tor, trig, env, frq, sig;

	//torus as a product s¹×s¹ of two circles
	dens = 100;
	cir = Array.fill(dens, {|n| Array.with(cos(2pi * n / dens), sin(2pi * n / dens))});
	tor = [cir*0.01, cir*10].allTuples; // stretching the circles of which we will calculate the tourus

	//sonification the torus
	trig = Impulse.ar(LFNoise1.ar(1).range(7000, 9000));
	env = EnvGen.ar(Env.perc(0.5, 0.5), trig);
	frq = Demand.ar(trig, 0, Dseq(tor, inf));
	sig = SinOsc.ar((frq * 188 + 500)).sum * env;
	// sig = Pan2.ar(sig, -1);
	sig * 0.1;
}).play;
)



/*


OUTRO

Shuoxin + Joseph (Bourbaki, The Architecture of Mathematics)

*/



//Shuoxin (Ndef(\torus) //ending)


(//ending
Ndef(\torus).fadeTime = 60;
Ndef(\torus, {

	var dens, cir, tor, trig, env, frq, sig;

	//torus as a product s¹×s¹ of two circles
	dens = 40;
	cir = Array.fill(dens, {|n| Array.with(cos(2pi * n / dens), sin(2pi * n / dens))});
	tor = [cir*1, cir*1].allTuples;

	//sonification the torus
	trig = Impulse.ar(1); //1, 100, 440,
	env = EnvGen.ar(Env.perc(0.1, 0.02), trig);
	frq = Demand.ar(trig, 0, Dseq(tor, inf));
	sig = SinOsc.ar((frq * 500 + 600)).sum * env;
	// sig = Pan2.ar(sig, 0);
	sig * 0.1;
}).play;
)


/*
(start to read when someone perceives the change of the sound)

From the axiomatic point of view, mathematics appears thus as a storehouse of abstract forms - the mathematical structures; and it so happens - without our knowing why - that certain aspects of empirical reality fit themselves into these forms, as if through a kind of preadaptation. Of course, it can not be denied that most of these forms had originally a very definite intuitive content; but, it is exactly by deliberately throwing out this content, that it has been possible to give these forms all the power which they were capable of displaying and to prepare them for new interpretations and for the development of their full power.


*/






/*
credits
*/



(
Tdef(\credits, {
	10.0.wait;
(
"\n"
"Interpreters"
"\n"
"Shuoxin Tan, Joseph Baader"
"\n"
).post;
10.0.wait;
(
"\n"
"Support for realisation"
"\n"
"Lucas Piessevaux (Mathematics)"
"\n"
"Shaotong He (Speaker brackets design and 3D printing)"
"\n"
).post;
10.0.wait;
(
"\n"
"Quotations"
"\n"
"Jacques Lacan, Seminar III."
"\n"
"Shuoxin Tan, Lucas Piessevaux, Chat history."
"\n"
"Bourbaki, The Architecture of Mathematics."
"\n"
"K. Stockhausen, …Wie die Zeit vergeht…"
"\n"
"Shuoxin Tan, Joseph Baader, PointSurfaceTwist."
"\n"
).post;
}).play;
)


/*

...sound fade out...
...motors stop...

*/

Ndef(\torus).clear(30);
















[["a", "b", "c"],[1,2,3]].allTuples;
[['a', 'b', 'c'],["a", "b", "c"]].allTuples;

Pseq((1,3..21).mirror,inf).asStream.nextN(21);

\a.class //symbol
'a'.class //symbol
"a".class //string




