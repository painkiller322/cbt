package exam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class ExamCommandCreate implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ExamDTO dto = new ExamDTO();
		dto.setExam_nm(request.getParameter("exam_nm"));
		
		
		
		return null;
	}

}
