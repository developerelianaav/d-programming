import std.stdio;

void main() {
	int dieValue;
	write("What did you get? ");
	readf(" %s", &dieValue);

	if (dieValue < 1 || dieValue > 1000) {
		writeln("ERROR: ", dieValue, " ", "is invalid!");
	} else if (dieValue <= 500) {
		writeln("You won!");
	} else {
		writeln("I win!");
	}
}
