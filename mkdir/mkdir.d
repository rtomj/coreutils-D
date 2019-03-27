import std.stdio, std.file;

int main(string[] args)
{
	if (args.length == 1) {
		writeln("mkdir: missing operand");
		return -1;
	}

	if (std.file.exists(args[1])) {
		writefln("Directory %s already exists", args[1]);
	} else {
		mkdirRecurse(args[1]);
	}
	return 0;
}
