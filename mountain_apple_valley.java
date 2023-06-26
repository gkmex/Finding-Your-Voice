public class FindingYourVoice {
	
	// fields
	private String[] topics;
	private String[] experiences;
	private String[] interests;
	private String[] values;
	private String[] careerGoals;
	
	/**
 	* Class constructor that creates an empty list of each topic.
 	*/
	public FindingYourVoice() {
		this.topics = new String[0];
		this.experiences = new String[0];
		this.interests = new String[0];
		this.values = new String[0];
		this.careerGoals = new String[0];
	}
	
	/**
	 * Method to add topic to list of topics
	 * @param topic a string that is added to the list of topics 
	 */
	public void addTopic(String topic) {
		// create a new array of lengt
		String[] newTopics = new String[topics.length + 1];
		// copy elements from old array to new one
		for (int i = 0; i < topics.length; i++) {
			newTopics[i] = topics[i];
		}
		// add the new topic to the end of the array
		newTopics[topics.length] = topic;
		// point the topics variable to the new array
		topics = newTopics;
	}
	
	/**
	 * Method to add experience to list of experiences
	 * @param experience a string that is added to the list of experiences
	 */
	public void addExperience(String experience) {
		// create a new array of length
		String[] newExperiences = new String[experiences.length + 1];
		// copy elements from old array to new one
		for (int i = 0; i < experiences.length; i++) {
			newExperiences[i] = experiences[i];
		}
		// add the new experience to the end of the array
		newExperiences[experiences.length] = experience;
		// point the experiences variable to the new array
		experiences = newExperiences;
	}
	
	/**
 	* Method to add interest to list of interests
 	* @param interest a string that is added to the list of interests
 	*/
	public void addInterest(String interest) {
		// create a new array of length
		String[] newInterests = new String[interests.length + 1];
		// copy elements from old array to new one
		for (int i = 0; i < interests.length; i++) {
			newInterests[i] = interests[i];
		}
		// add the new interest to the end of the array
		newInterests[interests.length] = interest;
		// point the interests variable to the new array
		interests = newInterests;
	}
	
	/**
 	* Method to add value to list of values
 	* @param value a string that is added to the list of values
 	*/
	public void addValue(String value) {
		// create a new array of length
		String[] newValues = new String[values.length + 1];
		// copy elements from old array to new one
		for (int i = 0; i < values.length; i++) {
			newValues[i] = values[i];
		}
		// add the new value to the end of the array
		newValues[values.length] = value;
		// point the values variable to the new array
		values = newValues;
	}
	
	/**
 	* Method to add career goal to list of career goals
 	* @param careerGoal a string that is added to the list of career goals
 	*/
	public void addCareerGoal(String careerGoal) {
		// create a new array of length
		String[] newCareerGoals = new String[careerGoals.length + 1];
		// copy elements from old array to new one
		for (int i = 0; i < careerGoals.length; i++) {
			newCareerGoals[i] = careerGoals[i];
		}
		// add the new career goal to the end of the array
		newCareerGoals[careerGoals.length] = careerGoal;
		// point the careerGoals variable to the new array
		careerGoals = newCareerGoals;
	}
	
	/**
 	* Method to retrieve the topic list
 	* @return the list of topics
 	*/
	public String[] getTopics() {
		return this.topics;
	}

	/**
 	* Method to retrieve the experience list
 	* @return the list of experiences
 	*/
	public String[] getExperiences() {
		return this.experiences;
	}
	
	/**
 	* Method to retrieve the interest list
 	* @return the list of interests
 	*/
	public String[] getInterests() {
		return this.interests;
	}
	
	/**
 	* Method to retrieve the value list
 	* @return the list of values
 	*/
	public String[] getValues() {
		return this.values;
	}
	
	/**
 	* Method to retrieve the career goal list
 	* @return the list of career goals
 	*/
	public String[] getCareerGoals() {
		return this.careerGoals;
	}
	
	/**
 	* Method to print out all topics
 	*/
	public void printTopics() {
		for (String topic : topics) {
			System.out.println(topic);
		}
	}
	
	/**
 	* Method to print out all experiences
 	*/
	public void printExperiences() {
		for (String experience : experiences) {
			System.out.println(experience);
		}
	}
	
	/**
 	* Method to print out all interests
 	*/
	public void printInterests() {
		for (String interest : interests) {
			System.out.println(interest);
		}
	}
	
	/**
 	* Method to print out all values
 	*/
	public void printValues() {
		for (String value : values) {
			System.out.println(value);
		}
	}
	
	/**
 	* Method to print out all career goals
 	*/
	public void printCareerGoals() {
		for (String careerGoal : careerGoals) {
			System.out.println(careerGoal);
		}
	}
}