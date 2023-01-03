package Books_API.Books_API_Order_Details;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:Books_API/Books_API_Order_Details").relativeTo(getClass());
    }    

}
