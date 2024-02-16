package edu.sejong.ex;

import java.util.HashSet;
import java.util.Set;

public class Lotto {
	private String lottoStr = "";
	private int[] lottos = new int[6];
	private Set<Integer> lottos2 = new HashSet<Integer>();
	
	public Lotto() {
		// for문으로만 해결해보기
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
		
		// set으로 해결해보기
		while(true) {
			int lotto = (int)(Math.random()*45 + 1);
			lottos2.add(lotto);
			if(lottos2.size() == 6) {
				break;
			}			
		}
		
		// for문 사용 시 str 설정
//		for(int i = 0; i < 6 ; i++) {
//			lottoStr += (lottos[i] + " ");
//		}
		
		// set 사용 시 str 설정
		lottoStr = lottos2.toString();
	}

	public String getLottoStr() {
		return lottoStr;
	}

	public void setLottoStr(String lottoStr) {
		this.lottoStr = lottoStr;
	}
}
