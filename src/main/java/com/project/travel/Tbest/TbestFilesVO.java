package com.project.travel.Tbest;

import com.project.travel.util.FileVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class TbestFilesVO extends FileVO {

	private Long num;
}
