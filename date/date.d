import std.stdio, std.datetime.systime : SysTime, Clock;

void main()
{
	SysTime currentTime = Clock.currTime();
	writeln(currentTime);
}
