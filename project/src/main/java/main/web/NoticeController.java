package main.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.service.NoticeService;
import main.service.NoticeVO;

@Controller
public class NoticeController {
	

	@Resource(name="noticeService") 
	private NoticeService noticeService;
	

	// Notice (List)
	@RequestMapping("/cafeSeraNotice.do")
	public String cafeSeraNotice(NoticeVO vo, ModelMap model ) throws Exception {	
		
		int unit = 5;
		
		/* 페이징처리 - total 개수 */		
		int total = noticeService.selectNoticeTotal(vo);
		
		/* 1 페이지 당 10개씩 출력 */
		
		int totalPage = (int) Math.ceil((double)total/unit);
		
		// 페이지 번호 클릭시 목록출력 
		int viewPage = vo.getViewPage();
		
		// 비정상 페이지수 접근시 1페이지가 출력되도록 설정
		if(viewPage > totalPage	|| viewPage < 1) {
			viewPage = 1;
		}
		
		// 1 페이지 -> 1, 10 => (1-1)*10 + 1
		// 2 페이지 -> 11, 20 => (2-1)*10 + 11
		int startIndex = (viewPage -1) * unit + 1;
		int endIndex = startIndex + (unit - 1);
		
		// 행 번호 		
		int startRowNo =  total - (viewPage -1)*unit;
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		// list 출력
		List <?> list = noticeService.selectNoticeList(vo);
		System.out.println("List : " + list);
		
		model.addAttribute("total", total);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("resultList", list);
		model.addAttribute("rowNumber", startRowNo);
		
		return "/cafeSera/notice";
	}
		
	// 상세보기
	@RequestMapping("/noticeDetail.do")
	public String selectNoticeDetail(NoticeVO vo, ModelMap model) throws Exception{
	
		// 조회수 증가
		noticeService.updateNoticeHits(vo.getUnq());
		
		// 화면출력
		NoticeVO noticeVO = noticeService.selectNoticeDetail(vo.getUnq());
		
		String content = noticeVO.getContent();
		
		// 내용 줄바꿈 허용
		noticeVO.setContent( content.replace("\n", "<br>"));
		model.addAttribute("noticeVO", noticeVO);
		
		return "/cafeSera/noticeDetail";
		}

		
	/*                */ 
	/* Notice Manager */
	/*                */	
	
	// 관리자모드 
	@RequestMapping("/noticePass.do")
	public String noticePass(String name, ModelMap model) {
		
		model.addAttribute("name", name);
		
		return "cafeSera/noticePass";
	}
	
	// 관리자모드 로그인
	@RequestMapping("/passCheck.do")
	@ResponseBody
	public String passCheck(NoticeVO vo)  throws Exception {

		int count = noticeService.selectPass(vo);
			
		String msg = ""; 
		if(count == 1) msg = "ok"; 
		else msg = "fail";
		 
		return msg;				
		
	}
	
	// Notice
	@RequestMapping("/noticeManager.do")
	public String cafeSeraNoticeManager(NoticeVO vo, ModelMap model ) throws Exception {	
		
		int unit = 5;
		
		/* 페이징처리 - total 개수 */		
		int total = noticeService.selectNoticeTotal(vo);
		
		/* 1 페이지 당 10개씩 출력 */
		
		int totalPage = (int) Math.ceil((double)total/unit);
		
		/* 페이지 번호 클릭시 목록출력 */
		int viewPage = vo.getViewPage();
		
		// 비정상 페이지수 접근시 1페이지가 출력되도록 설정
		if(viewPage > totalPage	|| viewPage < 1) {
			viewPage = 1;
		}
		
		// 1 페이지 -> 1, 10 => (1-1)*10 + 1
		// 2 페이지 -> 11, 20 => (2-1)*10 + 11
		int startIndex = (viewPage -1) * unit + 1;
		int endIndex = startIndex + (unit - 1);
		
		/* 행 번호 */		
		int startRowNo =  total - (viewPage -1)*unit;
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		// list 출력
		List <?> list = noticeService.selectNoticeList(vo);
		System.out.println("List : " + list);
		
		model.addAttribute("total", total);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("resultList", list);
		model.addAttribute("rowNumber", startRowNo);
		
		return "/cafeSera/noticeManager";
	}


	@RequestMapping("/noticeWrite.do")
	public String noticeWrite() {
		
		return "cafeSera/noticeWrite";		
	}

	
		
	 // 등록하기	
	@RequestMapping("/noticeWriteSave.do")  
	@ResponseBody	// ajax에게 결과를 다시 전송해주어야한다
	public String insertNotice(NoticeVO vo) throws Exception{
		// 저장이 정상실행될 경우 result = null
		String result = noticeService.insertNotice(vo);
		
		String msg = "";
		if(result == null) msg = "ok";
		else msg = "fail";
		
		return msg;
	}
	
	// 상세보기
	@RequestMapping("/noticeDetailManager.do")
	public String selectNoticeDetailManager(NoticeVO vo, ModelMap model) throws Exception{
	
		// 조회수 증가
		noticeService.updateNoticeHits(vo.getUnq());
		
		// 화면출력
		NoticeVO noticeVO = noticeService.selectNoticeDetail(vo.getUnq());
		
		String content = noticeVO.getContent();
		
		// 내용 줄바꿈 허용
		noticeVO.setContent( content.replace("\n", "<br>"));
		model.addAttribute("noticeVO", noticeVO);
		
		return "/cafeSera/noticeDetailManager";
		}

		
		// 수정페이지
		@RequestMapping("/noticeModify.do")
		public String selectNoticeModify(NoticeVO vo, ModelMap model) throws Exception{
			
			NoticeVO noticeVO = noticeService.selectNoticeDetail(vo.getUnq());
			
			model.addAttribute("noticeVO", noticeVO);
			
			return "cafeSera/noticeModify";
		}

		// 수정하기
		@RequestMapping("/noticeModifySave.do")		
		@ResponseBody
		public String updateNotice(NoticeVO vo) throws Exception{
			
			// 저장이 정상실행될 경우 result = null
			int result = noticeService.updateNotice(vo);
			System.out.println(result);
			
			
			String msg = ""; 
			if(result == 1) msg = "ok"; 
			else msg = "fail";
			 
			System.out.println(msg);
			 
			return msg;
			
		}

		// 삭제하기
		@RequestMapping("/noticeDelete.do")
		@ResponseBody
		public String deleteNotice(NoticeVO vo) throws Exception {
			
			// 저장이 정상실행될 경우 result = null
			int result = noticeService.deleteNotice(vo);
			System.out.println(result);
			
			
			String msg = ""; 
			if(result == 1) msg = "ok"; 
			else msg = "fail";
			 
			System.out.println(msg);
			 
			return msg;
		}

		@RequestMapping("/search.do")
		public String search() {
			
			return "cafeSera/search";
		}
		
}

	
