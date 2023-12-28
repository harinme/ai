package javaApp2.ch15.sec02;

import java.util.Stack;

public class StackEx {

	public static void main(String[] args) {
		// 676p
		Stack<Coin> coinBox = new Stack<Coin>();
		coinBox.push( new Coin(100));
		coinBox.push( new Coin(50));
		coinBox.push( new Coin(500));
		coinBox.push( new Coin(10));
		coinBox.push( new Coin(500)); // 중복 저장 가능
		coinBox.push( new Coin(500));
		System.out.println(coinBox.size()); // 6개
		while (!coinBox.isEmpty()) {
			coinBox.pop();//---.pop 꺼내는것
			Coin coin=coinBox.pop();
			System.out.println("꺼내온 동전: "+ coin.getValue());
		}

	}

}

class Coin{
	private int value;
	
	public Coin(int value) {
		this.value=value;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
	
	
}