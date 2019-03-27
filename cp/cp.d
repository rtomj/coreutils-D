import std.stdio, std.file;

int main(string[] args)
{
	if (args.length == 1) {
		writeln("cp: missing file operand");
		return(-1);
	}

	if (std.file.exists(args[1])) {
		copy(args[1], args[2]);
	} else {
		writefln("cp: %s: no such file", args[1]);
	}
	return 0;
}

