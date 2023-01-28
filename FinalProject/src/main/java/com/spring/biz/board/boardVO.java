package com.spring.biz.board;

import java.util.Date;

public class boardVO {
	private int bseq;
	private int boardnum;
	private String title;
	private String nickname;
	private String content;
	private String filename;
	private Date writedate;
	private int like_num;
	private int unlike_num;
	private int cnt;
	private String UserId;
	public int getBseq() {
		return bseq;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setBseq(int bseq) {
		this.bseq = bseq;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	public int getLike_num() {
		return like_num;
	}
	public void setLike_num(int like_num) {
		this.like_num = like_num;
	}
	public int getUnlike_num() {
		return unlike_num;
	}
	public void setUnlike_num(int unlike_num) {
		this.unlike_num = unlike_num;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	
}
