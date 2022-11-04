package main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import main.service.NoticeService;
import main.service.NoticeVO;

@Service("noticeService")
public class NoticeServiceImpl extends EgovAbstractServiceImpl implements NoticeService{
	
	@Resource(name="noticeDAO")
	private NoticeDAO noticeDAO;
	
	// 등록하기
	@Override
	public String insertNotice(NoticeVO vo) throws Exception {
		
		return noticeDAO.insertNotice(vo);
	}

	// 목록
	@Override
	public List<?> selectNoticeList(NoticeVO vo) throws Exception {
		
		return noticeDAO.selectNoticeList(vo);
	}

	// 총 게시물수
	@Override
	public int selectNoticeTotal(NoticeVO vo) throws Exception {

		return noticeDAO.selectNoticeTotal(vo);
	}

	// 상세화면
	@Override
	public NoticeVO selectNoticeDetail(int unq) throws Exception {

		return noticeDAO.selectNoticeDetail(unq);
	}

	// 조회수 증가
	@Override
	public int updateNoticeHits(int unq) throws Exception {
		
		return noticeDAO.updateNoticeHits(unq);
	}
	
	// 수정처리
	@Override
	public int updateNotice(NoticeVO vo) throws Exception {

		return noticeDAO.updateNotice(vo);
	}

	// 삭제하기
	@Override
	public int deleteNotice(NoticeVO vo) throws Exception {
		
		return noticeDAO.deleteNotice(vo);
	}

	@Override
	public int selectPass(NoticeVO vo) throws Exception {
	
		return noticeDAO.selectPass(vo);
	}

}
