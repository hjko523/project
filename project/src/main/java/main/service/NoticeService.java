package main.service;

import java.util.List;

public interface NoticeService {

	// 등록하기
	public String insertNotice(NoticeVO vo) throws Exception;
	
	// 목록
	public List<?> selectNoticeList(NoticeVO vo) throws Exception;
		
	// 총 게시물 수
	public int selectNoticeTotal(NoticeVO vo) throws Exception;
	
	// 상세화면
	public NoticeVO selectNoticeDetail(int unq) throws Exception;
		
	// 조회수 증가
	public int updateNoticeHits(int unq) throws Exception;
	
	// 수정처리
	public int updateNotice(NoticeVO vo) throws Exception;
	
	// 삭제처리
	public int deleteNotice(NoticeVO vo) throws Exception;
	
	// 암호확인
	public int selectPass(NoticeVO vo) throws Exception;
		
}
