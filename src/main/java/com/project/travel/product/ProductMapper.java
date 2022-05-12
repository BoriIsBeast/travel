package com.project.travel.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

@Mapper
public interface ProductMapper {
	//add
	public int setAdd(ProductVO productVO) throws Exception;
	//list
	public List<ProductVO> getList() throws Exception;
	//detail
	public ProductVO getDetail(ProductVO productVO) throws Exception;
	//update
	public int setUpdate(ProductVO productVO) throws Exception;
	//delete
	public int setDelete(ProductVO productVO) throws Exception;
	
	//fileAdd
	public int setFileAdd(ProductFilesVO productFilesVO) throws Exception;
	//fileList
	public List<ProductFilesVO> getFileList(ProductVO productVO) throws Exception;
	//fileDetail
	public ProductFilesVO getFileDetail(ProductFilesVO productFilesVO) throws Exception;
	//fileDelete
	public int setFileDelete(ProductFilesVO productFilesVO) throws Exception;
	
	
	
}
