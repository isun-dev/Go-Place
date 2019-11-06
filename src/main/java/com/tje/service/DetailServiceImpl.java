package com.tje.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tje.domain.DetailCommonVO;
import com.tje.domain.ImageVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class DetailServiceImpl implements DetailService {

	// 디테일 Common
	@Override
	public List<DetailCommonVO> getDetailCommon(String contentTypeId, String contentId) {

		XMLParser xml = new XMLParser();
		String mainURL = xml.setDetailURL(contentTypeId, contentId);
		log.info("detailService XML URL :" + xml.setDetailURL(contentTypeId, contentId));
		List detailCommonVO = xml.parserXML(mainURL);
		return detailCommonVO;

	}

	// 디테일 이미지
	@Override
	public List<ImageVO> getDetailImage(String contentTypeId, String contentId) {
		XMLParser xml = new XMLParser();
		String mainURL = xml.setImageURL(contentTypeId, contentId);
		log.info("getDetailImage XML URL :" + xml.setImageURL(contentTypeId, contentId));
		List imageVO = xml.parserXML(mainURL);
		return imageVO;
	}

	// 디테일 정보
	@Override
	public List<Object> getDetailIntro(String contentTypeId, String contentId) {
		XMLParser xml = new XMLParser();
		String mainURL = xml.setIntroURL(contentTypeId, contentId);
		log.info("getDetailIntro XML URL :" + xml.setIntroURL(contentTypeId, contentId));
		List introVO = xml.parserXML(mainURL);
		return introVO;
	}

}
