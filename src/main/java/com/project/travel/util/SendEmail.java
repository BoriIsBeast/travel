package com.project.travel.util;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.project.travel.member.MemberVO;
@Component
public class SendEmail {
	
	@Value("${admin.SMTP.id}")
	private String hoswId;
	@Value("${admin.SMTP.pw}")
	private String hostPw;
	
	public void sendEmail(MemberVO memberVO, String div) throws Exception {
		
		// Mail Server 설정
		
		//네이버 
		//String hostSMTP = "smtp.naver.com"; 
		//email.setSmtpPort(587);
		
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = hoswId;//보내는사람 이메일주소 ==================== properties 에 등록해놨음 ! 반드시 등록하고 실행 =======
		String hostSMTPpwd = hostPw;//보내는사람 이메일 비번 ==================== properties 에 등록해놨음 ! 반드시 등록하고 실행 =======

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "wlsdn147@naver.com";// 보내는 사람 이메일 주소
		String fromName = "Traveler 관리자"; // 보내는사람 이름
		String subject = "";
		String msg = "";

		if(div.equals("findpw")) {
			subject = "Traveler 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += memberVO.getId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += memberVO.getPw() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = memberVO.getEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}
}
