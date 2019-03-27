import std.stdio;

void main(string[] args)
{
	if (args.length > 1) {
		for (;;) 
			writeln(args[1]);
	} else {
		for (;;) 
			writeln("y");
	}
}
