public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
      println(reverse(noSpaces(lines[i])));
    }
  }
}
public boolean palindrome(String word)
{
  if (noSpaces(word).equalsIgnoreCase(noSpaces(reverse(word)))) return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i>=0; i--){
      sNew = sNew + str.charAt(i);
    }
    return sNew;
}
public String noSpaces(String sWord){
  String ret = "";
  for (int i = 0; i<sWord.length(); i++){
    if (Character.isLetter(sWord.charAt(i))) ret = ret + sWord.charAt(i);
  }
  return ret;
}
