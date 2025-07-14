import std.stdio;
import std.process;

void main() {
	int rounds = 0;
	int maxTries = 3;
	int playerOneWins = 0;
	int playerTwoWins = 0;

	while (rounds < 1 || rounds > 10) {
		write("How many rounds will you play? ");
		readf(" %s", &rounds);
	}

	for (int i = 0; i < rounds; ++i) {
		wait(spawnProcess("clear"));

		if (i % 2) {
			int playerOneNumber = 0;
			int playerTwoGuess = 0;

			while (playerOneNumber < 1 || playerOneNumber > 10) {
				write("What number do you have in mind Player 1? ");
				readf(" %s", &playerOneNumber);
				writeln();
			}

			wait(spawnProcess("clear"));

			while (playerTwoGuess < 1 || playerTwoGuess > 10) {
				write("Player 2, Guess what number Player 1 wrote! ");
				readf(" %s", &playerTwoGuess);
				writeln();
			}
			if (playerOneNumber == playerTwoGuess) {
				++playerTwoWins;
			} else {
				++playerOneWins;
			}
		}
		else {
			int playerTwoNumber = 0;
			int playerOneGuess = 0;

			while (playerTwoNumber < 1 || playerTwoNumber > 10) {
				write("What number do you have in mind Player 2? ");
				readf(" %s", &playerTwoNumber);
				writeln();
			}

			wait(spawnProcess("clear"));

			while (playerOneGuess < 1 || playerOneGuess > 10) {
				write("Player 1, Guess what number Player 2 wrote! ");
				readf(" %s", &playerOneGuess);
				writeln();
			}
			if (playerTwoNumber == playerOneGuess) {
				++playerOneWins;
			} else {
				++playerTwoWins;
			}
		}
	}

	if (playerOneWins > playerTwoWins) {
		if ((playerOneWins - playerTwoWins) >= 3) {
			writeln("Player 1 dominates: ", playerOneWins, " - ", playerTwoWins);
		} else {
			writeln("Player 1 wins: ", playerOneWins, " - ", playerTwoWins);
		}
	} else if (playerTwoWins > playerOneWins) {
		if ((playerTwoWins - playerOneWins) >= 3) {
			writeln("Player 2 dominates: ", playerTwoWins, " - ", playerOneWins);
		} else {
			writeln("Player 2 wins: ", playerTwoWins, " - ", playerOneWins);
		}
	} else {
		writeln("It's a draw: ", playerOneWins, " - ", playerTwoWins);
	}
}
