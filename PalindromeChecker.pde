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
    }
  }
}
public boolean palindrome(String word)
{
  str = word
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i>=0; i--){
      sNew = sNew + str.charAt(i);
    }
    return sNew;
}
public String noSpaces(String str){
  String ret;
  for (int i = 0; i<str.length(); i++){
    if (str.charAt(i) == ' ') str = str.substring(0, i) + str.substring(i+1);
  }
}
