import std.stdio, std.file, std.algorithm, std.array, std.path;

void main(string[] args)
{
	auto dir = getcwd();
	if (args.length == 1) {
		lFiles(dir);
	} else if (args.length > 1) {
		lFiles(args[1]);
	}

}

// Option 1
auto lFiles(string p)
{
	auto dirFiles= dirEntries(p, SpanMode.shallow);
	foreach (f; dirFiles)
		writefln("%s", f.name);
}

// Option 2
string[] listFiles(string path)
{
	return std.file.dirEntries(path, SpanMode.shallow)
		.filter!(a => a.isFile)
		.map!(a => baseName(a.name))
		.array;
}	
