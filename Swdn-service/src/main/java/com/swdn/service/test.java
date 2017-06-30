package com.swdn.service;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class test {
	public static void main(String[] args) {
		int qstn_id = -4;
		int qstn_seq = -3;
		int ryt_ans_txt = -2;
		int ryt_ans_id = -1;
		
		for (int i=0; i<(12/4);i++){
			qstn_id = qstn_id+4;
			qstn_seq = qstn_seq+4;
			ryt_ans_txt = ryt_ans_txt+4;
			ryt_ans_id = ryt_ans_id+4;
			System.out.println("------------------");
	    	  System.out.println(qstn_id);
	    	  System.out.println(qstn_seq);
	    	  System.out.println(ryt_ans_txt);
	    	  System.out.println(ryt_ans_id);
	    	  System.out.println("*****************");
	      }

	}
}
