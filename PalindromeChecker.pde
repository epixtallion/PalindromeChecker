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
public String noSpaces(String str){
  for (int i = 0; i<str.length(); i++){
    Character c = str.charAt(i);
    if (c == ' ' || c == '!' || c == ',' || c == '.' || c == '\''){
        str = str.substring(0, i) + str.substring(i+1);
        i--;
      }
  }
  return str;
}
