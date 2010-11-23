all: images/* 

%: %.xml
	xsltproc -o $@ -nonet http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl $<
	
%: %.jpg
	convert -define jpeg:size=200x200 hatching_orig.jpg  -thumbnail 100x100^ \
	-gravity center -extent 100x100  cut_to_fit.gif
