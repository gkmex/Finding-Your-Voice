% File Name : FindingYourVoice.m

% This program provides users with a series of activities to help 
% them find their voice. 

%-------------------------------------------------------------------------

% Part 1: Writing About Yourself

% Prompt the user to write a brief description about themselves 
fprintf("Write a brief description about yourself: \n")
myStory = input("",'s');

% Create a file 
fileID = fopen('MyStory.txt','w'); 

% Save the user's description in the file
fprintf(fileID,myStory); 

% Close the file 
fclose(fileID);

%-------------------------------------------------------------------------

% Part 2: Matching Words and Moods

% Create an array of words 
words = {'Adventurous','Brave','Confident','Driven','Energetic',...
    'Friendly','Grateful','Happy','Inspired','Joyful',...
    'Kind','Lively','Motivated','Optimistic','Passionate',...
    'Quiet','Resilient','Strong','Trustworthy','Unique'};

% Create an array of corresponding moods 
moods = {'Excited for new experiences','Fearless in the face of uncertainty',...
    'Sure of your convictions','Set on accomplishing goals',...
    'Motivated to take action','Approachable and easy to talk to',...
    'Thankful for what you have','Lighthearted and content',...
    'Ready to take on challenges','Filled with cheerfulness',...
    'Caring about others','Ready for anything','Focused on the task ahead',...
    'Seeing possibilities','Enthusiastic about what you do',...
    'Trusting in your instincts','At peace with yourself','Capable of great feats',...
    'Reliable in difficult times','Proud of who you are'};

% Match the words and moods in a cell array 
wordMoods = [words; moods];

% Calculate the number of elements in the cell array
numElements = size(wordMoods,2);

% Prompt the user to complete the exercise 
fprintf("\nMatch the words with the corresponding mood: \n");

% Iterate through each element in the array 
for i = 1:numElements
    
    % Print the words 
    fprintf("\n%s", wordMoods{1,i});
    
    % Prompt the user for the corresponding mood
    userMoods{1,i} = input("\nEnter the corresponding mood: ",'s');
    
end

% Save the user's responses in a text file 
fileID = fopen('WordMoods.txt','w');

% Print the words and user's responses in the text file 
for i = 1:numElements
    fprintf(fileID,"Word: %s\nMood: %s\n\n",wordMoods{1,i},userMoods{1,i});
end

% Close the text file 
fclose(fileID);

%-------------------------------------------------------------------------

% Part 3: Affirmation Writing 

% Create an array of affirmations 
affirmations = {'I am able to make a difference','I have the strength to overcome any challenge',...
    'I am in control of my own life','I am worthy of happiness and success',...
    'I am valuable in this world','I can create my own opportunities',...
    'I can accomplish anything I set my mind to','I am worthy of unconditional love',...
    'I am capable of achieving my goals','I will never give up',...
    'I deserve to be respected','I am understanding and kind',...
    'I am grateful for what I have','I am loved and supported',...
    'I always strive to do my best','I am secure in who I am'};

% Calculate the number of affirmations 
numAffirmations = size(affirmations,2);

% Prompt the user to complete the exercise 
fprintf("\nWrite your own affirmations: \n");

% Iterate through each element in the array 
for i = 1:numAffirmations
    
    % Prompt the user for their affirmation 
    userAffirmations{1,i} = input("\nEnter your affirmation: ",'s');
    
end

% Save the user's affirmations in a text file 
fileID = fopen('Affirmations.txt','w');

% Print the user's affirmations in the text file 
for i = 1:numAffirmations
    fprintf(fileID,"%s\n",userAffirmations{1,i});
end

% Close the text file 
fclose(fileID);

%-------------------------------------------------------------------------

% Part 4: Identifying Your Values 

% Create an array of values 
values = {'Authenticity','Bravery','Creativity','Determination',...
    'Empathy','Family','Generosity','Honesty','Integrity',...
    'Justice','Kindness','Love','Motivation','Optimism',...
    'Passion','Respect','Self-care','Trust','Unity'};

% Calculate the number of values 
numValues = size(values,2);

% Prompt the user to complete the exercise
fprintf("\nRank the following values from 1 (most important) to 20 (least important): \n");

% Iterate through each element in the array 
for i = 1:numValues
    
    % Print the values 
    fprintf("\n%s", values{1,i});
    
    % Prompt the user for their ranking 
    userValues(1,i) = input("\nEnter your ranking (1-20): ");
    
end

% Sort the user's ranking 
[~,sortIndex] = sort(userValues);

% Save the user's rankings in a text file 
fileID = fopen('MyValues.txt','w');

% Print the user's rankings in the text file 
for i = 1:numValues
    fprintf(fileID,"%s: %d\n",values{1,sortIndex(i)},userValues(1,sortIndex(i)));
end

% Close the text file 
fclose(fileID); 

%-------------------------------------------------------------------------

% Part 5: Creating a Vision Board 

% Prompt the user to create a vision board
fprintf("\nCreate a vision board that highlights the values that matter the most to you.\n")

% Prompt the user to save the vision board 
saveBoard = input("\nType 'yes' to save your vision board: ",'s');

% Check if the user typed 'yes' 
if strcmp(saveBoard,'yes')
    % Prompt the user for the filename 
    filename = input("\nEnter the filename for the vision board: ",'s');
    
    % Save the vision board 
    save(filename);
end