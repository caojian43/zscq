package test;

/**
 * <p>当各个类均含有默认的构造器。编译器可以轻松地调用它们是因为不必考虑要传递什么样的参数的问题。
 * 但是，如果没有默认的基类构造器，或者想调用一个带参数的基类构造器，就必须用关键字super显式地
 * 编写基类构造器的语句，并且配以适当的参数列表。</p>
 * @author caoj
 *
 */
public class Chess extends BoardGame{

	Chess() {
		System.out.println("Chess constructor");
	}
	
	Chess(int i) {
		System.out.println("Chess constructor with argument");
	}
	
	public static void main(String[] args) {
		Chess x = new Chess(1);
	}
}

class Game {
	
	Game(){
		System.out.println("Game constructor without argument");
	}
	Game(int i) {
		System.out.println("Game constructor");
	}
}

class BoardGame extends Game {
	BoardGame() {
		System.out.println("BoardGame constructor without argument");
	}
	BoardGame(int i) {
		super(i);
		System.out.println("BoardGame constructor");
	}
}
