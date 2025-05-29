---
weight: 7
title: Shuoxin and Joseph
bookToC: true
bookCollapseSection: true
---

# Abstract

Our exploration is rooted in the convergence between theoretical speculation and practical experimentation within sound synthesis. Drawing inspiration from Karlheinz Stockhausen's insights into auditory perception, particularly the transformative effects of manipulating point-like signals, we explore properties of specific topological structures. In particular, we are interested in the topological composition of the torus and its de-compositional transformation into the Moebius strip. Through our experimentation with SuperCollider, we aim to understand whether the intrinsic qualities of these structures can be elucidated through sound synthesis, while we also explore the extrinsic factors that influence their manifestation. Furthermore, we ask whether the certain contradictions and tensions inherent in topological properties can be perceived through acoustics and spatialization. This in turn would allow us to bridge the realms of the internal and the external in explorative sound synthesis.

# Inside- and Outsideness - Oscillating between Intuition and Counter-Intuition

We can learn a lot about intuition and counter-intuition while working with topological structures. Though the "really high-bouncing topologists not only avoid anything like pictures of these things, they mistrust them. (...) we can, however, get to an understanding of their goal by easy stages, and by looking at certain shapes (or "spaces") from the topologists" point of view, if we start with ones that we can see and feel" (barr, p.2) A very intuitive approach would be to do exactly that: Following the ones we can see (or hear) and feel. The counter-intuitive seems to come in when we trust the high-bouncing topologists who mistrust the pictures and start to look just at the formulas. But as one might expect and also as we will show, intuition and counter-intuition are much more complex and won't just stay on one sight but rather appear on both paths. Working with very abstract formulas or definitions can feel at one point very intuitive, while trying to understand topological structures intuitively by looking at them has its limits and might turn into a very counter-intuitive process. In the working process we have experienced both and is this oscillation between intuition and counter-intuition which interests us. This is why we consider (sound) pictures as well as formalizations in our theoretical and experimental research practice.  The two topological structures we are interested in are both well known in topology and while they have a few things in common, they also have some crucially different characteristics. 

## Torus

Topological Characteristics: 2d, orientable, 0 edges, 0 boundaries

> Shuoxin: Does a torus have an "inside" and "outside"?

  
A torus embedded in 3D space can indeed be said to have a well-defined inside and outside that separates the space around it. What happens on the torus is you can define a continuous function that assigns to each point a vector (think of it as an arrow: v) pointing orthogonally outward or inward. If you zoom in on the surface of the torus, it looks locally like a little disc — a flat, round patch — and the arrow should be perpendicular to the disc. The key idea is  that you can define such a continuous family of vectors in a way that, even if you start at a point and go around a loop and return to the original point, the arrow still points the same way — This property is called orientability. 

Because the torus is orientable, you can consistently define what's "inside" and what's "outside". Of course you can choose to call either side the "inside" — the choice of inside/outside corresponds to the choice of the arrow: v or -v for this vector, since both are perpendicular. 

In contrast, a Möbius strip doesn't allow for this kind of consistent choice — it's unorientable. If you try to define arrows the same way and move around the strip, you'll find the arrow flips direction when you return. That's why the Möbius strip has only one side and no clear separation between inside and outside.

## Möbius strip

Topological Characteristics: 2d, non-orientable, 1 edge, 1 boundary

> Joseph: How can there be "opposite" sides of a Möbius strip, while it has just one side?

- A Möbius strip has only one side and one edge. This is very counter-intuitive as one could draw a point on one side and another one exactly on the opposite side. But topologically a surface is infinitely thin so the two points would coincide. 
-  As a Möbius strip has only one side and one edge, it is non-orientable. That means the surface can't be oriented as a torus can be. When moving something, e.g. a spiral, along the Möbius strip its orientation changes after "one round" and it goes into the opposite direction. That means it can't be oriented on the Möbius surface in any specific direction and there is no orientation.

We see a lot of potential for speculative thinking in the oscillation between intuition and counter-intuition. Concurrently it isn't obvious what is actually meant by saying something is intuitive or counter-intuitive. So how can we distinguish the intuitive from the counter-intuitive while working on mathematical and mechanical approaches? At what point are we following a "counter-intuitive" and when a more "intuitive" path? O are we just walking on the Möbius strip of our intuition?

Walking along a Möbius strip is a like following an intuitive and counter-intuitive path at the same time. While actually always being on the same side (as it has only one side), it might feel as there are two sides and if as at one point on is on the intuitive "side" and at another point like being on the counter-intuitive "side".  But there are no two sides and what is intuitive and what is counter-intuitive can't be "oriented".

# Topological interpretations and sound synthesis

Our research and practical experimentation on topology has so far followed different paths: A mechanical interpretation of the torus realised by a rotating loudspeaker installation, a lecture performance and various parametrical interpretations of the torus and the Möbius strip, realised as sonifications in SuperCollider.

## mechanical

To encounter the counter-intuitive aspects of the torus in a very intuitive way we have built a mechanical rotating loudspeaker installation. The installation maps the topological structures of the torus into space by playing the sound on speakers which rotate on two different axes. This is inspired by the interpretation of the torus as a Cartesian product of two circles. Each of  the circles is formed by points,  revolving around a centre.

Inspired by this, the first signals we were playing on the rotating loudspeakers were also point like signals. Here something very intuitive clashes with something counter-intuitive: The rotation and circular movement on two axes can be seen as the interpretation of the Cartesian product of two circles. But the sound itself won't form any torus or Cartesian product in space.  The sound won't put a point at a certain distance and at a certain place in space. It moves on, gets reflected, absorbed, transmitted through materials and transforms its energy into heat.  We can't, and we don't want to control this behaviour. The installation itself is our interpretation of the torus and how that sounds like in the end, is what we are interested in. And it happened, that it actually sounded like two circles.

Using imagination is one aspect of understanding the torus and other geometrical objects. Speculation we use to place those objects into another domain. That can be by thinking about possible transitions and movement within our actual physical space. So far, we have interpreted the torus by the mechanical movement of two rotating loudspeakers. This is intuition and speculation rather than calculation. In another domain, the one of discrete numbers, we have used a formula to parametrically represent and sonify the torus as a cartesian product of two circles.

## performative

For the Speculative Sound Synthesis Symposium 2024 we have developed a lecture performance, addressing aspects of topology, sound synthesis and (counter-)intuition. 

## parametrical

Interpreting the Cartesian product of two circles i.e. a torus, by rotating two loudspeakers on different axes is a quite intuitive approach as soon as we understand the idea of two circles forming a torus. The result however is not that intuitive as we neither see or hear something that looks or sounds like a torus. This interpretation is an abstract interpretation of S¹×S¹. If we want to actually calculate S¹×S¹ and obtain discrete data that can be used for sound synthesis or sonification, we don't get around a paremetrical description of the Torus. As topology doesn't care about distance or any measures, paremetrizations might lead us somehow away from topology. However, parametrizations make it possible  to experience the structures intuitively by the means of sound and listening. 

We found different ways to parametrically sonify topological structures:  

- Torus as a Cartesian product of two circles
- Torus and Möbius strip embedded in Euclidian space
- Collection of points on the surface of a torus or Möbius strip
- Unwrapped diagrams and Shepard tones

### Torus as a Cartesian product of two circles

A torus can be interpreted as a Cartesian product S¹×S¹ of two circles:

In SuperCollider we create a discrete version of S¹×S¹ with \~density points. \~torus now holds an array of pairs of points (?).

```sc
(
// get points on a circle
~density=4; // density of points (3 is actually a triangle, 4 a square etc. )
~circle = Array.fill(~density, { arg n;
    Array.with(cos(2pi * n / ~density), sin(2pi * n / ~density))
});

// Cartesian product: [S1 x S1]
~torus = [~circle, ~circle].allTuples;
)




// As Ndef (Joseph Baader, Shuoxin Tan, Bruno Gola)
~maxDens = 120;
(
Ndef(\torus, { arg amp = 0.5, dens = 80, trigRate=12, att=0.012, rel=0.024, stretch=342, shift=100;
	var circle = ~maxDens.collect {|n| [cos(2pi*n/dens), sin(2pi*n/dens)]};
	var seq = [circle, circle].allTuples;
	var trig = Impulse.kr(trigRate); // rate of oscillating through the torus
	var indx = Stepper.kr(trig, 0, 0, (dens.pow(2)-1));
	var env = EnvGen.ar(Env.perc(att, rel), trig);
	var frq = Select.kr(indx, seq);
	var sig = SinOsc.ar(2 + frq * stretch + shift + 50).sum * env;
	sig * amp;
}).play
);
```

This initial method reflects a shift from geometric intuition to a more algebraic or structural perspective, grounded in:

- Parametric abstraction
- Set-theoretic operations (e.g. Cartesian products)
- Algebraic modeling of spatial relationships

We are looking for counter-intuitive interpretations of the torus, which may lead us into a more speculative domain. Our methodological choice is focusing on relations, mapping and structures and such algebraic approach helps us to understand and sonify the counter-intuitive topological forms into sound.

### Torus embedded in Euclidian space

While we can interpret a torus as S¹×S¹ = T², we couldn't yet finde a corresponding approach for the Möbius strip. Though, the torus as well as the Möbius strip can be equivalently embedded in Euclidian three dimensional space.  This is a short documentation on our approach in SuperCollider. It follows (again) a parametrical representation of the Torus and the Möbius strip, which later can be used for a sonification. 

We decided to use different variables for the torus and Möbius strip to better reflect and understand the ways they are embedded in 3d space. For the torus u and v are used as they both define an angle and are standard parameters for describing a surface. The same variables are used on mathworld.wolfram.com which makes comparison much easier. 

```sc
// torus
/\*
there are three typical states for a torus: ring torus, horn torus and spindle torus:
\~c > \~a returns a ring torus
\~c = \~a returns a horn torus
\~c < \~a returns a spindle torus
\*/
(
\~c = 1; // center (major radius) --> radius circle 1
\~a = 0.5; // axis (minor radius) --> radius circle 2

\~u = pi; // u ∈ \[0, 2pi) --> controls where you are along the major circle
\~v = 0.5pi; // v ∈ \[0, 2pi) --> controls where you are along the minor circle

x = (\~c + (\~a  cos(\~v)))  cos(\~u);
y = (\~c + (\~a  cos(\~v)))  sin(\~u);
z = \~a \* sin(\~v);  // if z = 0, the torus is flat
\[x, y, z\];
)
```

(Pictures of ring torus, horn torus, spindle torus, )

### Möbius strip embedded in Euclidian space

To obtain discrete data, we are first implementing a parametrical representation of the Möbius strip in SuperCollider. This allows us to get discrete values i.e. points on the continuous surface of the Möbius strip, mapped into 3 dimensional Euclidian space. To represent the Möbius strip as such a parametric surface, a line segment can be rotated around a (unit) circle and – to realise the twist of the Möbius strip – be rotated half a turn around its own midpoint as well. As we are not mathematicians we didn't come up with such an equation ourselves, but we can find one on mathworld.wolfram.com as well as on Wikipedia.

According to both websites the Möbius band can be represented parametrically by points with the coordinates x	=	(R+s cos(1/2t)) cos t y	=	(R+s cos(1/2t)) sin t z	=	s sin(1/2t) where t ∈ \[0, 2pi) and s ∈ \[−w, w\]. t describes the rotation angle, i.e. where we are on the (unit) circle around which the line segment rotates and s describes the position of the point on the line segment. w defines the width of the line segment, i.e. of the Möbius strip and R the radius of the Möbius strip (or of the circle?).

This equation will return us any cartesian point on a parametrical Möbius strip. To use the function in SuperCollider we only have to take care to put some extra brackets as SuperCollider doesn't calculate according to "Punkt vor Strich" but reads straight from left to right.

```sc
(
 \~radius = 1;
\~t = 1/2pi; // t ∈ \[0, 2pi) --> (between 0 and 2pi)
\~s = -0.5; // s ∈ \[−w, w\]  --> (between -width and width)

x = (\~radius + (\~s  cos(0.5  \~t)))  cos(\~t);
y = (\~radius + (\~s  cos(0.5  \~t)))  sin(\~t);
z = \~s  sin(0.5  \~t);
\[x, y, z\];
)
```

https://mathworld.wolfram.com/MoebiusStrip.html

### 

### Direct sonification of paths on the surface of a torus or a Möbius strip

We've already done some experiments with the equations, but somehow skipped the most direct approach until David Pirrò brought it up in a meeting and asked "why don't you just .play the function?" Sometimes the most obvious and most intuitive things are too close to see. This is an adaption of some code examples David was sending us:

```sc
// torus
~c = 1;
~a = 0.5;
~freq = 500.0; 
~freqB = 20.0;
~amp = 0.05;

{
	var x = (~c + (~a * SinOsc.ar(~freqB, pi/2))) * SinOsc.ar(~freq, pi/2);
	var y = (~c + (~a * SinOsc.ar(~freqB, pi/2))) * SinOsc.ar(~freq);
	var z = ~a * SinOsc.ar(~freqB);
	Out.ar([0,1], [x + (z * 0.5), y - (z * 0.5)] * ~amp);
}.play;

s.scope;
```

For freqB = freq \* 0.5 we get a path on the surface of the torus which is equivalent to the edge of a Möbius strip:

```sc
(
// Möbius like path on the surface of a torus
~c = 1;
~a = 0.5;
~freq = 500.0; // t ∈ [0, 2pi) --> (between 0 and 2pi)
~freqB = 250; // t ∈ [0, 2pi) --> (between 0 and 2pi)
~amp = 0.05;
{
	var x = (~c + (~a * SinOsc.ar(~freqB, pi/2))) * SinOsc.ar(~freq, pi/2);
	var y = (~c + (~a * SinOsc.ar(~freqB, pi/2))) * SinOsc.ar(~freq);
	var z = ~a * SinOsc.ar(~freqB);
	Out.ar([0,1], [x + (z * 0.5), y - (z * 0.5)] * ~amp);
}.play;
)

s.scope;
```

If we want to cover the surface of the Möbius strip in a similar way as we did for the torus, we have to take in account that s ∈ \[−w, w\]. So instead of taking a single point on s, we implement the s ∈ \[−w, w\] as the traverse motion across the width of the strip. For this example we use again the variables corresponding to the Möbius strip:

```sc
(
~r = 1;
~w = 0.5;
~freq = 150; 
~freqB = 500.0;
~amp = 0.05;

{
	var s = LFTri.ar(~freqB).range(~w * -1, ~w); // s ∈ [−w, w]
	var x = (~r + (s * SinOsc.ar(0.5 * ~freq, pi/2))) * SinOsc.ar(~freq, pi/2);
	var y = (~r + (s * SinOsc.ar(0.5 * ~freq, pi/2))) * SinOsc.ar(~freq);
	var z =  s * SinOsc.ar(0.5 * ~freq);
	Out.ar(0, [x + (z * 0.5), y - (z * 0.5)] * ~amp);
}.play
)

s.scope;
```

// which values would cover most of the Möbius strip surface?

### Similarities and transition (scope) 

While experimenting with different variables for the embedded torus, we observed the various paths exhibited a variety of different states, particularly visible through changing patterns in the X-Y scope visualizations. Some of them seem to be quite complex and chaotic while others were very stable and didn't show any motion at all. (We might consider capturing screenshots to illustrate this.)

This made us wonder: could these states correspond to what are known as torus knots? 

### Torus knots - sonifying closed paths on the torus surface

If we follow a path on the surface of the torus that wraps around the major circle p times and around the minor circle q times, and this path joins its own end, then we get what is called a torus knot - where p and q are coprime integers: gcd(p,q) =1 (i.e. their only common divisor is 1). In this context we're especially interested in exploring the role of the parameters p, q. Since p, q define different types of torus knots, perhaps by manipulating these values, we can better understand the underlying structure of the transformations. 

We can implement p and q in the Torus equation like this:

```sc
x = (~c + (~a * cos(~v * ~q))) * cos(~u * ~p);
y = (~c + (~a * cos(~v * ~q))) * sin(~u * ~p);
z = ~a * sin(~v * ~q);
[x, y, z];
```

where \~c is still the center (major radius) and \~a the axis (minor radius). \~p and \~q must be both integers and \~u = \~v. This parameterization defines a (p,q) torus knot as a closed curve that winds p times around the torus's major axis and q times around its minor axis.

As \~u = \~v, we replace \~u and \~v with \~phi:

```sc
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
```

This equation is equivalent with the known equation to describe a torus knot (Reference to mathworld) and can be played in SuperCollider by using SinOsc:

```sc
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
```

We can calculate Torus knots by using the greatest common divisor (gcd) of p and q (as p and q relatively prime) and add them into a list:

```sc
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
```

This list currently contains duplicates as a Torus knot (p, q) is equivalent to a Torus knot (q, p). However, as (p, q) and (q, p) return different frequency relations, we choose to keep them due to musical reasons.

```sc
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
```

(As a minimal and intuitive form of interaction, we also brainstormed whether it's possible to treat a laptop trackpad as a kind of “unfolded torus diagram” — allowing us to explore different (u, v) values simply by tracing finger gestures across the surface. Could this tactile method provide an alternative way to navigate or sonify the torus knot space?)

\--> insert a short SuperCollider example where we use the MousePad to navigate through p and q values?

#### Define the path in unwrapped torus knots diagrams

![Torusknot_sketch1](https://github.com/mewithoutnara/PointSurfaceTwist/blob/main/T(3%2C4)_sketch.jpg) <br>

The diagram of the (3,4) torus knot represents the core idea of the path on a "flattened torus" - a torus "unwrapped" into a square 2D domain, where opposite edges are identified. The knot is represented as a continuous path that moves diagonally across the square. This path has a "wrapping pattern" (p,q), where (p,q) defines the type of a torus knot as a closed curve that winds p times around the torus's major axis and q times around its minor axis. This wrapping pattern makes each torus knot unique.

The path is drawn as a line starting from the bottom-left and moving diagonally at a constant slope. Each time as the line exits the square on the right or top, it re-enters from the opposite side, creating the path traveling on the surface of a torus. Once the path returns to its starting point, a closed loops is formed — representing the torus knot.

Mathematically, this happens when (p,q) have no common factor other than 1: 

if gcd(p,q) = 1

Otherwise, the the result is not one knot, but torus link made of several separate loops (more than one component):

if gcd(p,q) > 1

#### Creating other prime torus knot diagrams from an unwrapped torus representation 

#### Sonifiying the parametrization as a study of the properties of torus knots -Using paths in unwrapped torus knots diagrams as graphical notations for shepard tones

```
SuperCollider Code
```

### 

### constructing an array of points/lines 

Similarly as shown for the parametrical interpretation of a Torus as a Cartesian product of two circles, we can use the embedding function for constructing an Array of points on the surface of a torus or a Möbius strip and play these points as patterns or clusters within SuperCollider:

```sc
SuperCollider code 
```

# Research and Inspiration for the sonification and synthesis

### How time passes (...Wie die Zeit vergeht...)

Text from Stockhausen

In How Time Passes, Stockhausen explores how music unfolds on both macro and micro levels of time. He attempts to approach rhythm, time, and structure through mathematical relationships.

### Keyword Summaries

- Subharmonic Series of Proportions

A set of time proportions derived from the inverse of a harmonic series (e.g., 1:2:3 becomes 1:½:⅓), used to structure durations and rhythms in a way that mirrors acoustic subharmonics. Stockhausen uses this to build time relationships that feel “natural” or “resonant” in proportion.

- Formant-Spectra 

A concept borrowed from acoustics, referring to the concentration of spectral energy around certain frequencies (formants). Stockhausen extends this to time and rhythm, creating analogous "formant structures" in durations or intensities that shape perception—like a timbre signature applied to time.

- formants - single ‚harmonic' divisions (p.17) \[...\] the number and combination of formants defines what is commonly called the tone-colour of the spectrum (p.18). 
- consonant formants - the octave (duplet), fifth (triplet), the third (quintuplet), seventh (septuplet)
- formant-rhythm (tone-colour) of a fundamental tone.
- Time-Fields

Temporal regions or zones where musical events are grouped and organized. Each field acts like a spatial container for durations, rhythms, or even densities. Time-fields may overlap, nest, or evolve, forming a layered temporal structure.

- Field-Sizes

The measurable or perceived size of a time-field, determined by factors like duration, density of events, or intensity. Field-size governs how “large” or “small” a temporal zone feels in relation to the rest of the structure.

- Field-Harmony

The vertical or simultaneous interaction between multiple time-fields, analogous to how harmonic intervals work in pitch. Field-harmony describes how these time-based zones resonate, clash, or align with one another to create structural tension or resolution.

- Field-Intensity

The dynamic energy level within a time-field, which can be shaped by volume, activity level, or rhythmic complexity. It adds expressive contrast between fields and contributes to a sense of contour or direction in time.

- Field-Density

The concentration of events (notes, attacks, gestures) within a time-field. A dense field might have many rapid notes; a sparse field might have only a few stretched over time. Density helps articulate texture and motion in the time-space.

  
Can we have proportion-series of fields? Can we "cut" the torus like this?

## 

## 

## 

# 

## 
