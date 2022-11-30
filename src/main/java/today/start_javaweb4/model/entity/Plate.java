package today.start_javaweb4.model.entity;

public class Plate {
	private int id;//問題番号
	private String content;//問題文
	private int answer;//答え　１：〇　２：×　とする。
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}

}
//もしかしたらセッターいらんかもな！
