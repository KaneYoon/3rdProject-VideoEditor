package lets.eat.cancho.editor.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jaudiotagger.audio.AudioFile;
import org.jaudiotagger.audio.AudioFileIO;
import org.json.JSONArray;
import org.json.JSONObject;
import org.junit.internal.matchers.SubstringMatcher;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lets.eat.cancho.editor.util.FileService;
import lets.eat.cancho.editor.util.ImageFileManager;
import lets.eat.cancho.editor.util.saveFileManager;
import lets.eat.cancho.editor.util.test;
import lets.eat.cancho.editor.vo.FrameVO;
import lets.eat.cancho.editor.vo.editorVO;


/**
 * Handles requests for the application home page....
 */

@Controller
public class editController {
	HashMap<String, String> delMap = new HashMap<String, String>();
	
	
	/*사용자에 토모로그 폴더 생기게*/
	
	final String uploadPath = "C:\\tomolog\\temp\\";	//파일 업로드 경로
	final String extractPath = "C:\\tomolog\\extract\\";	// 추출된 이미지 경로
	ArrayList<FrameVO> vList = new ArrayList<FrameVO>();
	
	
	
	@RequestMapping(value = "/editor", method = RequestMethod.GET)
	public String home(HttpSession session) {
		String user = (String)session.getAttribute("loginId");
		System.out.println(user);
		return "videoEditor/editor";
	}
	
	@ResponseBody
	@RequestMapping(value="fileupload", method = RequestMethod.POST)
	public ArrayList<String> fileupload(MultipartHttpServletRequest request, HttpServletResponse response) {
		Iterator<String> itr =  request.getFileNames();
		ArrayList<String> fileList = new ArrayList<String>();
        String savedfile = "";
        String fileName = "";
        if(itr.hasNext()) {
            MultipartFile mpf = request.getFile(itr.next());
            if (!mpf.isEmpty()) {
				savedfile = FileService.saveFile(mpf, uploadPath);
				
				// 파일 종류 판별
				int fileLength = savedfile.length();
				int lastIndex = savedfile.lastIndexOf('.');
				fileName = savedfile.substring(0, lastIndex);
				String extName = savedfile.substring(lastIndex+1, fileLength);
				if(extName.equals("mp4") || extName.equals("ogg") || extName.equals("webm")) {
					ImageFileManager.extractVideo(fileName);
				}
			}
        }
        fileList = getFileList();
        return fileList;
    }
	
	@ResponseBody
	@RequestMapping(value = "getFileList", method = RequestMethod.POST)
	public ArrayList<String> getFileList() {
		File path = new File("C:/tomolog/temp/");
		File[] fileList = path.listFiles();
		ArrayList<String> videoPath = new ArrayList<String>();
		for (int i = 0; i < fileList.length; i++) {
			 videoPath.add(fileList[i].toString());
		}
			return videoPath;
		}
	
	@ResponseBody
	@RequestMapping(value = "getVideoInfo", method = RequestMethod.GET ,
					produces = "application/json;charset=utf-8")
	public HashMap getVideoInfo(String ffid, String path){
		HashMap<String, Object> rtn  = new HashMap<>();
		String videoPath = "C:\\tomolog\\extract\\" + ffid;
		String vExtractPath = "tomolog\\extract\\" + ffid + "\\";
		int count = test.findFileNum(videoPath) - 1;
		int length = test.findFilelength(videoPath);
		rtn.put("count", count);
		rtn.put("extractPath", vExtractPath);
		rtn.put("length", length);
		boolean isAudio = false;
		File audio = new File(videoPath + "\\audio.mp3");
		if(audio.exists()) isAudio=true;
		rtn.put("isAudio", isAudio);
		return rtn;
	}
	@ResponseBody
	@RequestMapping(value = "getObjectInfo", method = RequestMethod.GET ,
					produces = "application/json;charset=utf-8")
	public double getObjectInfo(String type, String path){
		if("image".equalsIgnoreCase(type)){
			return 1;
		}
		String tmp[] = path.split("/");
		String audioPath = "\\tomolog";
		for(int i = 2; i < tmp.length; i++){
			audioPath += '\\';
			audioPath += tmp[i];
		}
		double duration = 0;
		try {
		  AudioFile audioFile = AudioFileIO.read(new File(audioPath));
		  duration = audioFile.getAudioHeader().getTrackLength();
		} catch (Exception e) {
		  e.printStackTrace();
		}
		return duration;
	}
	
	
	@RequestMapping(value = "download", method = RequestMethod.GET)
	public void fileDownload(HttpServletResponse response, String origin , String saved){
		try {
			response.setHeader("Content-Disposition", " attachment;filename="+ URLEncoder.encode(origin, "UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String fullPath = uploadPath + "/" + saved;
		//서버의 파일을 읽을 입력 스트림과 클라이언트에게 전달할 출력스트림
		FileInputStream filein = null;
		ServletOutputStream fileout = null;
		
		try {
			filein = new FileInputStream(fullPath);
			fileout = response.getOutputStream();
			
			//Spring의 파일 관련 유틸
			FileCopyUtils.copy(filein, fileout);
			
			filein.close();
			fileout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@ResponseBody
	@RequestMapping(value = "delIndiFile", method = RequestMethod.POST)
	public String deleteAllFiles(String fileName, String fileType, String fileExt) {      
		delMap = new HashMap<String,String>(); 
		String fullpath = uploadPath + fileName + fileExt;
	    String fullpathEx = extractPath;
	    delMap.put("fullpath", fullpath);
	      
	    if(fileType.equals("video")) {
	       fullpathEx = fullpathEx + fileName;
	       delMap.put("fullpathEx", fullpathEx);
	     }
	     else {
	        delMap.put("fullpathEx", "notVideo");
	     }
	     delMap.put("fileName", fileName); 
	     boolean result = FileService.deleteFile(delMap); 
	     return "redirect:/getFileList"; 
	 }
	@ResponseBody
	@RequestMapping(value="saveVideoFile", method = RequestMethod.POST)
	public void saveVideoFile(@RequestBody editorVO editorVO){
			
			System.out.println(editorVO.getUrls());
			int  folderNum = Integer.parseInt(editorVO.getCount());
			int lastIndex = editorVO.getvFname().lastIndexOf('.');
		    String fileName = editorVO.getvFname().substring(0, lastIndex); 
		    String trim = String.format("%.0f", (Double.parseDouble(editorVO.getTrim())));
		    String frame = String.format("%.0f", (Double.parseDouble(editorVO.getFrame())));
		    String frames = String.format("%.0f", (Double.parseDouble(editorVO.getFrames())));
		      
		      int trimN = Integer.parseInt(trim);
		      int framesN = Integer.parseInt(frames);
		      int frameN = Integer.parseInt(frame);
		      
		      int startF = 0;
		      int endF = 0;
		      
		      if(trimN == 0) {
		         startF = 0;
		         endF = framesN * 30;
		      }
		      
		      if(trimN != 0) {
		         startF = (trimN * 30) + 1;
		         endF = ((startF-1) + framesN * 30);
		      }
		      
		      String startFrame = String.valueOf(startF);
		      String endFrame = String.valueOf(endF);
		      
		      
		      FrameVO fr = new FrameVO();
		      fr.setStartFrame(startFrame);
		      fr.setEndFrame(endFrame);
		      fr.setFolderNum(folderNum);
		      fr.setFileName(fileName);
		      fr.setFrame(frameN);
		      vList.add(fr);
		      
		      Collections.sort(vList);
		      if(vList.size() == Integer.parseInt(editorVO.getLength())) {
		    	  for(int i = 0; i < vList.size(); i++) {
		    		saveFileManager.numbering(vList.get(i).getStartFrame(), vList.get(i).getEndFrame(), vList.get(i).getFileName());
		    	  }
		    	  for(int j = 0; j < vList.size(); j++) {
		    		  saveFileManager.calAudio(Integer.parseInt(vList.get(j).getStartFrame()), 
		    				  Integer.parseInt(vList.get(j).getEndFrame()), vList.get(j).getFileName(), editorVO.getUrls());  
		    	  }
		    	  vList = null;
		    	  vList = new ArrayList<FrameVO>();
		      }
		      
	}
	
	@ResponseBody
	@RequestMapping(value="makeVideo", method = RequestMethod.POST)
	public void makeVideo(){
		saveFileManager.makeVideo();
	}

	@ResponseBody
	@RequestMapping(value="saveImageFile", method = RequestMethod.POST)
	public void saveImageFile(@RequestBody editorVO editorVO){
		System.out.println(editorVO.getImgPath());
		saveFileManager.makeImage(editorVO.getImgPath(), editorVO.getImgFrame());
		
	}
	
	@ResponseBody
	@RequestMapping(value="saveAudioFile", method = RequestMethod.POST)
	public void saveAudioeFile(@RequestBody editorVO editorVO){
		System.out.println(editorVO.getUrls());
		saveFileManager.calMsTime(editorVO.getUrls(),editorVO.getFrame());
	}
	
	@ResponseBody
	@RequestMapping(value="done", method = RequestMethod.POST)
	public void done(){	
		saveFileManager.fisaving();
		System.out.println("what");
		FileService.deleteSaved();
		FileService.deleteMaked();
	}
}


 
	
