package com.swdn.servieimpl;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.dao.SeptDao;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptUploadRequest;
import com.swdn.model.response.SeptResponse;
import com.swdn.service.SeptService;

@Service
public class SeptServiceImpl implements SeptService{
	
	@Autowired
	SeptDao septDao;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList septParseData(String SeptInputJson) throws SwdnException{
		JSONParser parser = new JSONParser();
		ArrayList al = new ArrayList<>();
		try {

           // Object obj = parser.parse(SeptInputJson); //ACtive this method and comment below method so that it can take input
			Object obj = parser.parse(new FileReader("/home/napendra/Downloads/abc.json"));

            JSONObject jsonObject = (JSONObject) obj;
            
            JSONArray slideContent = (JSONArray) jsonObject.get("cards"); // change string name i.e. "cards"
            Iterator i = slideContent.iterator();

            while (i.hasNext()) {
                JSONObject slide = (JSONObject) i.next();
                String question_id = (String) slide.get("question_id");
                String question_sequence = (String) slide.get("question_sequence");
                String question_answer = (String) slide.get("question_answer");
                String question_answer_option = (String) slide.get("question_answer_option");
                al.add(question_id);
                al.add(question_sequence);
                al.add(question_answer);
                al.add(question_answer_option);
                
            }
            System.out.println(al);
            System.out.println("size " + al.size());
		} catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
		
		return al;
		
	}

	
	@SuppressWarnings("rawtypes")
	public Object septUploadData(SeptUploadRequest septuploadRequest) throws SwdnException {
		septDao.setSeptDetails(septuploadRequest);
		SeptResponse septResponse = new SeptResponse();
		septResponse.setMessage("Sept data uploaded successfully");
		return septResponse;
		
		
		
		
		
//		int userID = septuploadRequest.getUserID();
//		String qstn_id = septuploadRequest.getQuestion_id();
//		String qstn_seq = septuploadRequest.getQuestion_sequence();
//		String qstn_ans = septuploadRequest.getQuestion_answer();
//		String qstn_ans_opt = septuploadRequest.getQuestion_answer_option();
//		
//		
//		
//		
//		
//		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
//		int qstn_id = -4;
//		int qstn_seq = -3;
//		int ryt_ans_txt = -2;
//		int ryt_ans_id = -1;
//		
//		try
//	    {
//	      // create a java mysql database connection
//		     String myDriver = "com.mysql.jdbc.Driver";
//		     String myUrl = "jdbc:mysql://localhost:3306/swaadhya_lcms";
//	      Class.forName(myDriver);
//	      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
//	    
//	      for (int i=0; i<(septDataArrList.size()/4);i++){
//	    	  
//	    	  qstn_id = qstn_id+4;
//			  qstn_seq = qstn_seq+4;
//			  ryt_ans_txt = ryt_ans_txt+4;
//			  ryt_ans_id = ryt_ans_id+4;
//	    	  
//	      // create the java mysql update preparedstatement
//	      String query = "INSERT INTO tbl_sept_activity (student_id,id,question_sequence,right_ans_text,right_ans_id,mst_id,answer,answer_text,answer_result,student_enroll,student_name,school_name,school_code,class_id,section,start_time,end_time,attempt_date,academic_year)" +  "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
//
//	      PreparedStatement preparedStmt = conn.prepareStatement(query);
//	      preparedStmt.setInt(1, userID);
//	      preparedStmt.setInt(2, Integer.parseInt(septDataArrList.get(qstn_id).toString()));
//	      preparedStmt.setInt(3, Integer.parseInt(septDataArrList.get(qstn_seq).toString()));
//	      preparedStmt.setString(4, septDataArrList.get(ryt_ans_txt).toString());
//	      preparedStmt.setString(5, septDataArrList.get(ryt_ans_id).toString());
//	      
//	      preparedStmt.setInt(6, 0);
//	      preparedStmt.setString(7, " ");
//	      preparedStmt.setString(8, " ");
//	      preparedStmt.setInt(9, 9);
//	      preparedStmt.setString(10, " ");
//	      preparedStmt.setString(11, " ");
//	      preparedStmt.setString(12, " ");
//	      preparedStmt.setString(13, " ");
//	      preparedStmt.setInt(14, 0);
//	      preparedStmt.setString(15, " ");
//	      preparedStmt.setTimestamp(16, date);
//	      preparedStmt.setTimestamp(17, date);
//	      preparedStmt.setTimestamp(18, date);
//	      preparedStmt.setString(19, " "); 
//	      System.out.println(preparedStmt);
//	      
//	      // execute the java preparedstatement
//	      preparedStmt.executeUpdate();
//	      
//	      conn.close();
//	    }
//	 }
//	    catch (Exception e)
//	    {
//	      System.err.println("Got an exception! ");
//	      System.err.println(e.getMessage());
//	    }
//		return null;
	}
}
