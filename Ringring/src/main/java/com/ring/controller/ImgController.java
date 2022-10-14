package com.ring.controller;

import java.io.File;
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

import com.ring.model.ImgVO;

@Controller
public class ImgController {
	
	@RequestMapping(value = "/imgform", method = RequestMethod.GET)
	public void imgform() {

	}

	@RequestMapping(value = "/imgform", method = RequestMethod.POST)
	public void imgformPost(MultipartFile[] uploadFile) {
		// 폴더 경로
		String imgFolder = "D:\\01-STUDY\\upload";

		// for(배열명:변수명)
		for (MultipartFile multi : uploadFile) {
			// 파일 저장 어느폴더에( D:\\01-STUDY\\upload) ,어떤 파일이름으로
			File saveFile = new File(imgFolder, multi.getOriginalFilename());
			
			try {// transferTo() 메소드에 예외가 있으면
				multi.transferTo(saveFile);		// D:\\01-STUDY\\upload\\비정규식.png에 파일을 전송(transferTo)
			} catch (Exception e) {				// 예외를 처리하라.
				System.out.println(e.getMessage());
			}
		}
	}

	@RequestMapping(value = "/imgAjax", method = RequestMethod.GET)
	public void imgAjax() {
	}

	// 년 , 월 , 일 폴더 생성하는 메서드 선언
	private String getFolder() {
		// 현재 날짜 추출(Fri Oct 14 12:10:12 KST 2022)
		Date date = new Date();
		System.out.println("No Format 현재날짜:" + date);
		
		// Fri Oct 14 12:10:12 KST 2022 -> 2022-10-14
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		// 현재날짜와 날짜 형식을 연결
		String str = sdf.format(date); // 2022-10-14
		
		// 2022-10-14 -> 2022\10\14로 변경
		System.out.println("Format 적용 현재 날짜:" + str);
		return str.replace("-", "\\");
	}

	// 내가 올리고자 하는 파일이 이미지 파일인지 아닌지 구분하는 메서드 선언
	// 반환타입 메소드명 타입 변수명
	private boolean checkImageType(File file) {
		// probeContentType(파일경로): 파일경로에 있는 파일타입을 알아내는 메서드
		try {
			String contentType = Files.probeContentType(file.toPath());
			System.out.println("contentType=" + contentType);
			// 파일타입이 image이면 true, 그 이외는 false
			return contentType.startsWith("image");

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	// 이미지(메인) 저장.
	@RequestMapping(value = "/imgMain", method = RequestMethod.POST)
	public ResponseEntity<ImgVO> imgMain(MultipartFile imgMain) {
		// ImgVO
		ImgVO img = new ImgVO();
		// 폴더 경로
		String imgFolder = "D:\\01-STUDY\\upload";

		// 서버 업로드 경로와 getFolder 메서드의 날짜문자열을 이어서 하나의 폴더 생성
		File uploadPath = new File(imgFolder, getFolder());

		// 폴더생성(D:\\01-STUDY\\upload\\현재날짜)
		if (uploadPath.exists() == false) {// uploadPath가 존재하지 않으면,
			uploadPath.mkdirs();
		}

		// 실제 파일명
		System.out.println(imgMain.getOriginalFilename());
		// UUID 적용(UUID_실제파일명);
		UUID uuid = UUID.randomUUID();
		System.out.println("UUID=" + uuid.toString());

		// ImgVO의 uploadPath 변수에 저장()
		img.setUploadPath(getFolder());
		// ImgVO의 fileName 변수에 저장()
		img.setFileName(imgMain.getOriginalFilename());
		// ImgVO의 uuid 변수에 저장()
		img.setUuid(uuid.toString());
		// ImgVO의 division 변수에 저장
		img.setI_type("m");

		// 파일 저장 어느폴더에( D:\\01-STUDY\\upload\\현재날짜), 어떤 파일이름으로 (비정규식.png)
		File saveFile = new File(uploadPath, uuid.toString() + "_" + imgMain.getOriginalFilename());

		// D:\\01-STUDY\\upload\\비정규식.png에 파일을 전송(transferTo)
		try {// transferTo() 메소드에 예외가 있으면
			imgMain.transferTo(saveFile);	 // 서버로 원본파일 전송
			// 내가 서버에 올리고자 하는 파일이 이미지이면,
			if (checkImageType(saveFile)) {
				// ImgVO의 image변수에 true값 저장()
				img.setImage(true);
			} // checkImageType메서드 끝
		} catch (Exception e) {		// 예외를 처리하라.
			System.out.println(e.getMessage());
		}

		return new ResponseEntity<>(img, HttpStatus.OK);
	}// imgMain 닫음
	
	
	// 이미지(서브) 저장.
	@RequestMapping(value = "/imgSub", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<ImgVO>> imgSub(MultipartFile[] imgSub) {
		// ImgVO
		ArrayList<ImgVO> imgList = new ArrayList<>();
		// 폴더 경로
		String imgFolder = "D:\\01-STUDY\\upload";

		// 서버 업로드 경로와 getFolder 메서드의 날짜문자열을 이어서 하나의 폴더 생성
		File uploadPath = new File(imgFolder, getFolder());

		// 폴더생성(D:\\01-STUDY\\upload\\현재날짜)
		if (uploadPath.exists() == false) {// uploadPath가 존재하지 않으면,
			uploadPath.mkdirs();
		}
		
		// for(변수명:배열명)
		for (MultipartFile multi : imgSub) {
			// ImgVO클래스의 새로운 주소를 반복적으로 생성하여
			// ArrayList에 저장
			ImgVO img = new ImgVO();

			// 실제 파일명(multi.getOriginalFilename())
			// UUID 적용(UUID_실제파일명);
			UUID uuid = UUID.randomUUID();
			System.out.println("UUID=" + uuid.toString());

			// ImgVO의 uploadPath 변수에 저장()
			img.setUploadPath(getFolder());
			// ImgVO의 fileName 변수에 저장()
			img.setFileName(multi.getOriginalFilename());
			// ImgVO의 uuid 변수에 저장()
			img.setUuid(uuid.toString());
			// ImgVO의 division 변수에 저장
			img.setI_type("s");

			// 파일 저장 어느폴더에( D:\\upload\\ 현재날짜) ,어떤 파일이름으로 (비정규식.png)
			File saveFile = new File(uploadPath, uuid.toString() + "_" + multi.getOriginalFilename());

			// D:\\upload\\비정규식.png에 파일을 전송(transferTo)

			try {// transferTo() 메소드에 예외가 있으면
				multi.transferTo(saveFile); // 서버로 원본파일 전송
				// 내가 서버에 올리고자 하는 파일이 이미지이면,
				if (checkImageType(saveFile)) {

					// ImgVO의 image 변수에 true값 저장()
					img.setImage(true);
				} // checkImageType메서드 끝

				// ImgVO에 저장된 데이터를 배열의 추가
				imgList.add(img);

			} catch (Exception e) {// 예외를 처리하라.
				System.out.println(e.getMessage());
			}
		} // for문 끝
		
		return new ResponseEntity<>(imgList, HttpStatus.OK);
	}// imgSub 닫음
	
	
	// 이미지 주소 생성
	@RequestMapping(value = "/imggetFile", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getFile(String fileName) {
		System.out.println(fileName);

		File file = new File("D:\\01-STUDY\\upload\\" + fileName);
		ResponseEntity<byte[]> result = null;
		HttpHeaders headers = new HttpHeaders();

		try {
			headers.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}//getFile메소드 끝
	
	
	//다운로드 주소 생성
	@RequestMapping(value = "/imgdownload", method = RequestMethod.GET)
	public ResponseEntity<Resource>downloadFile(String fileName){
		Resource resource = new FileSystemResource("D:\\01-STUDY\\upload\\" + fileName);
		
		//다운로드시 파일의 이름을 처리
		String resourceName=resource.getFilename();
		
		HttpHeaders headers = new HttpHeaders();
			try {
				//다운로드 파일이름이 한글일때, 깨지지 않게 하기 위한 설정
				headers.add("Content-Disposition","attachment;filename="
							 +new String(resourceName.getBytes("UTF-8"),"ISO-8859-1"));
			}catch(Exception e) {
			e.printStackTrace();
			}
		
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}

}
