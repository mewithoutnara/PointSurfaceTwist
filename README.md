---
weight: 7
title: Shuoxin and Joseph
bookToC: true
bookCollapseSection: true
---

# Point, Surface, Twist

Our exploration is rooted in the convergence between theoretical speculation and practical experimentation within sound synthesis. Drawing inspiration from Karlheinz Stockhausen's insights into auditory perception, particularly the transformative effects of manipulating point-like signals, we explore properties of specific topological structures. In particular, we are interested in the topological composition of the torus and its de-compositional transformation into the Möbius strip. Through our experimentation with SuperCollider, we aim to understand whether the intrinsic qualities of these structures can be elucidated through sound synthesis, while we also explore the extrinsic factors that influence their manifestation. We ask, whether the certain contradictions and tensions inherent in topological properties can be perceived through acoustics and spatialization. This in turn would allow us to bridge the realms of the internal and the external in explorative sound synthesis.

# Research Origin — Sonic Time and Rotating Form

Before the conceptual language of topology entered our process, this research began with an auditory intuition: a desire to explore how time could be shaped and spatialized through sound. The first spark came from Karlheinz Stockhausen’s essay How Time Passes (Wie die Zeit vergeht...), where he reimagines musical time not merely as succession, but as structure — with rhythms behaving like fields, and durations bending like harmonic intervals. His vision of temporal form deeply influenced how we began to think about surfaces, continuity, and resonance.

Parallel to this theoretical impulse, we started constructing a rotating loudspeaker installation. Inspired loosely by Stockhausen’s own rotation table, this mechanical experiment sought to explore how circular motion, spatial projection, and signal behavior could be used to model — or distort — the perception of form. In retrospect, this early prototype embodied a pre-topological intuition: it wasn’t yet about the torus, but it was already about rotation, about twisted surfaces of perception, and about how a sound can move across an undefined geometry.

Together, these two influences — Stockhausen’s speculative thinking on time, and our own experiment with rotation and spatial sound installation — became the first twist in what would evolve into a study of topological forms.

This early experiment laid the foundation for what we later identified as a mechanical interpretation of the torus.

## Topological Interpretations and Sound Synthesis

Our research and practical experimentation on topology has so far followed different paths: A mechanical interpretation of the torus realised by a rotating loudspeaker installation, a lecture performance and various parametrical interpretations of the torus and the Möbius strip, realised as sonifications in SuperCollider.

### Mechanical

To encounter the counter-intuitive aspects of the torus in a very intuitive way we have built a mechanical rotating loudspeaker installation. The installation maps the topological structures of the torus into space by playing the sound on speakers which rotate on two different axes. This is inspired by the interpretation of the torus as a Cartesian product of two circles. Each of  the circles is formed by points,  revolving around a centre.

Inspired by this, the first signals we played on the rotating loudspeakers were point like signals. Here something very intuitive clashes with something counter-intuitive: The rotation and circular movement on two axes can be seen as the interpretation of the Cartesian product of two circles. But the sound itself won't form any torus or Cartesian product in space.  The sound won't put a point at a certain distance and at a certain place in space. It moves on, gets reflected, absorbed, transmitted through materials and transforms its energy into heat.  We can't, and we don't want to control this behaviour. The installation itself is our interpretation of the torus and how this interpretation sounds like, is what we are interested in. And it happened in fact, that it sounded like two circles.

Using imagination is one aspect of understanding the torus and other geometrical objects. Speculation we use to place those objects into another domain. That can be by thinking about possible transitions and movement within our actual physical space. This mechanical interpretation and the transformation into space is intuition and speculation rather than calculation.

### Performative

For the Speculative Sound Synthesis Symposium 2024 we have developed a [lecture performance](https://speculativesoundsynthesis.iem.sh/symposium/docs/proceedings/baader_tan/), addressing aspects of topology, sound synthesis and (counter-)intuition. In the performance we exposed our speculative approach of sonifying the torus parametrically.

### Parametrical

Interpreting the Cartesian product of two circles i.e. a torus, by rotating two loudspeakers on different axes is a quite intuitive approach as soon as we understand the idea of two circles forming a torus. The result however is not that intuitive as we neither see or hear something that looks or sounds like a torus. This interpretation is an abstract interpretation of **S¹ × S¹**. If we want to actually calculate **S¹ × S¹** and obtain discrete data that can be used for sound synthesis or sonification, we don't get around a paremetrical description of the Torus. Admittedly, as topology doesn't care about distance or any measures, paremetrizations might lead us somehow away from topology. However, parametrizations make it possible  to experience the structures intuitively by the means of sound and listening.

# Inside- and Outsideness — Oscillating Between Intuition and Counter-Intuition

We can learn a lot about intuition and counter-intuition when working with topological structures. As Barr notes, *"The really high-bouncing topologists not only avoid anything like pictures of these things, they mistrust them. (...) we can, however, get to an understanding of their goal by easy stages, and by looking at certain shapes (or 'spaces') from the topologists" point of view, if we start with ones that we can see and feel"* (Barr, p. 2).

A highly intuitive approach would be to do exactly that: to follow the shapes we can see, hear and feel. The counter-intuitive enters when we side the "high-bouncing topologists" who mistrust pictures and instead focus solely on formulas. But as one might expect — and as we aim to demonstrate — intuition and counter-intuition are far more complex. They do not simply align with one method or the other, but rather manifest along both paths.

Working with abstract formulas or definitions can at times feel surprisingly intuitive, while trying to intuitively grasp topological structures by observing them can quickly become disorienting or counter-intuitive. Throughout our process, we have experienced both. It is precisely this oscillation between intuition and counter-intuition which interests us.

This is also why we decided to implement sound and images i.e. perceptual representations, as well as formal mathematical descriptions in our theoretical research and experimental practice.  The two topological structures we explore are well known in topology. While they share certain properties, they also differ in crucial ways.

Historically, topology emerged as a study of space where measurement is not fundamental. Leibniz’s early vision of analysis situs emphasized the relations between positions rather than distances. Later, Poincaré's foundational work made this philosophical stance explicit, defining topology through continuity and transformation, without relying on metric concepts like size or length. This non-metrical approach aligns with our own investigations, where we prioritize the experiential, the continuous, and the paradoxical over the strictly quantifiable. It allows us to ask not how far things are, but how they relate — conceptually, perceptually, and sonically.

While some of our methods rely on measurable parameters — such as frequency, pitch, or vector coordinates — the underlying impulse remains topological in nature. We use metrical tools to probe non-metrical questions: How do relationships, continuities, and twists translate into perception? In this sense, our approach does not oppose measurement, but rather bends it toward the articulation of spatial relations that resist quantification.

# Topological Figures — Torus and Möbius Strip

## Torus

**Topological Characteristics**: two-dimensional surface, orientable, 0 edges, 0 boundaries

> **Shuoxin: Does a torus have an "inside" and "outside"?**

A torus embedded in three-dimensional Euclidean space, i.e., R³ can indeed be said to have a well-defined inside and outside that separates the space around it. We can define a continuous function that assigns to each point a vector (like an arrow: *v*) pointing orthogonal outward or inward. If you zoom in on the surface of the torus, the point looks locally like a little disc — a flat, round patch — and the arrow should be **perpendicular** to the disc. We can define such a continuous family of vectors by starting at one point on the surface of the torus and go around it in a loop. If we return to the original point, the arrow still points into the same direction. This property is called **orientability**.

Because the torus is orientable, we can consistently define what is "inside" and what is "outside". Of course, we can choose to call either side the "inside" — choosing the vector *v* or *-v* simply flips your designation of inside and outside, but the consistency remains.

In contrast, a Möbius strip doesn't allow such a consistent choice — it is **non-orientable**. If we try to define arrows the same way and move around the strip, we'll find the arrow flips direction when return to the same point. That's why the Möbius strip has only one side and no clear separation between inside and outside.

## Möbius Strip

**Topological Characteristics:** two-dimensional surface, non-orientable, 1 edge, 1 boundary

> Joseph: How can there be "opposite" sides of a Möbius strip, while it has just one side?

A Möbius strip has only one side and one edge. This can feel very counter-intuitive, as one could draw a point on one side and another one exactly on the opposite side. But topologically, the surface is infinitesimally thin, and the two points would coincide.

We see a lot of potential for **speculative thinking** in the oscillation between intuition and counter-intuition. Concurrently it isn't obvious what is actually meant by saying something is intuitive or counter-intuitive. So how can we distinguish the intuitive from the counter-intuitive while working on mathematical and mechanical approaches? At what point are we following a "counter-intuitive" and when a more "intuitive" path?

Walking along a Möbius strip is like following an intuitive and counter-intuitive path simultaneously. While actually always being on the same side (since it only has one), it might feel as there are two sides and as you're sometimes on the intuitive one and other times on the "counter-intuitive" one. But there are no two sides — and neither the intuitive nor the counter-intuitive can be clearly oriented.

# Parametric Structures and Sonic Paths 

During the working period we have found different ways to parametrically sonify topological structures:

- Torus as a Cartesian product of two circles
- Torus and Möbius strip embedded in R³
  - as paths on the surface
  - as a collection of points on the surface
- Unwrapped torus knot diagrams as Shepard tones

## Torus as a Cartesian Product of Two Circles

A torus can be interpreted as a Cartesian product S¹ × S¹ of two circles:

In SuperCollider we create a discrete version of S¹ × S¹ with *\~density* points.

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
```

 *\~torus* now holds an array of pairs of points, which we can play back in various way. We have written an Ndef, which Bruno Gola has refined for a joined project at the Speculative Sound Synthesis Symposium 2024:

```sc
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

We are looking for counter-intuitive interpretations of the torus, which may lead us into a more speculative domain. Interpreting the torus as **S¹** × **S¹** = **T²** seems very intuitive, as we can imagine the torus being constructed by two circles. But the result is again quite counter-intuitive: It is a representation of the torus in R², which is hard to imagine or draw. Our methodological choice is focusing on relations, mapping and structures and such algebraic approach might help us to understand and sonify the counter-intuitive topological aspects by the help of sound.

## Torus Embedded in R³

While we can interpret a torus as **S¹** × **S¹** = **T²**, we haven't yet found a corresponding approach for the Möbius strip. Though, the torus as well as the Möbius strip can be equivalently embedded in **R³**.  This is a short documentation on our approach in SuperCollider. It follows a parametric representation of the Torus and the Möbius strip, which can be later used for a sonification.

We chose to use different variables for the torus and Möbius strip to better reflect and understand how each is embedded in three-dimensional space.

For the torus, *u* and *v* are used, as both represent angles and are standard parameters for describing a parametric surface. The same variables are used on [Mathworld](http://mathworld.wolfram.com) which facilitates easier comparison.

```sc
// torus
(
~c = 1; // center (major radius) --> radius circle 1
~a = 0.5; // axis (minor radius) --> radius circle 2

~u = pi; // u ∈ [0, 2pi) --> controls where you are along the major circle
~v = 0.5pi; // v ∈ [0, 2pi) --> controls where you are along the minor circle

x = (~c + (~a cos(~v))) cos(~u);
y = (~c + (~a cos(~v))) sin(~u);
z = ~a * sin(~v);  // if z = 0, the torus is flat
[x, y, z];
)

/*
there are three typical states for a torus: ring torus, horn torus and spindle torus:
~c > ~a returns a ring torus
~c = ~a returns a horn torus
~c < ~a returns a spindle torus
*/
```

![ring torus](images/Horn-Torus.png)

![horn torus](images/Horn-Torus.png)

![spindle torus](images/Spindle-Torus.png)

## Möbius Strip Embedded in R³

This approach is very similar to the embedding of the torus in R³. To obtain discrete data, we work with a parametric representation of the Möbius strip. This allows us to sample discrete points on its continuous surface, mapped into three-dimensional Euclidian space R³.

To represent the Möbius strip as such a parametric surface, a line segment is rotated around a circle of radius *R*, which defines the size of the Möbius strip. To realise the twist of the Möbius strip, the segment must be rotated half a turn around its own midpoint as well. Since we are not mathematicians, we didn't derive this equation ourselves, but we found equivalent versions on [Mathworld](https://mathworld.wolfram.com/MoebiusStrip.html) and Wikipedia.

According to both sources, the Möbius band can be represented parametrically by the coordinates:

> x	=	(R + s · cos(1/2t)) · cos(t)  
> y	=	(R + s · cos(1/2t)) · sin(t)  
> z	=	s · sin(1/2t)
>
> where t ∈ [0, 2pi) and s ∈ [−w, w].

Here, *t* describes the rotation angle — i.e. the position on the circle around which the line segment rotates — and *s* describes the position along the line segment. *w* defines the width of the line segment (i.e., the Möbius strip), and *R* the radius of the circle.

This equation returns any cartesian point on a parametric Möbius strip. To use the function in SuperCollider, we only need to insert additional brackets, since SuperCollider doesn't follow standard operator precedence but instead evaluates expressions strictly from left to right.

```sc
(
~radius = 1;
~t = 1/2pi; // t ∈ [0, 2pi) --> (between 0 and 2pi)
~s = -0.5; // s ∈ [−w, w]  --> (between -width and width)

x = (~radius + (~s cos(0.5 ~t))) cos(~t);
y = (~radius + (~s cos(0.5 ~t))) sin(~t);
z = ~s sin(0.5 ~t);
[x, y, z];
)
```

## Direct Sonification of Paths on the Surface of a Torus or a Möbius Strip

We've already done some sound experiments with the equations, but somehow skipped the most direct approach until David Pirrò brought it up in a meeting and asked **"why don't you just { }.play the function?"** Sometimes the most obvious and most intuitive things are too close to see. This is an adaption of some code examples David was sending us:

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

For `freqB = freq * 0.5` we get a path on the surface of the torus which is equivalent to the edge of a Möbius strip:

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

If we want to cover the surface of the Möbius strip in a similar way as we did for the torus, we have to take in account that `s ∈ [−w, w]`. So instead of taking a single point on *s*, we implement the `s ∈ [−w, w]` as the traverse motion across the width of the strip. For this example we use again the variables corresponding to the Möbius strip:

```sc
(
// Möbius strip
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

In a meeting with the project supervisors and one other guest artist, we have discussed space filling curves. That made us wonder, which values for \~freq and \~freqB would work the best to cover as much of the surface of the Möbius strip or the torus. We didn't follow this idea further, but might do so in the future.

## Similarities and Transition (scope)

While experimenting with different variables for the embedded torus, we observed the various paths exhibited a variety of different states, particularly visible through changing patterns in the X-Y scope visualizations. Some of them seem to be quite complex and chaotic while others were very stable and didn't show any motion at all. *(We might consider capturing screenshots to illustrate this.)*

This made us wonder: could these states correspond to what are known as ***torus knots***?

## Torus Knots - Sonifying Closed Paths on the Torus Surface

If we follow a path on the surface of the torus that wraps around the major circle *p* times and around the minor circle *q* times, and this path joins its own end, then we get what is called a torus knot - where *p* and *q* are coprime integers: gcd(*p*, *q*) = 1 (i.e. their greatest common divisor is 1). In this context we're especially interested in exploring the role of the parameters (*p*, *q*). Since (*p*, *q*) define different types of torus knots, perhaps by manipulating these values, we can better understand the underlying structure of the transformations.

We can implement *p* and *q* in the Torus equation like this:

```sc
x = (~c + (~a * cos(~v * ~q))) * cos(~u * ~p);
y = (~c + (~a * cos(~v * ~q))) * sin(~u * ~p);
z = ~a * sin(~v * ~q);
[x, y, z];
```

where `~c` is still the center (major radius) and `~a` the axis (minor radius). `~p` and `~q` must be both integers and `~u` = `~v`. This parameterization defines a (*p, q*) torus knot as a closed curve that winds *p* times around the torus's major axis and *q* times around its minor axis.

As `~u` = `~v`, we replace `~u` and `~v` with `~phi`:

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

This equation is equivalent with the known equation to describe a torus knot and can be played in SuperCollider by using `SinOsc`:

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

We can calculate Torus knots by using the greatest common divisor (gcd) of *p* and *q* (as *p* and *q* are coprime) and add them into a list:

```sc
(
k = [(2..4), (2..5)].allTuples; // define range for p and q; must be > 2
~knots = Array.new(k.size);
k.collect({|x|
	var cs;
	if(x[0].gcd(x[1]) == 1, {  // checking for greatest common divisor
		cs = [x[0]-1 * x[1], x[1]-1 * x[0]].minItem; // calculate amount of crossings
		~knots.add([x, cs]);
	})
});

// sorting knots by amount of crossings
a = ~knots.flop;
b = a[a.size-1];
~csSorted = b.order.collect({|x| ~knots[x]});
)
```

This list currently contains duplicates as a Torus knot (*p*, *q*) is equivalent to a Torus knot (*q*, *p*). However, as (*p*, *q*) and (*q*, *p*) return different frequency relations, we choose to keep them due to musical reasons.

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
		i = i + 1;

		1.wait;
	})
}).play
)

s.scope;
```

### Defining the path in unwrapped torus knot diagrams

![Torus Knot](https://github.com/mewithoutnara/PointSurfaceTwist/blob/main/images/Torusknot-1.jpeg)

The diagram of the (3, 4) torus knot represents the core idea of the path on a "flattened torus" — a torus "unwrapped" into a square two-dimensional domain, where opposite edges are identified. The knot is represented as a continuous path that moves diagonally across the square. This path has a "wrapping pattern" (*p, q*), where (*p, q*) defines the type of a torus knot as a closed curve that winds *p* times around the torus major axis and *q* times around its minor axis. This wrapping pattern makes each torus knot unique.

The path is drawn as a line starting from the bottom-left and moving diagonally at a constant slope. Each time as the line exits the square on the right or top, it re-enters from the opposite side, creating the path traveling on the surface of a torus. Once the path returns to its starting point, a closed loop, which represents the path of the torus knot, is formed.

Mathematically, this only happens when (*p, q*) have no common factor other than 1:

if gcd(*p, q*) = 1

Otherwise, the result is not a knot, but a torus link made out of several separate loops i.e. more than one component:

if gcd(*p, q*) > 1

### Sonifying unwrapped torus knot diagrams as Shepard tones

The unwrapped torus knot diagrams show continuously rising (or falling) slopes. Interpreting these diagrams by the use of Shepard tones is first of all an intuition. But Shepard notes are also a mathematical interpretation of *phi*  (torus knot) or *u* and *v* (torus), as their values can infinitely increase because there is no boundary on a torus.

The following sonification is another approach of studying the properties of torus knots. Instead of sonifying an equation it reads the torus knot diagrams like a graphic score and interprets them as Shepard tones:

```
(
// torus knot shepard
~p = 3;
~q = 4;

Ndef(\shep, {
    var intvs, amps, sig, pan;
	#intvs, amps = Shepard.kr(~p + ~q, [~p, ~q] * 0.01, 5, 1.5);
    sig = SinOsc.ar((intvs + 60).midicps, 0, amps);
    Mix(sig) * 0.05
}).play;
)
```

The sum of *p* and *q* is the amount of rising intervals, which is equivalent to the number of slopes in the unwrapped torus knot diagrams. *p* and *q* are also used to define the slopes of the Shepard.  For a (3, 4) torus knot, when applied to a time domain, *p* wraps 3 times around one axis, while within the same time frame *q* wraps 4 times around another axis. There are two Shepards in the example above, one representing *p* and one representing *q*. The *p*-Shepard rises slower as the *q*-Shepard.

A (*p*, *q*) torus knot is equivalent to a (*q*, *p*) torus knot. A (*p*, *q*) torus knot is equivalent to a (*-p*, *-q*) torus knot, but oriented the other way around. A (*p*, *q*) torus knot and a (*p*, *-q*) torus knot are mirrored. The above Shepard tone example demonstrates these characteristics quite well, while when listening to the sonification of the Torus Knot Equation it is impossible to hear any difference between a (*p*, *q*) torus knot and a (*p*, *-q*) torus knot.

Sonically there is a lot of potential in changing the musical intervals, which form the Shepard tones. Here we apply the ratio of p and q to a corresponding interval of the chromatic tone system:

```sc
(
~p = 3;
~q = 4;
~shepInterval = ([~p, ~q].maxItem / [~p, ~q].minItem).ratiomidi;

Ndef(\shepBasic, {
    var intvs, amps, sig, pan;
	#intvs, amps = Shepard.kr(~p + ~q, [~p, ~q] * 0.01, ~shepInterval, 1.5);
    sig = SinOsc.ar((intvs + 60).midicps, 0, amps);
    Mix(sig) * 0.05
}).play;
)
```

### Constructing an Array of Points

Similarly as shown for the parametrical interpretation of a Torus as a Cartesian product of two circles, we can use the embedding function for constructing an Array of points on the surface of a torus or a Möbius strip and play these points as patterns or clusters within SuperCollider. This approach might be useful for sound spatialisation, sound clusters or patterns.

This is a demonstration of how to collect an arbitrary amount of points on the surface of a Möbius strip into an Array. The same can be done for a torus.

```sc
(
~r = 1;
~s = 0.7;// s ∈ [−w, w]
~sDens = 1; // minimum 1. 1 returns the two outer points of the line segment, 2 returns 4 points on the segment and so on.
~lDens= 30; // density of line segments
~t = Array.fill(~lDens, {|x| 2pi*x/~lDens});
~s = Array.fill(~sDens, {|x| 1 + x / ~sDens * ([-1, 1]) * ~s}).flatten;

~m = ~t.collect{|w| w;
	~s.collect{|s|
		var x, y, z;
		x = (~r + (s * cos(0.5 * w))) * cos(w);
		y = (~r + (s * cos(0.5 * w))) * sin(w);
		z = s * sin(0.5 * w);
		[x, y, z]
	}
};
)
```

If we loop this Array and listen to it as a pattern, we would notice a "jump". The jump happens at the point where the two "opposite" boundaries of the strip are connected. But as the "opposite" boundaries are actually the same, we can continue following the strip along the "other" boundary for one more round and end up at exactly the same point(s) where we have started. So we construct an array, which includes two rounds along the Möbius strip and which can later be used for smooth looping:

```sc
~moebius = [~m, ~m.collect{|m| m.rotate(1)}].flatten;
```

We will provide some sound examples in a separate file on GitHub.

# Closing Reflection — On (Not) Closing

This project unfolds along a surface that loops without closure. Topological structures, after all, are not defined by their size or shape, but by the way continuity persists—through twists, holds, and joins. Similarly, our research does not conclude; it curves back, folds, and twists into further questions. In that sense, it closes like a torus closes: not in finality, but in form.

Our investigation remains open-ended. Speculation, in our case,  is not a method of escape from rigor but a mode of attention—one that allows us to stay with intuition, contradiction, and transformation. We do not ask only what a structure is, but how it might be sensed, traced, heard.

If questions persist, they invite listening rather than solving:

How might a topological twist shift our sense of space?

What does it mean to follow a surface through both sound and thought?

Can perception itself fold?

In this way, the research is not finished — it is folded, continuing not toward conclusion, but toward resonance.
