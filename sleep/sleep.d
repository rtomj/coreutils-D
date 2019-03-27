import std.stdio, core.thread, std.conv, std.string, std.exception, core.stdc.stdlib, std.traits;

int main(string[] args)
{
	if (args.length == 1) {
		writeln("sleep: missing operand");
		return -1;
	} else if ((args.length > 1) && (args.length > 2)) {
		/* to fix -> if user inputs a char, fatal error */
		//int sleepTime;
		//try {
		//	sleepTime = parse!int(input);
		//} catch (ConvException e) {}

		int sleepTime = to!int(args[1]);
		auto sleepOption = parse!char(args[2]);

		switch (sleepOption) {
			case 's':
				Thread.sleep(sleepTime.seconds);
				break;
			case 'm':
				Thread.sleep(sleepTime.minutes);
				break;
			case 'h':
				Thread.sleep(sleepTime.hours);
				break;
			case 'd':
				Thread.sleep(sleepTime.days);
				break;
			default:
				Thread.sleep(sleepTime.seconds);
				break;
		}
	} else if (args.length > 1 ) { 
		int sleepTime = to!int(args[1]);
		Thread.sleep(sleepTime.seconds);
	}
	return 0;
}
