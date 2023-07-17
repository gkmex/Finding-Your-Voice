fn main() {
    // Variables to keep track of the words
    let mut vocals = 0;
    let mut consonants = 0;
    
    // Let's get the sentence from the user
    println!("Please enter a sentence:");
    let mut sentence = String::new();
    std::io::stdin().read_line(&mut sentence).expect("Failed to read line!");
    
    // Loop through each character
    for c in sentence.chars() {
        // Check if the character is a letter
        if c.is_alphabetic() {
            // Check for vowels
            if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' {
                vocals += 1;
            } else {
                consonants += 1;
            }
        }
    }
    
    // Print out the results
    println!("Number of vowels: {}", vocals);
    println!("Number of consonants: {}", consonants);
    
    // Now let's calculate the average number of characters per word
    let total_words = vocals + consonants;
    let average_chars_per_word = (vocals + consonants) as f32 / total_words as f32;
    println!("Average characters per word: {}", average_chars_per_word);
    
    // Now let's see if this sentence has a strong or weak voice
    if average_chars_per_word > 2.5 {
        println!("Your voice is strong!");
    } else {
        println!("Your voice is weak...");
    }
}