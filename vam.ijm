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

run("CASA2v1 ", "a,=10 b,=600 c,=1 d,=15 e,=0.11 f,=0.11 g,=0.11 h,=30 i,=1.0 j,0=0.11 k,=100 l,=100 m,=0.11 n,=0.11 o,=100 p,=100 q,=100 r,=100 s,=26 t,=189.5 u,=0 v,=0 w,=1 x,=1");

// saveAs("Results", "/Users/laurenhulse/SR/9.25.24/s3v2_results.csv");
