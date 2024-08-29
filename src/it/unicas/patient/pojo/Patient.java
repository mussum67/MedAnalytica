package it.unicas.patient.pojo;

public class Patient {
	private String username;
	private String firstName;
	private String lastName;
	private String gender;
	private int age;
	private String bloodGroup;
	private String email;
	private String password;
	private String confirmPassword;

	// Default constructor
	public Patient() {
		// No-arg constructor
	}

	// Parameterized constructor
	public Patient(String username, String firstName, String lastName, String gender, int age, String bloodGroup, String email, String password,  String confirmPassword) {
		this.username = username;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.age = age;
		this.bloodGroup = bloodGroup;
		this.email = email;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}

	// Getters and Setters

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {return confirmPassword;}

	public void setConfirmPassword(String confirmPassword) {this.confirmPassword = confirmPassword;}

	@Override
	public String toString() {
		return "Patient{" +
				"username='" + username + '\'' +
				", firstName='" + firstName + '\'' +
				", lastName='" + lastName + '\'' +
				", gender='" + gender + '\'' +
				", age=" + age +
				", bloodGroup='" + bloodGroup + '\'' +
				", email='" + email + '\'' +
				", password='" + password + '\'' +
				", confirmPassword'" + confirmPassword + '\'' +
				'}';
	}
}
