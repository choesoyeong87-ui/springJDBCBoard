package com.board.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Member {
	private int no;
	private String id;
	private String pw;
	private String name;
	private String search;
	private String searchType;
	private String keyword;
}
