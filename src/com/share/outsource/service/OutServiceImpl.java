package com.share.outsource.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.share.outsource.DAO.OutDAO;
import com.share.train.DAO.TraDAO;

public class OutServiceImpl implements OutService<Map<String,Object>,Map<String,Object>>{

	@Autowired
	private OutDAO<Map<String, Object>> outDAO;
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	HttpSession session;
	
	@Override
	public OutDAO<Map<String,Object>> getOutDAO() {
		// TODO Auto-generated method stub
		return this.outDAO;
	}
	
	/**
	 * 通过request得到页面的参数，进行封装参数到param(map)中
	 */
	@Override
	public Map<String,Object> buildParam(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Map<String, String[]> parameterMaps = request.getParameterMap();
		Map<String, Object> result = new HashMap<String,Object>();
		String[] values;
		for (Entry<String, String[]> entry : parameterMaps.entrySet()) {
			values = entry.getValue();
			if (values.length > 1) {
				result.put(entry.getKey(), values);
			} else if (values.length == 1) {
				if (!"".equals(values[0])) {
					result.put(entry.getKey(), values[0]);
				}
			}
		}
		return result;
	}/**
	 * 判断员工列表方法
	 * @param param
	 * @return
	 * @throws Exception 
	 */
	public Map<String,Object> getOutService(Map<String,Object> param, @Param("pages") int pages) throws Exception{
		
		List<Map<String, Object>> resultOut = getOutDAO().getOutList(param,pages);
		/**
		 * 测试
		 */
		System.out.println(resultOut);
		Map<String,Object> resultMap=new HashMap<String,Object>();
		if(resultOut.size()==0){
			resultMap.put("toPage", "/new.jsp");
			resultMap.put("msg","没有用户");
			return resultMap;
		}else{
			resultMap.put("toPage", "/outlist");
			
			return resultMap;
		}
		
	}
	
	
	
	/**
	 * 查询员工列表方法
	 * @param param
	 * @return
	 * @throws Exception 
	 */
	public List<Map<String,Object>> getOutListService(Map<String,Object> param, @Param("pages") int pages)throws Exception{
		
		List<Map<String, Object>> resultOut = getOutDAO().getOutList(param,pages);
		/**
		 * 测试
		 */
		System.out.println(resultOut); 
			
		return resultOut;
	}
	/**
	 * 当前分页总数
	 */
	public int getTotalPages(int i) {
		// TODO Auto-generated method stub
		int result = outDAO.selectCount();
		if (result % i == 0) {
			return result / i;
		} else {
			return result / i + 1;
		}
	}
	
	/**
	 * 判定条件查询的接收页面
	 * @param param
	 * @return
	 * @throws Exception
	 */
public Map<String,Object> getretout(Map<String,Object> param) throws Exception{
		
		List<Map<String, Object>> resultEmp = getOutDAO().retout(param);
		/**
		 * 测试
		 */
		System.out.println(resultEmp);
		Map<String,Object> resultMap=new HashMap<String,Object>();
		if(resultEmp.size()==0){
			resultMap.put("toPage", "/new");
			resultMap.put("msg","没有用户");
			return resultMap;
		}else{
			resultMap.put("toPage", "/resultout");
			
			return resultMap;
		}
		
	}
	/**
	 * 条件查询方法
	 * @param param
	 * @return
	 * @throws Exception 
	 */
	public List<Map<String,Object>> getoutListService(Map<String,Object> param) throws Exception{
		
		List<Map<String, Object>> resultEmp = getOutDAO().retout(param);
		/**
		 * 测试
		 */
		System.out.println(resultEmp); 
			
		return resultEmp;
	}
	
	/**
	 * 增加一个员工方法
	 * @param param
	 * @return
	 */
	public Map<String,Object> addService(Map<String,Object> param){
		
		int rowCount;
		Map<String,Object> resultMap=new HashMap<String,Object>();
		try {
			rowCount = getOutDAO().addOut(param);
			/**
			 * 测试
			 */
			System.out.println(rowCount);
			resultMap.put("toPage","/addout");
			resultMap.put("msg","增加"+rowCount+"行"); 
			System.out.println(resultMap.get("msg"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return resultMap;
		
	}
	
	/**
	 * 删除一个员工方法
	 * @param param
	 * @return
	 */
	public Map<String,Object> deleteOutService(Map<String,Object> param){
		
		int rowCount;
		Map<String,Object> resultMap=new HashMap<String,Object>();
		try {
			rowCount = getOutDAO().deleteOut(param);
			/**
			 * 测试
			 */
			System.out.println(rowCount);
			resultMap.put("toPage","/indirect2");
			resultMap.put("msg","删除"+rowCount+"行"); 
			System.out.println(resultMap.get("msg"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			
		return resultMap;
		
	}
	
	/**
	 * 修改一个员工方法
	 * @param param
	 * @return
	 */
	public Map<String,Object> updateOutService(Map<String,Object> param){
		
		int rowCount;
		Map<String,Object> resultMap=new HashMap<String,Object>();
		try {
			System.out.println(param.get("updateId"));
			System.out.println(param);
			rowCount = getOutDAO().updateOut(param);
			/**
			 * 测试
			 */
			System.out.println(rowCount);
			resultMap.put("toPage","/indirect2");
			resultMap.put("msg","修改"+rowCount+"行"); 
			System.out.println(resultMap.get("msg"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			
		return resultMap;
		
	}
	
	/**
	 * 得到一行员工信息的方法
	 * @param param
	 * @return
	 */
	public Map<String,Object> getRowService(Map<String,Object> param){

		Map<String,Object> resultMap=new HashMap<String,Object>();
		try {
			System.out.println(param.get("iId"));
			List<Map<String, Object>> resultEmp= getOutDAO().getOut(param);
			resultMap.putAll(resultEmp.get(0));
			/**
			 * 测试resultmap
			 */
			System.out.println("--------dfgsdg-sdgfasdgf-a-agf-----------");
			System.out.println(resultMap);
			resultMap.put("toPage","/updateout");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			
		return resultMap;
		
	}
	
	
	

}
