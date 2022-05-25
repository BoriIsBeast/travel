package com.project.travel.tReview;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.product.ProductVO;
import com.project.travel.util.FileManager;
import com.project.travel.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class TReviewService {
	
	@Autowired
	private TReviewMapper tReviewMapper;

	@Autowired
	private FileManager fileManager;
	
	
	public TReviewVO productDetail(TReviewVO tReviewVO) throws Exception{
		return	tReviewMapper.productDetail(tReviewVO);
	}

	
	public List<TReviewVO> getList(Pager pager) throws Exception{
		pager.makeRow();
		pager.makeNum(tReviewMapper.getTotalCount(pager));
		return tReviewMapper.getList(pager);
	}
	
	public List<TReviewVO> prList(Pager pager) throws Exception{
		pager.makeRow();
		pager.makeNum(tReviewMapper.getTotalCount(pager));
		return tReviewMapper.prList(pager);
	}
	
	
	public int setAdd(TReviewVO tReviewVO, MultipartFile[]files) throws Exception{
		int result = tReviewMapper.setAdd(tReviewVO);
		if(files != null && result>0) {
			for(MultipartFile mf : files) {
				if(mf.isEmpty()) {
					continue;
				}
				String fileName = fileManager.fileSave(mf, "resources/upload/TReview/");
				System.out.println(fileName);
				
				TReviewFilesVO tReviewFilesVO = new TReviewFilesVO();
				tReviewFilesVO.setNum(tReviewVO.getNum());
				tReviewFilesVO.setFileName(fileName);
				tReviewFilesVO.setOriName(mf.getOriginalFilename());
				result = tReviewMapper.setFileAdd(tReviewFilesVO);
				
				if(result < 1) {
					throw new SQLException();
				}
			}
		}
		return result;
	}
	
	public TReviewVO getDetail(TReviewVO tReviewVO) throws Exception{
		return tReviewMapper.getDetail(tReviewVO);
	}
	
	public int setUpdate(TReviewVO tReviewVO) throws Exception{
		return tReviewMapper.setUpdate(tReviewVO);
	}
	
	public int setDelete(TReviewVO tReviewVO) throws Exception{
		List<TReviewFilesVO> ar = tReviewMapper.getFileList(tReviewVO);
		int result = tReviewMapper.setDelete(tReviewVO);
		System.out.println("file size : "+ar.size());
		for(TReviewFilesVO f : ar) {
			fileManager.fileDelete(f.getFileName(),"resources/upload/TReview");
			
		}
		return result;
	}
	
	public TReviewFilesVO getFileDetail(TReviewFilesVO tReviewFilesVO) throws Exception{
		return tReviewMapper.getFileDetail(tReviewFilesVO);
	}
	
	public String setSummerFileUpload(MultipartFile files)throws Exception{
		String fileName = fileManager.fileSave(files, "resources/upload/TReview");
		fileName = "/resources/upload/TReview/"+fileName;
		return fileName;
	}
	
	public boolean setSummerFileDelete(String fileName) throws Exception{
		fileName = fileName.substring(fileName.lastIndexOf("/")+1);
		System.out.println(fileName);
		return fileManager.fileDelete(fileName, "resources/upload/TReview/");
	}
	
	
}
