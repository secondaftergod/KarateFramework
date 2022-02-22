package PageObjects;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class HtmlFind {

    public static List findUrls(String text){
        Pattern m = Pattern.compile("https://[.a-zA-Z0-9]+/*([.a-zA-Z0-9-_/?=&]*/*)");
        Matcher r=m.matcher(text);
        List urls= new ArrayList();
        while(r.find()){
            urls.add(r.group());
        }
        return urls;



    }
}
