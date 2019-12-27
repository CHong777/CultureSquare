package user.service.face;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public interface JoinSendMailService {
	
	/**
	 * 메일 인증
	 * @param userid - email
	 * @param username - 이름
	 * @param req - 
	 */
	public void mailSendWithEmailKey(String userid, String username, HttpServletRequest req);

	/**
	 * 2019-12-27
	 * 이빈
	 * 이메일 난수 생성
	 */
	public String init();
	
	/**
	 * 2019-12-27
	 * 이빈
	 * 난수를 이용한 키 생성
	 */
	public String getKey(boolean lowerCheck, int size);

	
}
