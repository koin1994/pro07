package kr.go.mss.dto;

import lombok.Data;

@Data
public class FreeDTO {
	private int fseq;
	private String title;
	private String content;
	private String nickname;
	private String regdate;
	private int visited;
}
