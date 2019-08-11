
public class Rquiz {
	String question;
	String OptionA;
	String OptionB;
	String OptionC;
	String OptionD;

	public Rquiz(String ques, String OptA, String OptB, String OptC, String OptD)
	{
		question = ques;
		OptionA = OptA;
		OptionB = OptB;
		OptionC = OptC;
		OptionD = OptD;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getOptionA() {
		return OptionA;
	}

	public void setOptionA(String optionA) {
		OptionA = optionA;
	}

	public String getOptionB() {
		return OptionB;
	}

	public void setOptionB(String optionB) {
		OptionB = optionB;
	}

	public String getOptionC() {
		return OptionC;
	}

	public void setOptionC(String optionC) {
		OptionC = optionC;
	}

	public String getOptionD() {
		return OptionD;
	}

	public void setOptionD(String optionD) {
		OptionD = optionD;
	}
	public String toString() {
		return "Question: " + question + "\tQuantity: " + OptionA;
	}
	
	
	
}
