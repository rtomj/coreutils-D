import std.stdio, std.file;

/* todo - rewrite this */

void main(string[] args)
{
	if (args.length == 1 ) {
		writefln("mv: missing file operand");
	} else if (args.length > 1) {
		if (!std.file.exists(args[1])) {
			writefln("mv: %s: no such file", args[1]);
		} 
		
		if (args.length < 3) {
			writefln("mv: missing destination file after %s", args[1]);
		} else {
			string file1 = args[1];
			string file2 = args[2];

			if (file1 == file2 ) {
				writefln("mv: '%s' and '%s' are the same file", file1, file2);
			} else {
				copy(file1, file2);
				remove(file1);
			}
		}
	} else {
		writefln("mv: %s: no such file", args[1]);
	}
}


