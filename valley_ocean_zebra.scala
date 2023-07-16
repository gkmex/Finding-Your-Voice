//Create a new Scala file with an object that contains the main method
object FindingYourVoice {
  def main(args: Array[String]): Unit = {

  	//Define a variable to save the user input
    var userInput = ""

    //Request user input
    println("What is your voice? ")

    //Save user input
    userInput = readLine()

    //Create a loop to validate the input
    while(!userInput.equals("done")) {

      //Create if/else conditionals to check for valid entries
      if (userInput.equals("loud")) {
        println("Your voice is loud. Good for you!")
        println("What is your voice? ")
      } else if (userInput.equals("soft")) {
        println("Your voice is soft. That's OK too!")
        println("What is your voice? ")
      } else if (userInput.equals("confident")) {
        println("Your voice is confident. Great job!")
        println("What is your voice? ")
      } else {
        println("I'm sorry, I don't understand your answer. Please try again.")
        println("What is your voice? ")
      }

      //Save user input
      userInput = readLine()
    }

    //Display final output
    println("Good job! You've found your voice!")
  }
}