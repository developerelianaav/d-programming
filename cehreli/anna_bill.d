import std.stdio;

void main() {
	int annaNumber;

	while ((annaNumber < 1) || (annaNumber > 10)) {
		write("Anna, write a number for Bill to guess: ");
		readf(" %s", &annaNumber);
	}

	int billGuess;
	int guessTries;

	while (billGuess != annaNumber) {
		write("Bill, guess the number Anna wrote: ");
		readf(" %s", &billGuess);
		++guessTries;
	}

	writeln("Anna's number was: ", annaNumber);
	writeln("Bill's guess was: ", billGuess);
	writeln("After ", guessTries, " tries, Bill guessed correctly!");
}
