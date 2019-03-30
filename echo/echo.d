import std.stdio;

void main(string[] args)
{
	if (args.length == 1) {
 		writef("\n");
	} else {
		foreach(arg; args[1 ..args.length])
		{
			writef("%s ", arg);	
		}
		writef("\n");
	}
}

	