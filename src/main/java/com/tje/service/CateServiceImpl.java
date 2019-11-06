package com.tje.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.tje.domain.CateVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CateServiceImpl implements CateService {
	
	
	
	
	@Override
	// 카테고리 페이지에서 보여줄 내용을 관광 API를 통해 JSON 데이터 파싱
	public List<CateVO> showCategory(String contentTypeId, String areaCode, String pageNo, String numOfRows,
			String totalCount) {

		List<CateVO> cateVOList = new ArrayList<CateVO>();
		try {
			String contentTypeid = URLEncoder.encode(contentTypeId, "UTF-8");
			String areacode = URLEncoder.encode(areaCode, "UTF-8");
			String numOfrows = URLEncoder.encode(numOfRows, "UTF-8");
			String pageno = URLEncoder.encode(pageNo, "UTF-8");
			String basicUrl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?";
			String serviceKey = "ServiceKey= 서비스키를 입력하세요&";
			String contenttypeId = "contentTypeId=" + contentTypeid + "&";
			String area = "areaCode=" + areacode + "&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&";
			String must = "MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&";
			String numofrows = "numOfRows=" + numOfrows + "&";
			String whichpage = "pageNo=" + pageno;
			String parseType = "&_type=json";
			String mainUrl = basicUrl + serviceKey + contenttypeId + area + must + numofrows + whichpage + parseType;

			log.info("[mainUrl: " + mainUrl + "]");

			URL url = new URL(mainUrl);
			HttpURLConnection cateCon = (HttpURLConnection) url.openConnection();
			cateCon.setRequestMethod("GET");
			int responseCode = cateCon.getResponseCode();
			BufferedReader br = null;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(cateCon.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(cateCon.getErrorStream()));
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();
			String resultString = response.toString();
			JsonParser parser = new JsonParser();
			JsonObject obj = (JsonObject) parser.parse(resultString);
			JsonObject responsefirst = (JsonObject) obj.get("response");
			JsonObject bodysecond = (JsonObject) responsefirst.get("body");
			JsonObject itemsthird = (JsonObject) bodysecond.get("items");
			JsonArray itemsobj = (JsonArray) itemsthird.get("item");

			for (int index = 0; index < itemsobj.size(); index++) {
				JsonObject cateInfo = (JsonObject) itemsobj.get(index);
				CateVO cateVO = new CateVO();

				try {
					if (cateInfo.get("title").getAsString() != null) {
						cateVO.setTitle(cateInfo.get("title").getAsString());
					}
				} catch (Exception e) {
					log.info("[title: No parsed data]");
				}

				try {
					if (cateInfo.get("addr1").getAsString() != null) {
						cateVO.setAddr1(cateInfo.get("addr1").getAsString());
					}
				} catch (Exception e) {
					log.info("[addr1: No parsed data]");
				}

				try {
					if (cateInfo.get("firstimage").getAsString() != null) {
						cateVO.setFirstimage(cateInfo.get("firstimage").getAsString());
					}
				} catch (Exception e) {
					cateVO.setFirstimage(areaCode);
				}

				try {
					if (cateInfo.get("readcount").getAsString() != null) {
						cateVO.setReadcount(cateInfo.get("readcount").getAsString());
					}
				} catch (Exception e) {
					log.info("[readcount: No parsed data]");
				}

				try {
					if (cateInfo.get("tel").getAsString() != null) {
						cateVO.setTel(cateInfo.get("tel").getAsString());
					}
				} catch (Exception e) {
					cateVO.setTel("연락처");
				}

				try {

					if (cateInfo.get("contentid").getAsString() != null) {
						cateVO.setContentid(cateInfo.get("contentid").getAsString());
					}
				} catch (Exception e) {
					log.info("[contentid: No parsed data]");
				}

				try {
					if (cateInfo.get("contenttypeid").getAsString() != null) {
						cateVO.setContenttypeid(cateInfo.get("contenttypeid").getAsString());
					}
				} catch (Exception e) {
					cateVO.setContenttypeid(contentTypeId);
				}

				try {

					if (cateInfo.get("areacode").getAsString() != null) {
						cateVO.setAreacode(cateInfo.get("areacode").getAsString());
					}
				} catch (Exception e) {
					cateVO.setAreacode(areaCode);
				}

				cateVOList.add(cateVO);
			}

		} catch (Exception e) {
			log.info(e);

		}

		return cateVOList;

	}

	// 페이지 번호 파싱
	@Override
	public String pageno(String contentTypeId, String areaCode, String pageNo, String numOfRows) {
		String page = null;

		try {
			String contentTypeid = URLEncoder.encode(contentTypeId, "UTF-8");
			String areacode = URLEncoder.encode(areaCode, "UTF-8");
			String numOfrows = URLEncoder.encode(numOfRows, "UTF-8");
			String pageno = URLEncoder.encode(pageNo, "UTF-8");
			String basicUrl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?";
			String serviceKey = "ServiceKey= 서비스키를 입력하세요&";
			String contenttypeId = "contentTypeId=" + contentTypeid + "&";
			String area = "areaCode=" + areacode + "&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&";
			String must = "MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&";
			String numofrows = "numOfRows=" + numOfrows + "&";
			String whichpage = "pageNo=" + pageno;
			String parseType = "&_type=json";
			String mainUrl = basicUrl + serviceKey + contenttypeId + area + must + numofrows + whichpage + parseType;

			URL url = new URL(mainUrl);
			HttpURLConnection cateCon = (HttpURLConnection) url.openConnection();
			cateCon.setRequestMethod("GET");
			int responseCode = cateCon.getResponseCode();
			BufferedReader br = null;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(cateCon.getInputStream()));
				log.info(br);
			} else {
				br = new BufferedReader(new InputStreamReader(cateCon.getErrorStream()));
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();

			String resultString = response.toString();

			JsonParser parser = new JsonParser();
			JsonObject obj = (JsonObject) parser.parse(resultString);
			JsonObject responsefirst = (JsonObject) obj.get("response");
			JsonObject bodysecond = (JsonObject) responsefirst.get("body");

			try {
				if (bodysecond.get("pageNo").getAsString() != null) {
					page = bodysecond.get("pageNo").getAsString();
				}
			} catch (Exception e) {
				page = "페이지";
			}
			log.info("pageNo: " + page);

		} catch (Exception e) {
			log.info(e);
		}
		return page;
	}
}