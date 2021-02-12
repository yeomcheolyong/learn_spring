package com.example.web.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/board/*")
public class BoardViewController {
     //--- 이 설정으로 "/boardarticle/" 이 포함되는 모든 URL은 BoardarticleCtrl를 거치게 된다.


	    @Autowired Board board;

	    //---* 등록
	    @RequestMapping("boardadd.sd")   // BoardarticleCtrl 클래스 명 위에 @RequestMapping("/boardarticle/*")가 없었다면 @RequestMapping("/boardarticle/boardarticleadd.sd") 로 작성되어야 한다.

	    public String add( @RequestParam Map<String, Object> param, ModelMap model ){

	        try{
	        	board.add( param, model );
	        }catch( Exception e ){
	            e.printStackTrace();
	        }

	        return "board/boardadd";
	    }

	    //---* 삭제
	    @RequestMapping("boarddel.sd")
	    public String del( @RequestParam Map<String, Object> param, ModelMap model ){

	        try{
	        	board.del( param, model );
	        }catch( Exception e ){
	            e.printStackTrace();
	        }

	        return "redirect:/board/boardlist.sd";

	    }


	    //---* 수정
	    @RequestMapping("boardedit.sd")
	    public String edit( @RequestParam Map<String, Object> param, ModelMap model ){

	        try{
	        	board.edit( param, model );
	        }catch( Exception e ){
	            e.printStackTrace();
	        }

	        return "board/boardedit";
	    }

	    //---* 저장
	    @RequestMapping("boardin.sd")
	    public String in( HttpServletRequest request, @RequestParam Map<String, Object> param, ModelMap model ){

	        try{
	        	board.in( request, param, model );
	        }catch( Exception e ){
	            e.printStackTrace();
	        }

	        return "redirect:/board/boardlist.sd";
	    }

	    //---* 리스트
	    @RequestMapping("boardlist.sd")
	    public String list( @RequestParam Map<String, Object> param, ModelMap model ){

	        try{
	        	board.list( param, model );
	        }catch( Exception e ){
	            e.printStackTrace();
	        }

	        return "board/boardlist";
	    }

	    //---* 업데이트
	    @RequestMapping( "boardup.sd" )
	    public String up( @RequestParam Map<String, Object> param, ModelMap model ){

	        try{
	        	board.up( param, model );

	        }catch( Exception e ){
	            e.printStackTrace();
	        }

	        return "redirect:/board/boardlist.sd";
	    }

	    //---* 보기
	    @RequestMapping( "boardview.sd" )
	    public String view( @RequestParam Map<String, Object> param, ModelMap model ){

	        try{
	        	board.view( param, model );
	        }catch( Exception e ){
	            e.printStackTrace();
	        }

	        return "board/boardview";
	    }


	    
}
