import std.stdio, std.file;

int main(string[] args)
{
	if (args.length == 1 ) {
		writefln("mv: no file provided");
		return(-1);
	}

	if ((args.length > 1) && (std.file.exists(args[1]))) {
		string file1 = args[1];
		string file2 = args[2];
		
		copy(file1, file2);
		remove(file1);
	} else {
		writefln("mv: %s: no such file", args[1]);
	}
	return 0;
}


