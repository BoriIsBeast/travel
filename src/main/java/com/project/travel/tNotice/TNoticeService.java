package com.project.travel.tNotice;

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
public class TNoticeService {
	@Autowired
	private TNoticeMapper tNoticeMapper;

	@Autowired
	private FileManager fileManager;

	public List<TNoticeVO> getList(Pager pager) throws Exception {
		pager.makeRow();
		pager.makeNum(tNoticeMapper.getTotalCount(pager));
		System.out.println("start : " + pager.getStartNum());
		System.out.println("perPage : " + pager.getPerPage());
		return tNoticeMapper.getList(pager);
	}

	public int setAdd(TNoticeVO tNoticeVO, MultipartFile[] files) throws Exception {
		System.out.println("Insert 전 : " + tNoticeVO.getNum());
		int result = tNoticeMapper.setAdd(tNoticeVO);
		System.out.println("Insert 후 : " + tNoticeVO.getNum());

		if (files != null && result > 0) {

			for (MultipartFile mf : files) {

				if (mf.isEmpty()) {
					continue;
				}
				// 1. File을 HDD에 저장
				String fileName = fileManager.fileSave(mf, "resources/upload/TNotice/");
				System.out.println(fileName);
				// 2. 저장된 정보를 DB에 저장
				TNoticeFileVO tNoticeFileVO = new TNoticeFileVO();
				tNoticeFileVO.setNum(tNoticeVO.getNum());
				tNoticeFileVO.setFileName(fileName);
				tNoticeFileVO.setOriName(mf.getOriginalFilename());
				result = tNoticeMapper.setFileAdd(tNoticeFileVO);

				if (result < 1) {
					throw new SQLException();
				}

			}
		}
		return result;
	}
	
	public TNoticeVO getDetail(TNoticeVO tNoticeVO) throws Exception{
		return tNoticeMapper.getDetail(tNoticeVO);
	}
	
	public int setUpdate(TNoticeVO tNoticeVO) throws Exception{
		return tNoticeMapper.setUpdate(tNoticeVO);
	}
	
	public int setDelete(TNoticeVO tNoticeVO) throws Exception{
		
		List<TNoticeFileVO> ar = tNoticeMapper.getFileList(tNoticeVO);
		int result = tNoticeMapper.setDelete(tNoticeVO);
		System.out.println("file size : "+ar.size());
		for(TNoticeFileVO f : ar) {
			fileManager.fileDelete(f.getFileName(),"resources/upload/TNotice");
		}
		return result;
	}
	
	public TNoticeFileVO getFileDetail(TNoticeFileVO tNoticeFileVO) throws Exception{
		return tNoticeMapper.getFileDetail(tNoticeFileVO);		
	}
	
	public String setSummerFileUpload(MultipartFile files) throws Exception{
		//file HDD에 저장하고 저장된 파일명을 return
		String fileName = fileManager.fileSave(files, "resources/upload/TNotice");
		fileName = "/resources/upload/TNotice/"+fileName;
		return fileName;
	}
	
	public boolean setSummerFileDelete(String fileName)throws Exception{
		fileName = fileName.substring(fileName.lastIndexOf("/")+1);
		System.out.println(fileName);
		return fileManager.fileDelete(fileName, "resources/upload/TNotice/");
	}
}
