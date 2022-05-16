package com.project.travel.tQna;

import com.project.travel.util.FileVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class TQnaFilesVO extends FileVO{

	private Long num;
}
