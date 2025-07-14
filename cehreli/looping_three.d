import std.stdio;

void main() {
	int number = 3;

	while (number == 3) {
		write("Please, input a number: ");
		readf(" %s", &number);
	}
}
