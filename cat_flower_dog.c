#include <stdio.h>

int main()
{
  /* Initialize variables */
  int i; 
  char voice[2000];

  /* Iterate through the array of 2000 characters 
   * and fill each entry with a character that 
   * expresses the narrator's voice */
  for (i = 0; i < 2000; i++) {
    voice[i] = 'A';
  }

  /* Print out the contents of the filled array */
  printf("Finding Your Voice\n\n");
  for (i = 0; i < 2000; i++) {
    printf("%c", voice[i]);
  }

  printf("\n");

  return 0;
}