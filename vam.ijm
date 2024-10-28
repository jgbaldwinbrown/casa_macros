// Make sure you convert your video to a tif, then have it open when you start the macro.
// Then start the macro, then make sure to save the results.

// open("/Users/laurenhulse/SR/9.25.24/s3.avi");
// close();
// open("/Users/laurenhulse/SR/9.25.24/s3.tif");

setAutoThreshold("Default");
run("Threshold...");
setThreshold(159, 255);
setOption("BlackBackground", false);
run("Convert to Mask", "method=Default background=Light");

run("CASA2 ", "a,=10 b,=600 c,=1 d,=30 e,=0.11 f,=0.11 g,=0.11 h,=200 h,_0=0.11 i,=100 j,=100 k,=0.11 l,=0.11 m,=100 n,=100 o,=100 p,=100 q,=26 r,=189.5 s,=0 t,=0 u,=1 v,=1");

// saveAs("Results", "/Users/laurenhulse/SR/9.25.24/s3v2_results.csv");
