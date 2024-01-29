package org.project;

import java.util.Random;
import java.util.Scanner;

public class NumberGuessingGame {
  

    

	private int value;

    public NumberGuessingGame() {
    	this.value=500;
    }
    public NumberGuessingGame(int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}
	

	public void setValue(int value) {
		this.value = value;
	}
    
   public void setRandom(int minimum,int maximum) {
	   Random random=new Random();
	   this.value=random.nextInt((maximum-minimum)+1)+minimum;
   }
   
   public void increment() {
	   this.value++;
   }
}

