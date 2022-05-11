package com.project.travel.tNotice;

import com.project.travel.util.FileVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class TNoticeFilesVO extends FileVO{
		
	private Long num;

}
