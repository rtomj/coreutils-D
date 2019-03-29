import std.stdio, std.file;

int main(string[] args)
{
	if (args.length == 1) {
		progError();
	} else if (args.length > 1 ) {
		if (!std.file.exists(args[1])) {
			fileError(args[1]);
		} else {
			foreach(arg; args[2 .. args.length]) {
				copy(args[1], arg);
			}
		}
	} else {
		fileError(args[1]);
	}
	return 0;
}

void fileError(string f)
{
	writefln("cp: %s: no such file", f);
}

void progError()
{
	writefln("cp: missing file operand");
}
