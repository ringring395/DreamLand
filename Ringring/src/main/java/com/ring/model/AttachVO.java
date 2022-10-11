package com.ring.model;

public class AttachVO {
	
	//1. 파일이 저장되어 있는 경로
	private String uploadPath;
	//2. 업로드된 파일명	
	private String fileName;	
	//3. uuid
	private String uuid;
	//4. 업로드된 파일이 이미지 파일인지 아닌지에 대한 정보
	private boolean image;
	//5. 게시판 번호
	private int i_no;
	//6. 사진 종류(이벤트종류+메인or서브)
	private String i_type;
	
	

	//getter &setter
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public boolean isImage() {
		return image;
	}
	public void setImage(boolean image) {
		this.image = image;
	}
	public int getI_no() {
		return i_no;
	}
	public void setI_no(int i_no) {
		this.i_no = i_no;
	}
	public String getI_type() {
		return i_type;
	}
	public void setI_type(String i_type) {
		this.i_type = i_type;
	}
	
	@Override
	public String toString() {
		return "AttachFileVO [uploadPath=" + uploadPath + ", fileName=" + fileName + ", uuid=" + uuid + ", image="
				+ image + ", i_no=" + i_no + ", i_type=" + i_type + "]";
	}
	

}
