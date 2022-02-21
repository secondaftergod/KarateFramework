package PageObjects;

import com.jayway.restassured.path.json.JsonPath;

import java.util.List;
import java.util.Map;

public class JsonParser {

    public static String isValid(String json,String json1){
        String item = JsonPath.from(json).get("connectedApps[0].applicationRoles[0].roleId");
        String item1 = JsonPath.from(json1).get("roleId");
        return item;
    }


}