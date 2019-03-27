import std.stdio, std.file, std.getopt;


void main(string[] args)
{
	getopt(args,
	 "-u",
	 "-v",
	 );
	if ((std.file.exists(args[1])) && (isDir(args[1]))) {
		writefln("rm: cannot remove directory %s", args[1]);
	} else if ((std.file.exists(args[1])) && (!isDir(args[1]))) {
		remove(args[1]);	
	} else {
		writefln("rm: %s: no such file", args[1]);
	}
}

void usage()
{
	writeln("rm -rv");
}
