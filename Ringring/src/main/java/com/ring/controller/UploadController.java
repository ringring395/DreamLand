package com.ring.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.ring.model.UploadVO;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class UploadController {

	
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public void upload() {
		
	}
	
//년,월,일 폴더 생성하는 메소드 선언
	private String getFolder() {
		
		//현재 날짜 : Mon Oct 17 09:23:12 KST 2022
		Date date = new Date();
		//간단날짜형식 : Mon Oct 17 09:23:12 KST 2022 -> 2022-10-17
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//현재날짜 date와 간단날짜형식 sdf 연결 : 2022-10-17
		String str = sdf.format(date);
		//문자찾아바꾸기 : 2022-10-17 -> 2022\10\17
		return str.replace("-", "\\");
	}
	
	
// 업로드 파일이 이미지 파일인지 아닌지 구분하는 메소드 선언
	//		반환타입	메소드명		타입	변수명
	private boolean checkImageType(File file) {
		// probeContentType(파일 경로) : 파일 경로에 있는 파일 타입을 알아내는 메소드
		try {
			String contentType = Files.probeContentType(file.toPath());
			//System.out.println("contentType="+contentType);	
			//파일타입이 image이면 true, 그 외에는 false
			return contentType.startsWith("image");
			
		}catch(IOException e){
			e.printStackTrace();
		}
		return false;
	}
	
	
	// 이미지 메인
	@RequestMapping(value = "/imgMain", method = RequestMethod.POST)
	public ResponseEntity<UploadVO> uploadMain(MultipartFile imgMain) {
		// UploadVO
		UploadVO up = new UploadVO();
		// 폴더 경로
		String uploadFolder = "D:\\01-STUDY\\upload";

		// 서버 업로드 경로와 getFolder 메서드의 날짜문자열을 이어서 하나의 폴더 생성
		File uploadPath = new File(uploadFolder, getFolder());

		// 폴더생성(D:\\01-STUDY\\upload\\현재날짜)
		if (uploadPath.exists() == false) {// uploadPath가 존재하지 않으면,
			uploadPath.mkdirs();
		}
		
			//System.out.println(imgMain.getOriginalFilename());
			//System.out.println(imgMain.getSize());
			// 실제 파일명( getOriginalFilename())
			// UUID 적용(UUID_ getOriginalFilename());
			UUID uuid = UUID.randomUUID();
			System.out.println("UUID=" + uuid.toString());

			// UploadVO의 uploadPath 변수에 저장()
			up.setUploadPath(getFolder());
			// UploadVO의 fileName 변수에 저장()
			up.setFileName(imgMain.getOriginalFilename());
			// UploadVO의 uuid 변수에 저장()
			up.setUuid(uuid.toString());
			// UploadVO의 i_type 변수에 저장
			up.setI_type("m");

			// 파일 저장 어느폴더에( D:\\01-STUDY\\upload\\ 현재날짜) ,어떤 파일이름으로 (비정규식.png)
			File saveFile = new File(uploadPath, uuid.toString() + "_" + imgMain.getOriginalFilename());

			// D:\\01-STUDY\\upload\\비정규식.png에 파일을 전송(transferTo)

			try {// transferTo() 메소드에 예외가 있으면
				imgMain.transferTo(saveFile); // 서버로 원본파일 전송
				// 내가 서버에 올리고자 하는 파일이 이미지이면,
				if (checkImageType(saveFile)) {					
					//파일 생성
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"th_"+uuid.toString()+"_"+imgMain.getOriginalFilename()));
					//썸네일 생성	(너비,높이)
					Thumbnailator.createThumbnail(imgMain.getInputStream(),thumbnail,150,150);
					thumbnail.close();			
				} // checkImageType메서드 끝

			} catch (Exception e) {// 예외를 처리하라.
				System.out.println(e.getMessage());
			}

		//} // for문 끝
		return new ResponseEntity<>(up, HttpStatus.OK);
	}// uploadMain 끝
	
	
	// 이미지 서브
	@RequestMapping(value = "/imgSub", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<UploadVO>> uploadSub(MultipartFile[] imgSub) {
		// UploadVO
		ArrayList<UploadVO> uplist = new ArrayList<>();
		// 폴더 경로
		String uploadFolder = "D:\\01-STUDY\\upload";

		// 서버 업로드 경로와 getFolder 메서드의 날짜문자열을 이어서 하나의 폴더 생성
		File uploadPath = new File(uploadFolder, getFolder());

		// 폴더생성(D:\\01-STUDY\\upload\\현재날짜)
		if (uploadPath.exists() == false) {// uploadPath가 존재하지 않으면,
			uploadPath.mkdirs();
		}

		// for(변수명:배열명)
		for (MultipartFile multi : imgSub) {
			// UploadVO클래스의 새로운 주소를 반복적으로 생성하여
			// ArrayList에 저장
			UploadVO up = new UploadVO();

			System.out.println(multi.getOriginalFilename());
			System.out.println(multi.getSize());
			// 실제 파일명( multi.getOriginalFilename())
			// UUID 적용(UUID_ multi.getOriginalFilename());
			UUID uuid = UUID.randomUUID();
			System.out.println("UUID=" + uuid.toString());

			// UploadVO의 uploadPath 변수에 저장()
			up.setUploadPath(getFolder());
			// UploadVO의 fileName 변수에 저장()
			up.setFileName(multi.getOriginalFilename());
			// UploadVO의 uuid 변수에 저장()
			up.setUuid(uuid.toString());
			// UploadVO의 i_type 변수에 저장
			up.setI_type("s");

			// 파일 저장 어느폴더에( D:\\01-STUDY\\upload\\ 현재날짜) ,어떤 파일이름으로 (비정규식.png)
			File saveFile = new File(uploadPath, uuid.toString() + "_" + multi.getOriginalFilename());

			// D:\\01-STUDY\\upload\\비정규식.png에 파일을 전송(transferTo)
			try {// transferTo() 메소드에 예외가 있으면
				multi.transferTo(saveFile); // 서버로 원본파일 전송
				// 내가 서버에 올리고자 하는 파일이 이미지이면,
				if (checkImageType(saveFile)) {
					//파일 생성
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"th_"+uuid.toString()+"_"+multi.getOriginalFilename()));
					//썸네일 생성	(너비,높이)
					Thumbnailator.createThumbnail(multi.getInputStream(),thumbnail,150,150);					
					thumbnail.close();
				} // checkImageType메서드 끝

				// UploadVO에 저장된 데이터를 배열의 추가
				uplist.add(up);

			} catch (Exception e) {// 예외를 처리하라.
				System.out.println(e.getMessage());
			}

		} // for문 끝
		return new ResponseEntity<>(uplist, HttpStatus.OK);
	}// uploadSub 끝	
	
	
	
	//이미지 주소 생성
	@RequestMapping(value = "/display", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getFile(String fileName){
		System.out.println(fileName);
		
		File file = new File("D:\\01-STUDY\\upload\\"+fileName);
		
		ResponseEntity<byte[]> result = null;
		//herder가 content-type 파악할수 있다.
		HttpHeaders headers = new HttpHeaders(); 
		try {
			headers.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),
					headers,HttpStatus.OK);			
		}catch(Exception e){
			e.printStackTrace();
		}		
		return result;
	}//getFile 닫음
	
	//다운로드 주소 생성
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public ResponseEntity<Resource> downloadFile(String fileName){
		
		Resource resource = new FileSystemResource("D:\\01-STUDY\\upload\\"+fileName);
		
		//다운로드 시 파일의 이름을 처리
		String resourceName = resource.getFilename();
		
		HttpHeaders headers = new HttpHeaders(); 
		try {
			//다운로드 파일이름이 한글일 때, 깨지지 않게 하기 위한 설정			
			headers.add("Content-Disposition", "attachment;filename="
						+new String(resourceName.getBytes("utf-8"),"ISO-8859-1"));
		}catch(Exception e) {
			e.printStackTrace();
		}
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}
	
	
	
	
	
	
}
