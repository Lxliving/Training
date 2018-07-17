package com.tax.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Stack;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tax.dao.DB_share;
import com.tax.vo.share;

/**
 * Servlet implementation class listShare
 */
public class listShare extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listShare() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pageNow = 1; //表示要显示第几页，该变量由用户来决定
		int pageSize ;	 //表示每一页显示几条记录，由程序决定或者用户自定义
		int pageCount;   //表示共有多少也页，该变量由程序计算出来
		int rowCount; 	 //表示共有多少记录，该变量由程序查询数据库得出
		//pageCount = (rowCount - 1)/pageSize + 1;
		DB_share ds = new DB_share();
		Stack<share> stack = ds.Query();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		/**
		 * <ul class="ex_main_left_content_ul uls clearfix">
							<li class="center_top">
								<ul>
									<li style="padding-left: 20px"><a href="webPages/posts/post_1513478006486.jsp">分享车船税</a></li>
									<li style="float: right;">2017-12-17</li>
								</ul>
							</li>
							<li class="center_bottom">
								<ul style="background: none">
									<li><span>浏览：</span> <span> 17</span></li>
									<li><span>收藏：</span> <span class="starCount">2</span></li>
									<li data-target-id="post_1513478006486" data-target="post"
										onclick="starPost();"><span>收藏</span></li>
								</ul>
							</li>
						</ul>
		 */
		while(!stack.isEmpty()) {
			out.println("<ul class=\"ex_main_left_content_ul uls clearfix\">");
			out.println("<li class=\"center_top\">");
			out.println("<ul>");
			out.println("<li style=\"padding-left: 20px\"><a" + 
					"href=\"webPages/posts/post_1513478006486.jsp\">"+stack.peek().getShareName()+"</a></li>");
			out.println("<li style=\"float: right;\">"+ stack.peek().getDate()  +"</li>");
			out.println("</ul>");
			out.println("</li>");
			out.println("<li class=\"center_bottom\">");
			out.println("<ul style=\"background: none\">");
			out.println("<li><span>浏览：</span> <span>"+ stack.peek().getSeenNum()+"</span></li>");
			out.println("<li><span>收藏：</span> <span class=\"starCount\">"+stack.peek().getKeptNum()+"</span></li>");
			out.println("<li data-target-id=\"post_1513478006486\" data-target=\"post\"");
			out.println("onclick=\"starPost();\"><span>收藏</span></li>");
			out.println("</ul>");
			out.println("</li>");
			out.println("</ul>");
			//stack.pop();
			System.out.println(stack.pop().getShareName());
		}
	}
	public void init () throws ServletException{
		System.out.println("listShare servlet initing");
	}
}
