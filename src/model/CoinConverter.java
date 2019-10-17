package model;

public class CoinConverter {
	
	private int cents;
	private int dollars;
	private int quarters;
	private int	nickels;
	private int dimes;
	private int pennies;
	
	public CoinConverter() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CoinConverter(int cents) {
		super();
		this.cents = cents;
		setCoins(cents);
	}
	
	public void setCents(int cents) {
		this.cents = cents;
		setCoins(cents);
	}
	
	public int getCents() {
		return cents;
	}
	
	//OTHER GETTERS AND SETTERS FOR INSTANCE VARIABLES
	//they are not modified
	
	public void setCoins(int cents) {
		final int DOLLARS = 100;
		final int QUARTERS = 25;
		final int DIMES = 10;
		final int NICKELS = 5;
		
		int centsLeft;
		
		setDollars(cents / DOLLARS);
		centsLeft = cents % DOLLARS;
		
		setQuarters(centsLeft / QUARTERS);
		centsLeft = centsLeft % QUARTERS;
		
		setDimes(centsLeft / DIMES);
		centsLeft = centsLeft % DIMES;
		
		setNickels(centsLeft / NICKELS);
		
		setPennies(centsLeft % NICKELS);
	}
	

	/**
	 * @return the dollars
	 */
	public int getDollars() {
		return dollars;
	}

	/**
	 * @param dollars the dollars to set
	 */
	public void setDollars(int dollars) {
		this.dollars = dollars;
	}

	/**
	 * @return the quarters
	 */
	public int getQuarters() {
		return quarters;
	}

	/**
	 * @param quarters the quarters to set
	 */
	public void setQuarters(int quarters) {
		this.quarters = quarters;
	}

	/**
	 * @return the nickels
	 */
	public int getNickels() {
		return nickels;
	}

	/**
	 * @param nickels the nickels to set
	 */
	public void setNickels(int nickels) {
		this.nickels = nickels;
	}

	/**
	 * @return the dimes
	 */
	public int getDimes() {
		return dimes;
	}

	/**
	 * @param dimes the dimes to set
	 */
	public void setDimes(int dimes) {
		this.dimes = dimes;
	}

	/**
	 * @return the pennies
	 */
	public int getPennies() {
		return pennies;
	}

	/**
	 * @param pennies the pennies to set
	 */
	public void setPennies(int pennies) {
		this.pennies = pennies;
	}

	@Override
	public String toString() {
		return "CoinConverter [cents=" + cents + ", dollars=" + dollars + ", quarters=" + quarters + ", nickels="
				+ nickels + ", dimes=" + dimes + ", pennies=" + pennies + "]";
	}
	
	
	
	

}
