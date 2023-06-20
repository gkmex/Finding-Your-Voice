#include <iostream>
#include <string>

using namespace std;

// define a function to print out instructions for the program
void printInstructions() {
  cout << "Welcome to the 'Finding Your Voice' program!" << endl;
  cout << "This program will help you explore who you are by asking important questions." << endl;
  cout << "After each prompt, type in a response and press the enter key." << endl;
  cout << "At the end of the program, you will have the opportunity to ";
  cout << "reflect on your responses and discover who you are." << endl;
  cout << "We hope you enjoy the program and have fun!\n\n";
}

// define a function to ask and store values from the user
void getValues(string& resp1, string& resp2, string& resp3, string& resp4, string& resp5, string& resp6) {
  cout << "Question 1: What makes you unique?" << endl;
  cin >> resp1;
  cout << "Question 2: Who are you when nobody else is watching?" << endl;
  cin >> resp2;
  cout << "Question 3: What qualities do you admire in others?" << endl;
  cin >> resp3;
  cout << "Question 4: What hopes and dreams do you have for the future?" << endl;
  cin >> resp4;
  cout << "Question 5: What brings you joy and satisfaction?" << endl;
  cin >> resp5;
  cout << "Question 6: What words would you use to describe yourself?" << endl;
  cin >> resp6;
}

// define a function to print out a summary of the user's responses
void printSummary(string resp1, string resp2, string resp3, string resp4, string resp5, string resp6) {
  cout << "Here is a summary of your responses:\n";
  cout << "You are unique because " << resp1 << ".\n";
  cout << "When nobody else is watching, you are " << resp2 << ".\n";
  cout << "You admire qualities such as " << resp3 << " in others.\n";
  cout << "You have hopes and dreams such as " << resp4 << " for the future.\n";
  cout << "You find joy and satisfaction in " << resp5 << ".\n";
  cout << "You would describe yourself as " << resp6 << ".\n";
}

// define a function to print out a reflection on the user's responses
void printReflection(string resp1, string resp2, string resp3, string resp4, string resp5, string resp6) {
  cout << "\nBased on your responses, it is clear that you are....\n";
  cout << "A strong and unique individual who is not afraid to be themselves!\n";
  cout << "You have a strong appreciation for the qualities of others and " << resp3 << ".\n";
  cout << "You are ambitious and have big plans for your future: " << resp4 << ".\n";
  cout << "Most of all, you are passionate and enjoy life by " << resp5 << ".\n";
  cout << "These are amazing qualities, and combined with your unique " << resp1 << " and ";
  cout << "your ability to be " << resp2 << " when nobody else is watching, it's clear ";
  cout << "that you are confident and have found your voice!\n";
  cout << "Congratulations on " << resp6 << " yourself and discovering the magical ";
  cout << "person you are!\n";
}

// define main function
int main() {
  // print out program instructions
  printInstructions();
  
  // define variables to store user input
  string resp1, resp2, resp3, resp4, resp5, resp6;

  // call function to get values from user
  getValues(resp1, resp2, resp3, resp4, resp5, resp6);

  // call function to print out a summary of the user's responses
  printSummary(resp1, resp2, resp3, resp4, resp5, resp6);

  // call function to print out a reflection on the user's responses
  printReflection(resp1, resp2, resp3, resp4, resp5, resp6);

  return 0;
}