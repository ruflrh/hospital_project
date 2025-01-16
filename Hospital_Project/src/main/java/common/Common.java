package common;

public class Common {
	public static class main{
		public static final String VIEW_PATH = "/WEB-INF/views/main/";
	}

	public static class login{
		public static final String VIEW_PATH = "/WEB-INF/views/login/";
	}

	public static class mypage{
		public static final String VIEW_PATH = "/WEB-INF/views/mypage/";
	}

	public static class info{
		public static final String VIEW_PATH = "/WEB-INF/views/info/";
	}

	public static class Menu{
		public static final String VIEW_PATH = "/WEB-INF/views/menu/";
	}
	public static class reservation{
		public static final String VIEW_PATH = "/WEB-INF/views/reservation/";

		//한 페이지의 보여줄 게시글 수
		public final static int BLOCKLIST = 5;

		//하단 페이지 페이지의 수
		public final static int BLOCKPAGE = 3;
	}

	public static class dept{
		public static final String VIEW_PATH = "/WEB-INF/views/dept/";
	}
	public static class join{
		public static final String VIEW_PATH = "/WEB-INF/views/join/";
	}
	public static class Diagnosis{
		public static final String VIEW_PATH = "/WEB-INF/views/SelfDiagnosis/";
	}

	public static class Device{
		public static final String VIEW_PATH = "/WEB-INF/views/MedicalDevice/";

		// 한 페이지에 보여줄 게시글 수
		public final static int BLOCKLIST = 3;

		// 하단 페이지 메뉴의 수
		public final static int BLOCKPAGE = 3;
	}	

	public static class manageReservation{
		public static final String VIEW_PATH = "/WEB-INF/views/manageReservation/";
	}

	//감사, 건의 게시판 페이징 
	public static class Board{

		public final static int BLOCKLIST = 10;

		public final static int BLOCKPAGE = 3;

	}

	//자원봉사 페이징 
	public static class Volunteer{

		public final static int BLOCKLIST = 8;

		public final static int BLOCKPAGE = 3;

	}
}
