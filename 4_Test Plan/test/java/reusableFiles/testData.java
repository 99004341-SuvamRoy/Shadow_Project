package reusableFiles;

import java.util.ArrayList;
import java.lang.String;

public class testData {
    public static long randomLong()
    {
        long min = -922337203685477580L;
        long max = 9223372036854775807L;
        long result = (long) (Math.random()*(max-min+1)+min);
        return result;
    }

    public static int randomInt()
    {
        int min = -2147483647;
        int max = 2147483647;
        int result = (int) (Math.random()*(max-min+1)+min);
        return result;
    }

    public static String randomString()
    {
        int min = 1, max = 9;
        ArrayList<String> arr = new ArrayList<>();
        for(int i=0; i<4; i++){
            arr.add(String.valueOf((int)(Math.random() * (max - min)) + min));
        }
        StringBuilder sb = new StringBuilder();
        for(String s : arr){
            sb.append(s);
        }
        return sb.toString();
    }

    public static String randomPhone()
    {
        int min = 1, max = 9;
        ArrayList<String> arr = new ArrayList<>();
        for(int i=0; i<10; i++){
            arr.add(String.valueOf((int)(Math.random() * (max - min)) + min));
        }
        StringBuilder sb = new StringBuilder();
        for(String s : arr){
            sb.append(s);
        }
        return sb.toString();
    }

    public static String getAlphaNumericString(int n)
    {

        // chose a Character random from this String
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789"
                + "abcdefghijklmnopqrstuvxyz";

        // create StringBuilder size of AlphaNumericString
        StringBuilder sb = new StringBuilder(n);

        for (int i = 0; i < n; i++) {

            // generate a random number between
            // 0 to AlphaNumericString variable length
            int index = (int)(AlphaNumericString.length()* Math.random());

            // add Character one by one in end of sb
            sb.append(AlphaNumericString
                    .charAt(index));
        }

        return sb.toString();
    }

}
