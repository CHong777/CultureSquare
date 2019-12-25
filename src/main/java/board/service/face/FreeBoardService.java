package board.service.face;

import java.util.List;

import board.dto.FreeBoard;
import util.Paging;

public interface FreeBoardService {
	
	/** 2019 - 12 - 23
	 * �Խ��� ����Ʈ �� ����
	 * 
	 */
	public int getListCnt();
	
	
	/** 2019 - 12 - 23
	 * �Խ��� ����Ʈ ����¡
	 * 
	 * @param paging
	 * @return
	 */
	public List<FreeBoard> getList(Paging paging);

	FreeBoard getView(int boardno);

}
