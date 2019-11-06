package com.tje.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.tje.domain.NaverBlogApiVO;
import com.tje.domain.NaverLocalSearchApiVO;

import lombok.extern.log4j.Log4j;

enum NaverClient {
	id("서비스키 입력"), secret("서비스키 입력");
	private String apiAccess;

	NaverClient(String apiAccess) {
		this.apiAccess = apiAccess;
	}

	public String getAccess() {
		return this.apiAccess;
	}
}

// NaverApi 파싱 클래스
@Log4j
public class NaverJsonParsing {

	public JsonArray ConnectApi(String blogApiUrl) {
		URL url;
		JsonArray itemsobj = null;
		try {
			url = new URL(blogApiUrl);
			HttpURLConnection blogApiCon = (HttpURLConnection) url.openConnection();
			blogApiCon.setRequestMethod("GET");
			blogApiCon.setRequestProperty("X-Naver-Client-Id", NaverClient.id.getAccess());
			blogApiCon.setRequestProperty("X-Naver-Client-Secret", NaverClient.secret.getAccess());
			int responseCode = blogApiCon.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(blogApiCon.getInputStream()));
				log.info(br);
			} else {
				br = new BufferedReader(new InputStreamReader(blogApiCon.getErrorStream()));
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
			itemsobj = (JsonArray) obj.get("items");
		} catch (Exception e) {
			log.info(e.getMessage());
		}
		return itemsobj;

	}

	// 네이버 블로그 파싱
	public List<NaverBlogApiVO> blogNaverApiService(String search_word, String display, String sort) {
		List<NaverBlogApiVO> naverBlogApiVOList = new ArrayList<NaverBlogApiVO>();
		try {
			String userSearchKeyword = URLEncoder.encode(search_word, "UTF-8");
			String blogApiUrl = "https://openapi.naver.com/v1/search/blog?query=" + userSearchKeyword + "&display="
					+ display + "&sort=" + sort;

			JsonArray itemsobj = ConnectApi(blogApiUrl);

			for (int index = 0; index < itemsobj.size(); index++) {
				JsonObject naverBlogInfo = (JsonObject) itemsobj.get(index);
				NaverBlogApiVO naverBlogApiVO = new NaverBlogApiVO();

				try {
					if (naverBlogInfo.get("title").getAsString() != null) {
						naverBlogApiVO.setTitle(naverBlogInfo.get("title").getAsString());
					} else {
						naverBlogApiVO.setTitle("제목이 존재하지 않습니다");
					}

					if (naverBlogInfo.get("link").getAsString() != null) {
						naverBlogApiVO.setLink(naverBlogInfo.get("link").getAsString());
					} else {
						naverBlogApiVO.setLink("URL이 존재하지 않습니다");
					}

					if (naverBlogInfo.get("description").getAsString() != null) {
						naverBlogApiVO.setDescription(naverBlogInfo.get("description").getAsString());
					} else {
						naverBlogApiVO.setDescription("내용이 존재하지 않습니다");
					}

					if (naverBlogInfo.get("bloggername").getAsString() != null) {
						naverBlogApiVO.setBloggername(naverBlogInfo.get("bloggername").getAsString());
					} else {
						naverBlogApiVO.setBloggername("블로거이름이 존재하지 않습니다");
					}

					if (naverBlogInfo.get("postdate").getAsString() != null) {
						naverBlogApiVO.setPostdate(naverBlogInfo.get("postdate").getAsString());
					} else {
						naverBlogApiVO.setPostdate("포스트 날짜가 존재하지 않습니다");
					}

					naverBlogApiVOList.add(naverBlogApiVO);
				} catch (Exception e) {
					log.info("Null 값인 항목은" + naverBlogInfo + "입니다");
				}

			}
		} catch (Exception e) {
			log.info(e.getMessage());
		}
		return naverBlogApiVOList;
	}

	// 네이버 맛집 및 지역 파싱
	public List<NaverLocalSearchApiVO> localSearchNaverApiService(String search_word, String display, String sort) {

		List<NaverLocalSearchApiVO> naverLocalSearchApiVOList = new ArrayList<NaverLocalSearchApiVO>();
		try {
			log.info("검색 키워드: " + search_word);
			String userSearchKeyword = URLEncoder.encode(search_word, "UTF-8");

			String localUrl = "https://openapi.naver.com/v1/search/local?query=" + userSearchKeyword + "&display="
					+ display + "&sort=" + sort;
			JsonArray itemsobj = ConnectApi(localUrl);
			
			for (int index = 0; index < itemsobj.size(); index++) {
				JsonObject naverLocalSearchInfo = (JsonObject) itemsobj.get(index);
				NaverLocalSearchApiVO naverLocalSearchApiVO = new NaverLocalSearchApiVO();

				try {
					if (naverLocalSearchInfo.get("title").getAsString() != null) {
						naverLocalSearchApiVO.setTitle(naverLocalSearchInfo.get("title").getAsString());
					} else {
						naverLocalSearchApiVO.setTitle("제목이 존재하지 않습니다");
					}

					if (naverLocalSearchInfo.get("link").getAsString() != null) {
						naverLocalSearchApiVO.setLink(naverLocalSearchInfo.get("link").getAsString());
					} else {
						naverLocalSearchApiVO.setLink("URL이 존재하지 않습니다");
					}

					if (naverLocalSearchInfo.get("description").getAsString() != null) {
						naverLocalSearchApiVO.setDescription(naverLocalSearchInfo.get("description").getAsString());
					} else {
						naverLocalSearchApiVO.setDescription("내용이 존재하지 않습니다");
					}

					if (naverLocalSearchInfo.get("telephone").getAsString() != null) {
						naverLocalSearchApiVO.setTelephone(naverLocalSearchInfo.get("telephone").getAsString());
					} else {
						naverLocalSearchApiVO.setTelephone("전화번호가 존재하지 않습니다");
					}

					if (naverLocalSearchInfo.get("address").getAsString() != null) {
						naverLocalSearchApiVO.setAddress(naverLocalSearchInfo.get("address").getAsString());
					} else {
						naverLocalSearchApiVO.setAddress("주소가 존재하지 않습니다");
					}

					if (naverLocalSearchInfo.get("mapx").getAsString() != null) {
						naverLocalSearchApiVO.setMapx(naverLocalSearchInfo.get("mapx").getAsString());
					} else {
						naverLocalSearchApiVO.setMapx("mapx가 존재하지 않습니다");
					}

					if (naverLocalSearchInfo.get("mapy").getAsString() != null) {
						naverLocalSearchApiVO.setMapy(naverLocalSearchInfo.get("mapy").getAsString());
					} else {
						naverLocalSearchApiVO.setMapy("mapy가 존재하지 않습니다");
					}

					if (naverLocalSearchInfo.get("category").getAsString() != null) {
						naverLocalSearchApiVO.setCategory(naverLocalSearchInfo.get("category").getAsString());
					} else {
						naverLocalSearchApiVO.setCategory("category가 존재하지 않습니다");
					}
					naverLocalSearchApiVOList.add(naverLocalSearchApiVO);

				} catch (Exception e) {
					log.info("Null 값인 항목은" + naverLocalSearchInfo + "입니다");
				}
			}
		} catch (Exception e) {
			log.info(e.getMessage());
		}
		return naverLocalSearchApiVOList;
	}
}