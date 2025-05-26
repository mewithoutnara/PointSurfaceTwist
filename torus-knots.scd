// Torus knots

// If we follow a path on the torus that is looping through the hole q times ("minor circle") and revolves p times ("major circle") before joining its end and if p and q are relatively prime, we get what is called a torus knot.

// We can implement p and q in the Torus equation like this:

x = (~c + (~a * cos(~v * ~q))) * cos(~u * ~p);
y = (~c + (~a * cos(~v * ~q))) * sin(~u * ~p);
z = ~a * sin(~v * ~q);
[x, y, z];

// where ~c is still the center (major radius) and ~a the axis (minor radius). ~p and ~q must be both integers and ~u = ~v. As ~u = ~v, we replace ~u and ~v with ~phi:

(
~c = 1; // center (major radius) --> radius circle 1
~a = 0.5; // axis (minor radius) --> radius circle 2
~phi = 0; // phi ∈ [0, 2pi)
~p = 2; // p ∈ ℤ
~q = 3; // q ∈ ℤ

x = (~c + (~a * cos(~phi * ~q))) * cos(~phi * ~p);
y = (~c + (~a * cos(~phi * ~q))) * sin(~phi * ~p);
z = ~a * sin(~phi * ~q);
[x, y, z];
)

// This function can be again played and scoped with a SinOsc:

(
Ndef(\torusKnot, {
	|c = 1, a = 0.5, p = 4, q = 5|
	var x, y, z, sig;

	x = (c + (a * SinOsc.ar(q * 100, 1.5))) * SinOsc.ar(p * 100, 1.5);
	y = (c + (a * SinOsc.ar(q * 100, 1.5))) * SinOsc.ar(p * 100);
	z =  a * SinOsc.ar(q * 100);
	sig = [x + (z * 0.5), y - (z * 0.5)];
	// sig = [x, y]; // 2 dimentional, "looking from above"
	sig * 0.1;
}).play
)

s.scope; // use x, y scope

// We can calculate Torus knots by using the greatest common divisor of p and q (as p and q relatively prime) and adding them into a list:

(
k = [(2..4), (2..5)].allTuples; // define range of p and q; must be > 2
~knots = Array.new(k.size);
k.collect({|x|
	var cs;
	if(x[0].gcd(x[1]) == 1, {  // checking for greatest common divisor
		cs = [x[0]-1 * x[1], x[1]-1 * x[0]].minItem; // calculate amount of crossings i.g. knots
		~knots.add([x, cs]);
	})
});

// sorting knots by amount of crossings
a = ~knots.flop;
b = a[a.size-1];
~csSorted = b.order.collect({|x| ~knots[x]});
)

// why there are some nils, but they don't appear in ~knots?


// This list currently contains duplicates as a Torus knot (p, q) is equivalent to a Torus knot (q, p). However, as (p, q) and (q, p) return different frequency relations, we choose to keep them due to musical reasons.

// accessing:
~knots[4]; // Torus knot at index 4
a.[a.size-1]; // get all crossings
~knots[a.[a.size-1].findAll([3])]; // returns all knots with 3 crossings


// playing the knots:
(freq: ~knots.choose[0] * 30).play; // playing a random knot with default synth

// sonifying a (2, 3) knot:
(
Ndef(\torusKnot, {
	|c = 1, a = 0.5, p = 2, q = 3, bFreq = 50|
	var x, y, z, sig;

	x = (c + (a * SinOsc.ar(q * bFreq, 1.5))) * SinOsc.ar(p * bFreq, 1.5);
	y = (c + (a * SinOsc.ar(q * bFreq, 1.5))) * SinOsc.ar(p * bFreq);
	z =  a * SinOsc.ar(q * bFreq);
	// sig = [x + (z * 0.5), y - (z * 0.5)];
	sig = [x, y]; // 2 dimentional, "looking from above"
	sig * 0.1;
}).play
)


// sonifying the list of knots:
(
Routine({
	var i = 0;
	~knots.do({
		// ~selected = ~knots[i]; // play knots after indices
		// ~selected = ~knots.choose; // play knots in random order
		~selected = ~csSorted[i]; // play knots by increasing crossings
		~selected.postln;
		Ndef(\torusKnot).set(\p, ~selected[0][0], \q, ~selected[0][1]);
		i = i +1;

		1.wait;
	})
}).play
)

s.scope;

// In a further exploration we would like to build a musical scale, based on the list of Torus knots.


// The list of knots contains two kind of data, which we are interested in for sonification: the relation of p and q and the amount of crossings a knot contains. As the relation of p and q can be regarded as frequency relations i.e. intervals, we interpret the list of Torus knots as a musical scale. As shown above, playing the list by mapping p and q directly to frequencies, we get an list of intervals, quite similar to the harmonic scale. We will know construct a scale based on these relations, by a similar process used in just intonation tuning. --> ?

// get relations and sort them
~scale = ~knots.collect({|x| x[0][0] / x[0][1]}).sort

