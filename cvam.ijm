function casait(inpath, outprefix) {
	open(inpath);
	saveAs("Tiff", outprefix + "_reformatted.tif");
	open(outprefix + "_reformatted.tif");
	run("8-bit");

	setThreshold(159, 255);
	setOption("BlackBackground", false);
	run("Convert to Mask", "method=Default background=Light");

	run("CASA2_1 ", "a,=10 b,=600 c,=1 d,=30 e,=0.11 f,=0.11 g,=0.11 h,=200 i,=0.33 j,_0=0.11 k,=100 l,=100 m,=0.11 n,=0.11 o,=100 p,=100 q,=100 r,=100 s,=26 t,=189.5 u,=0 v,=0 w,=1 x,=1");
	saveAs("Results", outprefix + "_results.txt");
}

function main() {
	arg = getArgument();
	args = split(arg, ":");
	inpath = args[0];
	outprefix = args[1];

	casait(inpath, outprefix);

	exit(0);
}

main();
