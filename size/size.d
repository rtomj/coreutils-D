import std.stdio, std.file;

void main(string[] args)
{
	if (args.length == 1) {
		writefln("size: no such file");
	} else {
		/* redo this */
		auto file = args[1];
		if (std.file.exists(file)) {
			writefln("bytes   hex   filename");
			writefln("%s            %s", getSize(file), file);
			//writeln(getSize(file));
		} else {
			writefln("size: %s: no such file", file);
		}
	}	
}