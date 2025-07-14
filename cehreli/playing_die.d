import std.stdio;

void main() {
	int dieValue;
	write("What did you get? ");
	readf(" %s", &dieValue);

	if (dieValue < 1 || dieValue > 6) {
		writeln("ERROR: ", dieValue, " ", "is invalid!");
	} else if (dieValue >= 4) {
		writeln("You won!");
	} else {
		writeln("I win!");
	}
}
