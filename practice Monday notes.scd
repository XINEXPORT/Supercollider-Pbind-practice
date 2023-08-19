(
Pbind(
	\scale, Scale.harmonicMinor,
	\degree, Pseq([0,1,2,3,4,5], inf),
	\dur, Prand ([0.8, 0.1, 0.4], inf),
	\amp, 0.5
).play;
)

Scale.directory;

(
Pbind(
	\midinote,Pseq([
		[10,12,14,16],
		[30,40,50],
		[-0,-2,-4,-8],
	], inf),
	\dur, 0.2,
	\amp, 0.4,
	\legato, [0.1, 0.5, 1]
).trace.play;
)



(
x = Pbind(
	\instrument,\Sinsaw,
	\midinote, Pseq([
		[0,10,80,40],
		[2,12,82,42],
		[4,14,84,44],
		[6,16,86,46],
		[8,18,88,48],
	], inf),
	\dur, Prand ([0.1,0.2,0.4], inf),
	\amp, 1,
	\ctranspose, 1,
	\legato, 0.5,
	\freq, 200
).trace.play;
)

(
y = Pbind(
	\instrument,\Sinsaw,
	\note, Pseq([
		[84,24,-10,-2],
		[85,36,-12, -4],
		[-86,(48),-16,-6, -4],
		[-76,52,-18,-8],
	], inf),
	\dur, Pwhite ([1,0.5], inf),
	\amp, 0.2,
	// \freq, 500
).trace.play;
)

x.free;
y.free;



























(
t = TempoClock(60/60);
Pbind(
	\note, Pseq([0, 12, -1, 4], inf),
	\ctranspose, [-0.4, 0, 0.1, 0.2, 0.4, 0.7] - 12,
	\dur, 1,
	\amp, 0.2,
).trace.play(t);
)


(
t = TempoClock (60,60);
Pbind(
	\midinote, Prand (20,33,4,2], inf),
	\dur, Pwhite ([0.4, 0.2, 0.5], inf),
	\amp, 2,
	\freq, 0.5
).play;
)


(
t = TempoClock (50/50);
Pbind (
	\note, Pseq ([20,25,80,98], inf),
	\dur, Pwhite ([3,2]),
	\amp, 0.5,
	\freq, 3

).play(t);
)





























