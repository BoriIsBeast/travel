package com.project.travel.Tbest;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.travel.util.FileManager;
import com.project.travel.util.Pager;

@Service
public class TbestService {

	@Autowired
	private TbestMapper tbestMapper;

	@Autowired
	private FileManager fileManager;

	// list
	public List<TbestVO> list(Pager pager) throws Exception {
		pager.makeRow();
		pager.makeNum(tbestMapper.totalCount(pager));
		System.out.println("start : " + pager.getStartNum());
		System.out.println("perPer : " + pager.getPerPage());
		return tbestMapper.list(pager);
	}

	// detail
	public TbestVO detail(TbestVO tbestVO) throws Exception {
		return tbestMapper.detail(tbestVO);
	}

	// add
	public int add(TbestVO tbestVO, MultipartFile[] files) throws Exception {
		System.out.println("Insert 전 :" + tbestVO.getNum());
		int result = tbestMapper.add(tbestVO);
		System.out.println("Insert 후 :" + tbestVO.getNum());

		if (files != null && result > 0) {
			for (MultipartFile mf : files) {
				if (mf.isEmpty()) {
					continue;
				}
				// 1. File을 HDD에 저장
				String fileName = fileManager.fileSave(mf, "resources/upload/Tbest/");
				System.out.println(fileName);
				// 2. 저장된 정보를 DB에 저장
				TbestFilesVO tbestFilesVO = new TbestFilesVO();
				tbestFilesVO.setNum(tbestVO.getNum());
				tbestFilesVO.setFileName(fileName);
				tbestFilesVO.setOriName(mf.getOriginalFilename());
				result = tbestMapper.fileAdd(tbestFilesVO);

				if (result < 1) {
					throw new SQLException();
				}
			}
		}

		return result;
	}

	// delete
	public int delete(TbestVO tbestVO) throws Exception {
		List<TbestFilesVO> ar = tbestMapper.fileList(tbestVO);
		int result = tbestMapper.delete(tbestVO);
		System.out.println("file size : " + ar.size());
		for (TbestFilesVO f : ar) {
			fileManager.fileDelete(f.getFileName(), "resources/upload/Tbest");
		}
		return result;
	}

	// update
	public int update(TbestVO tbestVO) throws Exception {
		return tbestMapper.update(tbestVO);
	}

	// fileDetail
	public TbestFilesVO fileDetail(TbestFilesVO tbestFilesVO) throws Exception {
		return tbestMapper.fileDetail(tbestFilesVO);
	}

	// fileDelete
	public int fileDelete(TbestFilesVO tbestFilesVO) throws Exception {
		tbestFilesVO = tbestMapper.fileDetail(tbestFilesVO);
		int check = tbestMapper.fileDelete(tbestFilesVO);
		if (check > 0) {
			boolean result = fileManager.fileDelete(tbestFilesVO.getFileName(), "/resources/upload/Tbest/");
		}
		return check;
	}

	public String SummerFileupload(MultipartFile files) throws Exception {
		// file HDD에 저장하고 저장된 파일명을 return
		String fileName = fileManager.fileSave(files, "resources/upload/Tbest");
		fileName = "/resources/upload/Tbest/" + fileName;
		return fileName;
	}

	public boolean SummerFileDelete(String fileName) throws Exception {
		fileName = fileName.substring(fileName.lastIndexOf("/") + 1);
		System.out.println(fileName);
		return fileManager.fileDelete(fileName, "resources/upload/Tbest/");
	}

}
