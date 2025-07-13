import std.stdio;

void main() {
	int a = 1, b = 2, c;

	writeln("The value of a is: ", a);
	writeln("The value of b is: ", b);

	c = a;
	a = b;
	b = c;

	writeln("The value of a is: ", a);
	writeln("The value of b is: ", b);
}
