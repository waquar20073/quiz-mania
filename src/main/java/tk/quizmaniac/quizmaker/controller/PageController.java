package tk.quizmaniac.quizmaker.controller;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tk.quizmaniac.quizmaker.dao.ContactDao;
import tk.quizmaniac.quizmaker.entity.Message;
import tk.quizmaniac.quizmaker.entity.Question;
import tk.quizmaniac.quizmaker.entity.Quiz;
import tk.quizmaniac.quizmaker.entity.User;
import tk.quizmaniac.quizmaker.entity.UserCredentials;
import tk.quizmaniac.quizmaker.services.MailService;
import tk.quizmaniac.quizmaker.services.QuestionService;
import tk.quizmaniac.quizmaker.services.QuizService;
import tk.quizmaniac.quizmaker.services.UserService;
import tk.quizmaniac.quizmaker.services.UserServiceImplementation;
@Controller
public class PageController {
	@Autowired
	ContactDao cdao;
	@Autowired
	UserService userService;
	@Autowired
	MailService mailService;
	@Autowired
	QuizService quizService;
	@Autowired
	QuestionService questionService;
	
	public QuestionService getQuestionService() {
		return questionService;
	}
	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}
	public MailService getMailService() {
		return mailService;
	}
	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserServiceImplementation userService) {
		this.userService = userService;
	}
	public QuizService getQuizService() {
		return quizService;
	}
	public void setQuizService(QuizService quizService) {
		this.quizService = quizService;
	}
	
	
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("greetings","WELCOME TO THE SPRING FRAMEWORK");
		return mv;
	}
	@RequestMapping(value= {"/contact"})
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("contact");
		mv.addObject("greetings","WELCOME TO THE SPRING FRAMEWORK");
		return mv;
	}
	@RequestMapping(value= {"/sendmessage"})
	public ModelAndView sendMessage(@ModelAttribute("message") Message message) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greetings","MESSAGE SENT");	
		cdao.sendMessage(message);
		return mv;
	}
	@RequestMapping(value= {"/getmessage"})
	public ModelAndView getMessage() {
		ModelAndView mv = new ModelAndView("messages");
		mv.addObject("message",cdao.getMessage());
		return mv;
	}
	@RequestMapping(value= {"/register"})
	public ModelAndView register(ModelMap modelMap) {
		modelMap.put("organizations", userService.findOrganizations());
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}
	@RequestMapping(value= {"/registernow"})
	public ModelAndView registerNow(@Valid @ModelAttribute("user") User user,BindingResult bindingResult) {
		if(bindingResult.hasErrors()){
			return new ModelAndView("register");
		}
		ModelAndView mv = new ModelAndView("login");
		boolean isReg = getUserService().registerUser(user);
		if(isReg) {
			getMailService().sendMail("quizmaniac.ws@gmail.com", user.getEmail(), "Registeration Successful", "Thank you for joining Us. We are still Developing, please have some faith on us.");
		}
		mv.addObject("message","Account Created");
		return mv;
	}
	@RequestMapping(value= {"/login"})
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	@RequestMapping(value= {"/loginnow"})
	public ModelAndView loginNow(@Valid @ModelAttribute("userCredentials") UserCredentials userCredentials,BindingResult bindingResult, HttpServletRequest request) {
		if(bindingResult.hasErrors()){
			System.out.println(bindingResult.getAllErrors());
			return new ModelAndView("login");
		}
		ModelAndView mv;
		User user = getUserService().validateUserCredential(userCredentials.getEmail(), userCredentials.getPassword());
		if(user != null) {
			
			if(user.getCategory().equals("Organization")) {
				/**
				 * If user category is Organization
				 */
				mv = new ModelAndView("organization_dashboard");
				request.getSession().setAttribute("userDetail", user);
				mv.addObject("user", user);
				return mv;
			}
			else if(user.getCategory().equals("Student")){
				/**
				 * If user category is Organization
				 */
				mv = new ModelAndView("sdash");
				request.getSession().setAttribute("userDetail", user);
				mv.addObject("user", user);
				return mv;
			}
			
		}
			/** 
			 * In case the UserCredentials don't match with database. 
			 */
			mv = new ModelAndView("error404");
			mv.addObject("message", "Invalid User Credentials (user not found). If you have not registered yet, please Register");
			return mv;
		
	}
	@RequestMapping(value= {"/organization_dashboard"})
	public ModelAndView organizationDashboard(ModelMap modelMap) {
		modelMap.addAttribute("quizList", getQuizService().findQuizList());
		ModelAndView mv = new ModelAndView("organization_board");
		mv.addObject("message",cdao.getMessage());
		return mv;
	}
	@RequestMapping(value= {"/student_dashboard"})
	public ModelAndView studentDashboard() {
		ModelAndView mv = new ModelAndView("sdash");
		mv.addObject("message",cdao.getMessage());
		return mv;
	}
	@RequestMapping(value= {"/addQuestion"})
	public ModelAndView addQuestion(@ModelAttribute("question")Question question) {
		ModelAndView mv = new ModelAndView("organization_board");
		/*
		 * Logic to Save QUESTION
		 */
		boolean isAdded = getQuestionService().newQuestion(question);
		if(isAdded)
			mv.addObject("message","Question Added Successfully");
		else {
			mv.addObject("message","Unable to Add the Question. Please Try Again");
			mv = new ModelAndView("errorpage");
		}
		
		return mv;
	}
	@RequestMapping(value= {"/addQuiz"})
	public ModelAndView addQuiz(@ModelAttribute("quiz")Quiz quiz,BindingResult bindingResult) {
		ModelAndView mv = new ModelAndView("organization_board");
		/*
		 * Logic to Save QUESTION
		 */
		boolean isAdded = getQuizService().newQuiz(quiz);
		if(isAdded) {
			System.out.println("QUIZ ADDED");
			mv.addObject("message","Quiz Added Successfully");
		}else {
			mv.addObject("message","Unable to Add the Quiz. Please Try Again");
			mv = new ModelAndView("errorpage");
		}
		
		return mv;
	}
	@RequestMapping(value= {"quiz"})
	public ModelAndView quiz() {
		ModelAndView mv = new ModelAndView("quiz");
		mv.addObject("greetings","WELCOME TO THE SPRING FRAMEWORK");
		return mv;
	}
	@RequestMapping(value= {"resetpass"})
	public ModelAndView resetpass(ModelMap modelMap, @RequestParam("emailid")String email) {
		ModelAndView mv = new ModelAndView("resetpass");
		boolean email_sent = false;
		if(getUserService().generateOTP(email)) {
			email_sent = true;
		}
		if(email_sent) {
			modelMap.addAttribute("mail_sent", true);
		}
		boolean otp_verified = false;
		if(otp_verified) {
			modelMap.addAttribute("otp_verified", true);
			mv.addObject("otp_verify",true);
		}
		return mv;
	}
	@RequestMapping(value= {"page"})
	public ModelAndView page() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greetings","WELCOME TO THE SPRING FRAMEWORK");
		return mv;
	}
}
