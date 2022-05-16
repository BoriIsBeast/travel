package com.project.travel.tReview;

import com.project.travel.util.FileVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class TReviewFilesVO extends FileVO {
	
	private Long num;
	private Long productNum;

}
