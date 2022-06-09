package com.project.travel.product;

import java.sql.SQLException;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.project.travel.util.FileManager;
import com.project.travel.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class ProductService {

	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private FileManager fileManager;
	
	public int setAdd(ProductVO productVO,MultipartFile[] files) throws Exception{
		
		int result = productMapper.setAdd(productVO);
		
		for(MultipartFile mf: files) { 
			if(mf.isEmpty()) {
				continue;
			}	
			String fileName = fileManager.fileSave(mf, "resources/upload/product/");
		
			//2. DB에 저장
			ProductFilesVO productFilesVO = new ProductFilesVO();
			productFilesVO.setProductNum(productVO.getProductNum());
			productFilesVO.setFileName(fileName);
			productFilesVO.setOriName(mf.getOriginalFilename());
			
			result =productMapper.setFileAdd(productFilesVO);
			
			if(result<1) {
				throw new SQLException();
			}
			
		}
		return result;
	}
	
	public List<ProductVO> getList(Pager pager) throws Exception{
		pager.makeRow();
		pager.makeNum(productMapper.getTotal(pager));
		return productMapper.getList(pager);
	}
	public ProductVO getDetail(ProductVO productVO)throws Exception{
		return productMapper.getDetail(productVO);
	}
	
	public int setDelete(ProductVO productVO) throws Exception{
		List<ProductFilesVO> ar=productMapper.getFileList(productVO);
		
		int result = productMapper.setDelete(productVO);
		
		for(ProductFilesVO f : ar) {
			boolean check = fileManager.fileDelete(f.getFileName(), "/resources/upload/product");
		}
		return result;
	}
	public int setUpdate(ProductVO productVO, MultipartFile[] files)throws Exception{
		int result = productMapper.setUpdate(productVO);
		
		if(files != null) {
		for(MultipartFile f :files) {
			if(f.isEmpty()) {
				continue;
			}
			
			ProductFilesVO productFilesVO = new ProductFilesVO();
			
			String fileName=fileManager.fileSave(f, "resources/upload/product");
			productFilesVO.setFileName(fileName);
			productFilesVO.setProductNum(productVO.getProductNum());
			productFilesVO.setOriName(f.getOriginalFilename());
			
			result=productMapper.setFileAdd(productFilesVO);
			}
		}
		
		return result;
	}
	
	public int setFileDelete(ProductFilesVO productFilesVO) throws Exception{
		productFilesVO = productMapper.getFileDetail(productFilesVO);
		
		int check=productMapper.setFileDelete(productFilesVO);
		if(check>0) {
			boolean result = fileManager.fileDelete(productFilesVO.getFileName(), "/resources/upload/product/");
		}
		
		return check;		
	}
	
//	public int setMaxCountUpdate(ProductVO productVO)throws Exception{
//		int result = productMapper.setMaxCountUpdte(productVO);
//	}
	
	public Long getCount(Pager pager) throws Exception{
		return productMapper.getCount(pager);
	}

}

