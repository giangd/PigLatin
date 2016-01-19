//line 30 consonants or try to use position of first vowel to determine the position of the ledaing consoantns
import java.util.*;

public void setup() {
	// String lines[] = loadStrings("words.txt");
	// System.out.println("there are " + lines.length + " lines");
	// for (int i = 0 ; i < lines.length; i++) {
	//   System.out.println(pigLatin(lines[i]));
	// }
	println(findFirstVowel(""));
}
public void draw() {}

public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i = 0; i < sWord.length(); i++) {
		if (sWord.substring(i,i+1).equals("a") || sWord.substring(i,i+1).equals("i") || sWord.substring(i,i+1).equals("u") || sWord.substring(i,i+1).equals("e") || sWord.substring(i,i+1).equals("o")) {
			return i;
		}
	}
	return -1;
}

public int findLeadingConsonants(String sWord) {
	int position = 0;
	if (sWord.substring(0,1)) {
		for (int i = 1; i < sWord.length(); i++) {
			if (sWord.substring(i,i+1).equals("a") || sWord.substring(i,i+1).equals("i") || sWord.substring(i,i+1).equals("u") || sWord.substring(i,i+1).equals("e") || sWord.substring(i,i+1).equals("o")) {
				position++;
			}
		}
		return position;
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	String firstLetter = sWord.substring(0,1);
	if(findFirstVowel(sWord) == -1) {
		return sWord + "ay";
	} else if (findFirstVowel(sWord) == 0) {
		return sWord + "way";
	} else if (sWord.substring(0,3).equals("qu")) {
		sWord.substring(3) + "qu";
	} else {
		sWord.substring(1) +  
	}
}
\