package co.yedam.app.ajax;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;
import net.sf.json.JSONArray;

public class GetDeptCnt implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//ChartDAO
		ChartDAO dao = new ChartDAO();
		List<Map<String, Object>> list = dao.getDeptCnt();

		//차트를 여러개 만들었다면 Map으로
		//Map<String, Object> map =Map<String, Object>();
		//map.put("char1", list); 나열
		
		//json String변환
		String result = JSONArray.fromObject(list).toString();
		return "ajax:" + result;
	}

}
