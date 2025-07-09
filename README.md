open another branch so that we have different documentation for different work phases.
this branch is for our work between winter 2023 - speculative sound synthesis symposium 2024
:)

- Projektskizze from Shuoxin, 22. Sep, 2022
- Realisation of one bluetooth speaker with motor, Joseph + Shuoxin winter 2023 (images, videos, docus)
- Text as contribution for ssss 2024
- Lecture performance as presentation for ssss 2024


## (De)composition of Inside- and Outsideness: Sound Synthesis as Point, Surface and Twist, 2024

Shuoxin Tan <br>
shuoxin.tan@rsh-duesseldorf.de <br>
Institute for Music and Media at the Robert Schumann Conservatory Düsseldorf, Germany <br>

Joseph Baader <br>
joseph-baader@web.de <br>
Institute for Music and Media at the Robert Schumann Conservatory Düsseldorf, Germany <br>


### Abstract
Our exploration is rooted in the convergence between theoretical speculation and practical experimentation within sound synthesis. Drawing inspiration from Karlheinz Stockhausen's insights into auditory perception, particularly the transformative effects of manipulating point-like signals, we explore properties of specific topological structures. In particular, we are interested in the topological composition of the torus and its de-compositional transformation into the Moebius strip. Through our experimentation with SuperCollider, we aim to understand whether the intrinsic qualities of these structures can be elucidated through sound synthesis, while we also explore the extrinsic factors that influence their manifestation. Furthermore, we ask whether the certain contradictions and tensions inherent in topological properties can be perceived through acoustics and spatialization. This in turn would allow us to bridge the realms of the internal and the external in explorative sound synthesis.

Keywords: (de)Composition, algebraic topology, auditory perception, kinetic installation, sonification, spatialization, SuperCollider, transformation

### ~point
A moving point turns into a line, a moving line turns into a plane, and a moving plane turns into a volume… what about moving several points? How can we perceive this transformation from a discrete to a continuous family of sound mass? Stockhausen demonstrated what happens if one speeds up the repetitive point-like signal of an impulse generator, and by this crossing the threshold between individuality and continuity bounds.1 First we hear individual points, but when the frequency increases and exceeds a certain threshold, we perceive the sound as a continuum. The series of points becomes a line. This classic example of sound synthesis also underlines that here, it is the listener, for whom the points become a line. How can this be approached by exploring the topological properties of continuity with sound synthesis?

### ~surface
Both the torus and the Möbius strip have a single continuous surface. A Möbius strip is a non-orientable surface with only one continuous side. While the torus (genus 1 surface)2 is a surface with orientation, it has an inside and an outside when embedded in 3-dimensional space. If you start drawing a line on one side of a Möbius strip and continue along the strip, you will eventually return to the starting point having covered both "sides" without lifting your pen. The key differences lie in their topological properties and in their orientability.

By studying their topological properties, we may be able to explore new approaches to sound synthesis. To start with, by comparatively sonify certain properties, we may create auditory experiences and render perceptible these topological characteristics of the torus and Möbius strip through sound.

### ~twist
Our sonic speculation is a topological one. How can we stretch, shift and bend the sound without losing its character? Like a torus or a rubber band.

A topological space which reflects many of our ideas on sound synthesis is the transformation from the torus to the Moebius strip.

The points (p,q) are points on two circles, and it is the movement of two circles that gives you a surface called torus, which is a closed structure like a donut or bagel with a hollow centre. If we cut along the surface of this torus, along a half twisted line which is rotated by 180 degrees, we get 2 joint Moebius strips. This transformation puts an orientable surface into a non-orientable one.

A Moebius strip has only one side, which somehow contradicts intuition. Such counter-intuitive processes offer an insight into speculative thinking and practice.

### ~{transformation}: a function of inside- and outsideness
The Moebius strip doesn't have an absolute inside or outside, while the torus does. There exists a subtle transformation, which relates two things3. Can this transformation be understood as a function (Barr 1964, 182)? We take the characteristics and transformations of torus and Moebius strip as starting points for epistemic experiments on sound synthesis. This results in a new model for an instrument and a spatialized composition.


Fig. 1. Torus as the product of two circles: S¹×S¹

Fig. 2. Torus as the product of two circles: S¹×S¹

Fig. 3. Torus as the product of two circles: S¹×S¹

Fig. 4. Decomposition of the Torus into the Moebius strip

Fig. 5. Decomposition of the Torus into the Moebius strip
~instrument #
We have built a prototype of our instrument: it consists of two Bluetooth loudspeakers, mounted on two stepper motors, which can be controlled by SuperCollider. The instrument is both a synthesizer and a playback system. We are curious about the effects of modulating the rotation speed of the speakers. E.g. what happens if the frequency of rotation and the frequency of the played sound are exactly the same or vary slightly? How can we implement changes of direction?


Fig. 6. 3D printing

Fig. 7. 3D printing

Fig. 8. installing, programming, rotating

Fig. 9. installing, programming, rotating

### ~composition
How can the function of inside- and outsideness of topological structures be interpreted by applying mathematical ideas to the sound synthesis process? And how can the counterintuitive shape of the Moebius strip, its surface, its twists and the points which draw its outline inspire a compositional and performative structure? How do we position ourselves and the listeners within a performance? Is it possible to synthesize a dynamic sonic sculpture? And can we sonically perceive its formal character? What other ways are there to synthesize concrete points into something continuous? Where else do we find discrete points turning into something continuous? Where is the threshold? And how to wander around the threshold?

### ~lecture performance
During our lecture performance, we introduce not only the concept but also articulate critical arguments of our project proposal for Speculative Sound Synthesis, which will be realized during our residency at IEM Graz in April and May 2025.

The lecture performance is accompanied by musical interruptions. This is done by performing with the prototype of our instrument – two rotating loudspeakers, as the analogue of (de)composition of a torus. The prototype of the installation and sound synthesis is interpreted live within SuperCollider.

### References
Barr, Stephen. 1964. Experiments in Topology. Dover Books on Mathematics.

Stockhausen, Karlheinz. 1963. “…wie die Zeit vergeht…” In Texte zur elektronischen und instrumentalen Musik. Band 1: Aufsätze 1952-1962 zur Theorie des Komponierens, edited by Dieter Schnebel, 99-139. Köln: Verlag M. DuMont Schauberg.

### Footnotes
We refer here to K. Stockhausen’s …Wie die Zeit vergeht… 

In topological terms, the genus of a surface refers to the number of “holes”. A sphere (genus 0) has no holes. A torus is a surface with one hole. 

Two things may be other things as well, like a relation, or a morphism.

Tags: (de)Composition , algebraic topology , auditory perception , kinetic installation , sonification , spatialization , SuperCollider , transformation

