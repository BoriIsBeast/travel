package com.project.travel.tNotice;

import com.project.travel.util.FileVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class TNoticeFileVO extends FileVO{
		
	private Long num;

}
