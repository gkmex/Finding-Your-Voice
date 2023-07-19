// Create a data structure to represent our users
struct User {
    name: String,
    age: u32,
    gender: String,
    interests: Vec<String>,
    preferences: Vec<String>,
}

// Implementing a constructor for our User struct
impl User {
    fn new (name: String, age: u32, gender: String, interests: Vec<String>, preferences: Vec<String>) -> User {
        User {
            name,
            age,
            gender,
            interests,
            preferences,
        }
    }
}

// Trait to represent a find_your_voice functionality
trait FindYourVoice {
    fn find_your_voice(&self);
}

// Implementation of FindYourVoice trait for our User struct 
impl FindYourVoice for User {
    fn find_your_voice(&self) {
        let mut voice = "".to_string();
        let mut new_interests_and_preferences = vec![];

        // Look at all interests and preferences
        for interest in &self.interests {
            if !self.preferences.contains(interest) {
                new_interests_and_preferences.push(interest);
            }
        }
        for preference in &self.preferences {
            if !self.interests.contains(preference) {
                new_interests_and_preferences.push(preference);
            }
        }

        // Generate a voice based on age, gender, and new interests and preferences
        match self.age {
            0...17 => voice.push_str("young"),
            18...64 => voice.push_str("adult"),
            _ => voice.push_str("elderly"),
        }

        match &self.gender {
            "male" => voice.push_str("_male"),
            "female" => voice.push_str("_female"),
            _ => voice.push_str("_other"),
        }

        for item in new_interests_and_preferences {
            voice.push_str(&format!("_{}", item));
        }

        println!("{} has found their voice: {}", self.name, voice);
    }
}

fn main() {
    // Create a new User
    let user_name = String::from("John");
    let user_age = 34;
    let user_gender = String::from("male");
    let user_interests = vec![
        String::from("video_games"), 
        String::from("cooking")
    ];
    let user_preferences = vec![
        String::from("drawing"), 
        String::from("writing")
    ];

    let user = User::new(user_name, user_age, user_gender, user_interests, user_preferences);

    // Invoke find_your_voice
    user.find_your_voice();
}