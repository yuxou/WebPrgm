//강의 목록 저장
package jspbook.pr36;

import java.util.List;
import java.util.ArrayList;

public class LectureManager {
	List<LectureBean> lectureList = new ArrayList<LectureBean>();
	
	public List<LectureBean> getLectureList() {
		return lectureList;
	}
	
	public void add(LectureBean lbean) {
		lectureList.add(lbean);
	}
	
	private static final int times = 6;
	private static final int days = 5;
	
	private int[][] typeMatrix = new int[times][days]; //과목타입 저장
	private int[][] titleMatrix = new int[times][days]; //과목명 저장
	private int[][] spanMatrix = new int[times][days]; //연강여부 저장
	
	public int[][] getTypeMatrix() {
		return typeMatrix;
	}

	public void setTypeMatrix(int[][] typeMatrix) {
		this.typeMatrix = typeMatrix;
	}

	public int[][] getTitleMatrix() {
		return titleMatrix;
	}

	public void setTitleMatrix(int[][] titleMatrix) {
		this.titleMatrix = titleMatrix;
	}

	public int[][] getSpanMatrix() {
		return spanMatrix;
	}

	public void setSpanMatrix(int[][] spanMatrix) {
		this.spanMatrix = spanMatrix;
	}
	
	//초기화
	public void init() {
		for (int i = 0; i < times; i++) {
			for (int j = 0; j < days; j++) {
				typeMatrix[i][j] = 0; 
				titleMatrix[i][j] = -1;
				spanMatrix[i][j] = 1;
			}
		}
	}
	
	public void buildMatrix(LectureBean lb) {
		//과목타입이 설정되었으면 Type 배열에 저장, type은 0부터 시작하지 않기 때문에 + 1
		if (lb.getType() != -1) {
			typeMatrix[lb.getTime() - 1][lb.getDay()] = (lb.getType() + 1);
		}

		//제목이 설정되었으면 Title 배열에 저장
		if (lb.getTitle() != -1) {
			titleMatrix[lb.getTime() - 1][lb.getDay()] = lb.getTitle();
		}

		//연강여부가 설정되었으면 값 저장
		if (lb.getConsecutive() != -1) {
			spanMatrix[lb.getTime() - 1][lb.getDay()] = lb.getConsecutive();
			//연강기간 동안의 값들을 0으로 설정해 강의 중복 막음
			for (int i = lb.getTime(); i < lb.getConsecutive() + lb.getTime() - 1; i++) {
				spanMatrix[i][lb.getDay()] = 0;
			}
		}
	}
}
