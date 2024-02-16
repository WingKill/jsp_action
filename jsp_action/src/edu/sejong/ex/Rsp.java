package edu.sejong.ex;

public class Rsp {
	static String[] rspRole = {"rock","scissor","paper"};
	private String rspStr;
	private String message;
	// 컴퓨터
	public Rsp() {
		int x = (int)(Math.random() * 3);
		this.rspStr = rspRole[x];
	}

	public String getRspStr() {
		return rspStr;
	}

	public void setRspStr(String rspStr) {
		this.rspStr = rspStr;
	}
	
	public void setMessage(Rsp rsp) {
		String playerRsp = rsp.getRspStr();
		String rock = rspRole[0];
		String scissor = rspRole[1];
		String paper = rspRole[2];
		if(rspStr.equals(playerRsp))
			message = "draw";
		if(rspStr.equals(rock) && playerRsp.equals(scissor)) 
			message = "player lose"; 			
		else if(rspStr.equals(rock) && playerRsp.equals(paper))
			message = "player win";
		else if(rspStr.equals(scissor) && playerRsp.equals(rock))
			message = "player win";
		else if(rspStr.equals(scissor) && playerRsp.equals(paper))
			message = "player lose";
		else if(rspStr.equals(paper) && playerRsp.equals(rock))
			message = "player lose";
		else if(rspStr.equals(paper) && playerRsp.equals(scissor))
			message = "player win";
	}
	
	public String getMessage() {
		return message;
	}
}
