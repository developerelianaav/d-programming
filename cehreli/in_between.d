import std.stdio;

void main() {
	write("Please, input a integer: ");
	int value;
	readf(" %s", &value);

	writeln("Is in between?: ", (value > 10) && (value < 20));
}
