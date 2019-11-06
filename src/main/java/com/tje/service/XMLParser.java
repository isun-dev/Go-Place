package com.tje.service;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.tje.domain.CategoryVO;
import com.tje.domain.DetailCommonVO;
import com.tje.domain.Detail_Intro_landmarkVO;
import com.tje.domain.Detail_Intro_shoppingVO;
import com.tje.domain.Detaill_Intro_restaurantsVO;
import com.tje.domain.ImageVO;

import lombok.extern.log4j.Log4j;

@Log4j
public class XMLParser {

	// 카테고리
	String head = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/";
	String command;
	String serviceKey = "?ServiceKey=서비스키를 입력하세요";
	String ContentTypeId = "&contentTypeId=";
	String AreaCode = "&areaCode=";
	String sigunguCode = "&sigunguCode=";
	String cat1;
	String cat2;
	String cat3;
	String listYN = "&listYN=Y";
	String mobileOS = "&MobileOS=ETC";
	String mobileApp = "&MobileApp=TourAPI3.0_Guide";
	String arrange = "&arrange=A";
	String numOfRows = "&numOfRows=12";
	String pageNo = "&pageNo=";
	String mainURL;
	String type;

	// 디테일 첫페이지
	String ContentId = "&contentId=";
	String defaultYN = "&defaultYN=Y";
	String firstImageYN = "&firstImageYN=Y";
	String areacodeYN = "&areacodeYN=Y";
	String catcodeYN = "&catcodeYN=Y";
	String addrinfoYN = "&addrinfoYN=Y";
	String mapinfoYN = "&mapinfoYN=Y";
	String overviewYN = "&overviewYN=Y";
	String transGuideYN = "&transGuideYN=Y";

	// 이미지
	String Image = "&imageYN=N";

	private static String getTagValue(String tag, Element eElement) {
		try {
			NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
			Node nValue = (Node) nlList.item(0);
			return nValue.getNodeValue();
		} catch (NullPointerException e) {
			return "";
		}
	}

	// 카테고리 URL
	public String setCateURL(String contentTypeId, String areaCode, String pageno) {
		command = "areaBasedList";

		log.info("xmlParser : setCateURL " + contentTypeId + ", " + areaCode + ", " + pageno);

		if (contentTypeId.equals("12")) {
			// 랜드마크 (건축물 조형물)
			cat1 = "&cat1=A02";
			cat2 = "&&cat2=";
			cat3 = "&&cat3=";
			this.mainURL = head + command + serviceKey + ContentTypeId + contentTypeId + AreaCode + areaCode
					+ sigunguCode + cat1 + cat2 + cat3 + listYN + mobileOS + mobileApp + arrange + numOfRows + pageNo
					+ pageno;
		}

		// 여행코스(가족코스)
		else if (contentTypeId.equals("25")) {
			cat1 = "&cat1=C01";
			cat2 = "&&cat2=C0112";
			cat3 = "&&cat3=";
			this.mainURL = head + command + serviceKey + ContentTypeId + contentTypeId + AreaCode + areaCode
					+ sigunguCode + cat1 + cat2 + cat3 + listYN + mobileOS + mobileApp + arrange + numOfRows + pageNo;
		}
		// 숙박 (관광호텔)
		else if (contentTypeId.equals("32")) {
			cat1 = "&cat1=B02";
			cat2 = "&&cat2=B0201";
			cat3 = "&&cat3=";
			this.mainURL = head + command + serviceKey + ContentTypeId + contentTypeId + AreaCode + areaCode
					+ sigunguCode + cat1 + cat2 + cat3 + listYN + mobileOS + mobileApp + arrange + numOfRows + pageNo;

		}

		// 쇼핑 ( 상설시장)
		else if (contentTypeId.equals("38")) {
			cat1 = "&cat1=A04";
			cat2 = "&&cat2=A0401";
			cat3 = "&&cat3=";
			this.mainURL = head + command + serviceKey + ContentTypeId + contentTypeId + AreaCode + areaCode
					+ sigunguCode + cat1 + cat2 + cat3 + listYN + mobileOS + mobileApp + arrange + numOfRows + pageNo
					+ pageno;
		}
		// 음식(한식)
		else if (contentTypeId.equals("39")) {
			cat1 = "&cat1=A05";
			cat2 = "&&cat2=A0502";
			cat3 = "&&cat3=";
			this.mainURL = head + command + serviceKey + ContentTypeId + contentTypeId + AreaCode + areaCode
					+ sigunguCode + cat1 + cat2 + cat3 + listYN + mobileOS + mobileApp + arrange + numOfRows + pageNo
					+ pageno;
		}
		return mainURL;
	}

	// 디테일 URL
	public String setDetailURL(String contentTypeId, String ContentId) {
		command = "detailCommon";
		log.info("xml Parser : setDetailURL " + contentTypeId + ", " + ContentId);
		this.mainURL = head + command + serviceKey + this.ContentTypeId + contentTypeId + this.ContentId + ContentId
				+ mobileOS + mobileApp + defaultYN + firstImageYN + areacodeYN + catcodeYN + addrinfoYN + mapinfoYN
				+ overviewYN + transGuideYN;

		return mainURL;
	}

	// 이미지 URL
	public String setImageURL(String contentTypeId, String ContentId) {
		command = "detailImage";
		log.info("xml Parser : setImageURL " + contentTypeId + ", " + ContentId);
		this.mainURL = head + command + serviceKey + this.ContentTypeId + contentTypeId + mobileOS + mobileApp
				+ this.ContentId + ContentId + Image;

		return mainURL;
	}

	// 상세 정보 URL
	public String setIntroURL(String contentTypeId, String ContentId) {
		command = "detailIntro";
		type = contentTypeId;
		log.info("xml Parser : setIntroURL " + contentTypeId + ", " + ContentId);

		this.mainURL = head + command + serviceKey + this.ContentTypeId + contentTypeId + this.ContentId + ContentId
				+ mobileOS + mobileApp;
		return mainURL;

	}

	// xml 파싱
	public List<Object> parserXML(String mainURL) {

		List<Object> list = new ArrayList<Object>();

		try {
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(mainURL);

			// root tag
			doc.getDocumentElement().normalize();
			log.info("Root element:" + doc.getDocumentElement().getNodeName());

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");
			log.info("파싱할 리스트수 :" + nList.getLength());

			// 지역기반 카테고리 URL 파싱
			if (this.command.equals("areaBasedList")) {
				for (int i = 0; i < nList.getLength(); i++) {
					Node nNode = nList.item(i);

					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) nNode;
						CategoryVO cateVO = new CategoryVO();

						// 이미지 없을 경우 파싱X
						if (getTagValue("firstimage", eElement) == "" || getTagValue("firstimage", eElement) == null) {
							continue;
						} else {

							cateVO.setAddr1(getTagValue("addr1", eElement));
							cateVO.setAreacode(getTagValue("areacode", eElement));
							cateVO.setContentid(getTagValue("contentid", eElement));
							cateVO.setContenttypeid(getTagValue("contenttypeid", eElement));
							cateVO.setFirstimage(getTagValue("firstimage", eElement));
							cateVO.setSigungucode(getTagValue("sigungucode", eElement));
							cateVO.setTel(getTagValue("tel", eElement));
							cateVO.setTitle(getTagValue("title", eElement));
							list.add(cateVO);
						}
					}
				}
			}
			// 디테일 URL 파싱
			else if (this.command.equals("detailCommon")) {
				for (int i = 0; i < nList.getLength(); i++) {
					Node nNode = nList.item(i);

					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) nNode;
						DetailCommonVO detailCommonVO = new DetailCommonVO();

						// 이미지 없을 경우 파싱X
						if (getTagValue("firstimage", eElement) == "" || getTagValue("firstimage", eElement) == null) {
							continue;
						} else {

							detailCommonVO.setContentid(getTagValue("contentid", eElement));
							detailCommonVO.setContenttypeid(getTagValue("contenttypeid", eElement));
							detailCommonVO.setAddr1(getTagValue("addr1", eElement));
							detailCommonVO.setAddr2(getTagValue("addr2", eElement));
							detailCommonVO.setFirstimage(getTagValue("firstimage", eElement));
							detailCommonVO.setFirstimage2(getTagValue("firstimage2", eElement));
							detailCommonVO.setMapx(getTagValue("mapx", eElement));
							detailCommonVO.setMapy(getTagValue("mapy", eElement));
							detailCommonVO.setOverview(getTagValue("overview", eElement));
							detailCommonVO.setHomepage(getTagValue("homepage", eElement));
							detailCommonVO.setTitle(getTagValue("title", eElement));
							detailCommonVO.setZipcode(getTagValue("zipcode", eElement));
							list.add(detailCommonVO);

							log.info("detailCommonVO : " + list);
						}
					}
				}
			}
			// 이미지 URL 파싱
			else if (this.command.equals("detailImage")) {
				for (int i = 0; i < nList.getLength(); i++) {
					Node nNode = nList.item(i);

					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) nNode;
						ImageVO imageVO = new ImageVO();

						// 이미지 없을 경우 파싱 X
						if (getTagValue("originimgurl", eElement) == ""
								|| getTagValue("originimgurl", eElement) == null) {
							continue;
						} else {
							imageVO.setContentid(getTagValue("contentid", eElement));
							imageVO.setOriginimgurl(getTagValue("originimgurl", eElement));
							list.add(imageVO);

							log.info("imageVO : " + list);
						}
					}
				}
			}
			// 랜드마크 상세정보 URL 파싱
			else if (this.type.equals("12") && this.command.equals("detailIntro")) {
				log.info("detailIntro type :12 파싱시작 " + this.type.equals("12"));
				for (int i = 0; i < nList.getLength(); i++) {
					Node nNode = nList.item(i);

					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) nNode;
						Detail_Intro_landmarkVO landmarkVO = new Detail_Intro_landmarkVO();

						landmarkVO.setChkbabycarriage(getTagValue("chkbabycarriage", eElement));
						landmarkVO.setChkcreditcard(getTagValue("chkcreditcard", eElement));
						landmarkVO.setChkpet(getTagValue("chkpet", eElement));
						landmarkVO.setInfocenter(getTagValue("infocenter", eElement));
						landmarkVO.setRestdate(getTagValue("restdate", eElement));
						landmarkVO.setParking(getTagValue("parking", eElement));
						landmarkVO.setOpendate(getTagValue("opendate", eElement));
						landmarkVO.setAccomcount(getTagValue("accomcount", eElement));
						landmarkVO.setContenttypeid(getTagValue("contenttypeid", eElement));
						list.add(landmarkVO);

						log.info("detailIntro type :12  : " + list);
					}
				}
			}
			// 쇼핑 ( 상설시장) 상세정보 URL 파싱
			else if (this.type.equals("38") && this.command.equals("detailIntro")) {
				log.info("detailIntro type :38 파싱시작 " + this.type.equals("38"));
				for (int i = 0; i < nList.getLength(); i++) {
					Node nNode = nList.item(i);

					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) nNode;
						Detail_Intro_shoppingVO shoppingVO = new Detail_Intro_shoppingVO();

						shoppingVO.setChkbabycarriageshopping(getTagValue("chkbabycarriageshopping", eElement));
						shoppingVO.setChkcreditcardshopping(getTagValue("chkcreditcardshopping", eElement));
						shoppingVO.setChkpetshopping(getTagValue("chkpetshopping", eElement));
						shoppingVO.setInfocentershopping(getTagValue("infocentershopping", eElement));
						shoppingVO.setOpendateshopping(getTagValue("opendateshopping", eElement));
						shoppingVO.setRestdateshopping(getTagValue("restdateshopping", eElement));
						shoppingVO.setParkingshopping(getTagValue("parkingshopping", eElement));
						shoppingVO.setSaleitem(getTagValue("saleitem", eElement));
						shoppingVO.setSaleitemcost(getTagValue("saleitemcost", eElement));
						shoppingVO.setScaleshopping(getTagValue("scaleshopping", eElement));
						shoppingVO.setContenttypeid(getTagValue("contenttypeid", eElement));

						list.add(shoppingVO);

						log.info("detailIntro type :38  : " + list);
					}
				}
			} // 음식점 상세정보 URL 파싱
			else if (this.type.equals("39") && this.command.equals("detailIntro")) {
				log.info("detailIntro type :39 파싱시작 " + this.type.equals("39"));
				for (int i = 0; i < nList.getLength(); i++) {
					Node nNode = nList.item(i);

					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) nNode;
						Detaill_Intro_restaurantsVO restaurantsVO = new Detaill_Intro_restaurantsVO();

						restaurantsVO.setDiscountinfofood(getTagValue("chkcreditcardfood", eElement));
						restaurantsVO.setDiscountinfofood(getTagValue("discountinfofood", eElement));
						restaurantsVO.setFirstmenu(getTagValue("firstmenu", eElement));
						restaurantsVO.setInfocenterfood(getTagValue("infocenterfood", eElement));
						restaurantsVO.setKidsfacility(getTagValue("kidsfacility", eElement));
						restaurantsVO.setOpentimefood(getTagValue("opentimefood", eElement));
						restaurantsVO.setPacking(getTagValue("packing", eElement));
						restaurantsVO.setParkingfood(getTagValue("parkingfood", eElement));
						restaurantsVO.setReservationfood(getTagValue("reservationfood", eElement));
						restaurantsVO.setRestdatefood(getTagValue("restdatefood", eElement));
						restaurantsVO.setSmoking(getTagValue("smoking", eElement));
						restaurantsVO.setTreatmenu(getTagValue("treatmenu", eElement));
						restaurantsVO.setContenttypeid(getTagValue("contenttypeid", eElement));

						list.add(restaurantsVO);

						log.info("detailIntro type :39  : " + list);
					}
				}
			}

		} catch (Exception e) {
			log.info(e.getMessage());
		}
		return list;
	}
}