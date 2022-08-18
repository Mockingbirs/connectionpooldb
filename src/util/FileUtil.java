package util;

import java.io.*;

public class FileUtil {
	
	public static void saveImage(String root, String iname, byte[] ifile) throws IOException {
		//(위치, 파일명, 파일)
		root += "/images"; //file의 위치 설정
		File f = new File(root);
		
		if (!f.exists()) f.mkdir(); //디렉토리가 없으면 디렉토리 생성
		
		f = new File(root + "/" + iname); //file의 저장위치를 재설정
		FileOutputStream out = new FileOutputStream(f); //출력매서드 객체 생성
		out.write(ifile); //ifile 출력
		out.close();	//닫기
	}
}