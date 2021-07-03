public class Twitter {

  public String loadTweet()
  {
    try {
      Thread.sleep(4000);
    } catch (InterruptedException e) {}

    double r =  Math.random();
    if (r <= 0.45) {
      return "I am tweet that likes to talk about @me";
    } else if (r <= 0.9) {
      return "Hello to @you";
    } else {
      return null;
    }
  }

  public boolean isMentionned(String name) {
    String tweet = loadTweet();
    if (tweet==null){
      return false;
    }
    int i = tweet.indexOf("@");
    int i2 = tweet.indexOf(" ",i);
    if (i2==-1){
      tweet = tweet.substring(i);
    }else{
      tweet = tweet.substring(i,i2);
    }
    return tweet.contains("@" + name);
  }

}