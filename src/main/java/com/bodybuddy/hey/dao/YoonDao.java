package com.bodybuddy.hey.dao;

import java.util.List;
import java.util.Map;

import com.bodybuddy.hey.bean.Counsel;
import com.bodybuddy.hey.bean.Member;
import com.bodybuddy.hey.bean.OpCategory;
import com.bodybuddy.hey.bean.Review;


public interface YoonDao {

	List<Map<String, String>> mainList();
	
	List<Map<String, String>> mainListCate(String cate);

	List<Map<String, String>> dibsN(String d_id);

	List<Map<String, String>> mainListMap(Map<String, String> local);

	List<Map<String, String>> getproListN(String m_id);

	List<Map<String, String>> getnormalListN(String m_id);

	List<Map<String, String>> getpayListN(String m_id);

	Member getModifyN(String m_id);

	Member getPhotoModifyN(String m_id);

	List<Map<String, String>> getdibs(String m_id);

	boolean reviewInsert(Review rv);

	boolean reviewOverlap(Review rv);
	
	List<Map<String, String>> getCounsel(String cs_opcode, String cs_mid);

	Counsel getcounselN(Counsel cs);

	List<Map<String, String>> getCounsel(Map<String, String> cs);

	int imgOverlap(String m_id);

	boolean fileInsert(Map<String, String> fMap);

	boolean fileUpdate(Map<String, String> fMap);

	void updateNorMb(Member mb);

	String getDailyCheck(Map<String, String> cs);

	
}