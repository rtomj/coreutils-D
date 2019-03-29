import std.stdio, std.string, std.file;

void main(string[] args)
{
	if (args.length == 1 ) {
		char[] input;
		while (stdin.readln(input)) {
			write(input);
		}
	} else if (args.length > 1) { 
		foreach(arg; args[1 .. args.length])
		{
			if (!std.file.exists(arg)) {
				fileError(arg);
			} else {
				readFile(arg);
			}
		}
	} else {
		fileError(args[1]);
	}
}

void readFile(string l)
{
	auto file = File(l, "r");
	while (!file.eof()) {
		string line = chomp(file.readln());
		writeln(line);
	}
	file.close();
}

void fileError(string f)
{
	writefln("cat: %s: no such file", f);
}

