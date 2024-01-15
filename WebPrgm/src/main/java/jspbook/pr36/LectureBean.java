//강의 정보 저장
package jspbook.pr36;

import jspbook.pr36.LectureBean;

public class LectureBean {
	private int type = -1;
	private int title = -1;
	private int day = -1;
	private int time = -1;
	private int consecutive = -1;
	
	static final String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
    static final String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
    static final String[] dayNames = {"월", "화", "수", "목", "금"};
    
	public static String[] getTypenames() {
		return typeNames;
	}

	public static String[] getTitlenames() {
		return titleNames;
	}

	public static String[] getDaynames() {
		return dayNames;
	}
	
	public String toString() {
		String rslt = "";
		
		rslt += LectureBean.typeNames[getType()] + "/";
		rslt += LectureBean.titleNames[getTitle()] + "/";
		rslt += LectureBean.dayNames[getDay()] + "/";
		rslt += getTime() + "/";
		rslt += getConsecutive() + "<br>";
		
		return rslt;
	}
	
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getTitle() {
		return title;
	}
	public void setTitle(int title) {
		this.title = title;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getConsecutive() {
		return consecutive;
	}
	public void setConsecutive(int consecutive) {
		this.consecutive = consecutive;
	}
}
