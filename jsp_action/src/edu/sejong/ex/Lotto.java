package edu.sejong.ex;

public class Lotto {
	private String lottoStr = "";
	private int[] lottos = new int[6];
	
	public Lotto() {
		for(int i = 0; i < 6; i++) {
			int lotto = (int)(Math.random()*45 + 1);
			lottos[i] = lotto;
			for(int j = 0; j < i; j++) {
				if(lottos[i] == lottos[j]) {
					lotto = (int)(Math.random()*45 + 1);
					lottos[j] = lotto;
				}
			}
		}
		
		for(int i = 0; i < 6 ; i++) {
			lottoStr += (lottos[i] + " ");
		}
	}

	public String getLottoStr() {
		return lottoStr;
	}

	public void setLottoStr(String lottoStr) {
		this.lottoStr = lottoStr;
	}
}
