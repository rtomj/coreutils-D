import std.stdio, std.process;

void main()
{
	string[] path = ["SHELL", "PWD", "TERM", "USER", "DISPLAY", "PATH", "MAIL"];
	foreach(p; path[0 .. path.length])
	{
		writefln("%s=%s",p, environment[p]);
	}
	
}