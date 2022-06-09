package com.project.travel.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import com.project.travel.cart.CartVO;
import com.project.travel.tReview.TReviewVO;
import com.project.travel.util.Pager;

@Mapper
public interface ProductMapper {
	//add
	public int setAdd(ProductVO productVO) throws Exception;
	//list
	public List<ProductVO> getList(Pager pager) throws Exception;
	//detail
	public ProductVO getDetail(ProductVO productVO) throws Exception;
	//update
	public int setUpdate(ProductVO productVO) throws Exception;
	//delete
	public int setDelete(ProductVO productVO) throws Exception;
	//totalCount
	public Long getTotal(Pager pager) throws Exception;
	//maxCount UPDATE
	public int setMaxCountUpdate(CartVO cartVO) throws Exception;
	//count
	public Long getCount(Pager pager) throws Exception;
	
	//------------------------------------------------------------------------
	
	//fileAdd
	public int setFileAdd(ProductFilesVO productFilesVO) throws Exception;
	//fileList
	public List<ProductFilesVO> getFileList(ProductVO productVO) throws Exception;
	//fileDetail
	public ProductFilesVO getFileDetail(ProductFilesVO productFilesVO) throws Exception;
	//fileDelete
	public int setFileDelete(ProductFilesVO productFilesVO) throws Exception;
	
	
	
	
}
