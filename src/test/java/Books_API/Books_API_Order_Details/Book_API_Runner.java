package Books_API.Books_API_Order_Details;

import com.intuit.karate.junit5.Karate;

class Book_API_Runner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:Books_API/Books_API_Order_Details").relativeTo(getClass());
    }    

}
