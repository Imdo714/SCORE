package com.kh.finalProject.place.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.common.vo.PageInfo;
import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.place.model.vo.Place;
import com.kh.finalProject.place.model.vo.PlaceImg;
import com.kh.finalProject.place.model.vo.Reservation;

@Repository
public class PlaceDao {
	
	public int insertPlace(SqlSessionTemplate sqlSession, Place p) {
	      
		return sqlSession.insert("placeMapper.insertPlace", p);
	}
	
	public int insertPlaceImg(SqlSessionTemplate sqlSession, PlaceImg pi) {
		return sqlSession.insert("placeMapper.insertPlaceImg", pi);
	
	}
	public int placeListCount(SqlSessionTemplate sqlSession, Place pl) {
		return sqlSession.selectOne("placeMapper.placeListCount", pl);
	}
	public ArrayList<Place> selectPlaceList(SqlSessionTemplate sqlSession, PageInfo pi, Place pl){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("placeMapper.selectPlaceList", pl, rowBounds);
	}
	public Place placeDetailview(SqlSessionTemplate sqlSession, int fieldNo) {
		return sqlSession.selectOne("placeMapper.placeDetailview", fieldNo);
	}
	public int placeResCount(SqlSessionTemplate sqlSession, int fieldNo) {
		return sqlSession.selectOne("placeMapper.placeResCount", fieldNo);
	}
	public ArrayList<Place> selectResPlaceList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("placeMapper.selectResPlaceList");
	}
	
	public ArrayList<Place> searchPlace(SqlSessionTemplate sqlSession, String selectValue) {
		return (ArrayList)sqlSession.selectList("placeMapper.searchPlace",selectValue);
	}
	
	public int insertResMatch(SqlSessionTemplate sqlSession, Reservation res) {
		return sqlSession.insert("placeMapper.insertResMatch", res);
	}
	public int payPoint(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.update("memberMapper.payPoint", loginUser);
	}
}
