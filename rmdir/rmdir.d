import std.stdio, std.file;

void main(string[] args)
{
	auto dir = args[1];
	if ((std.file.exists(dir)) && (isDir(dir))) {
		rmdir(dir);
	} else {
		writefln("rmdir: %s: no such directory");
	}
}

