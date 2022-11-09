package main.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import main.service.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAO extends EgovAbstractDAO {

	// 등록하기
	public String insertNotice(NoticeVO vo)  {

		return (String) insert("noticeDAO.insertNotice", vo);
	}

	// 목록
	public List<?> selectNoticeList(NoticeVO vo) {
	
		return list("noticeDAO.selectNoticeList",vo);
	}

	// 총 게시물 수
	public int selectNoticeTotal(NoticeVO vo) {
		
		return (int) select("noticeDAO.selectNoticeTotal", vo);
	}

	// 상세화면
	public NoticeVO selectNoticeDetail(int unq) {
		
		return (NoticeVO) select("noticeDAO.selectNoticeDetail", unq);
	}

	// 조회수 증가
	public int updateNoticeHits(int unq) {
	
		return update("noticeDAO.updateNoticeHits", unq);
	}

	// 수정처리
	public int updateNotice(NoticeVO vo) {
		
		return update("noticeDAO.updateNotice", vo);
	}

	// 삭제하기
	public int deleteNotice(NoticeVO vo) {
		
		return delete("noticeDAO.deleteNotice", vo);
	}

	public int selectPass(NoticeVO vo) {
		
		return (int) select("noticeDAO.selectPass", vo);
	}

}
