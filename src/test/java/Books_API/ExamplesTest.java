package Books_API;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class ExamplesTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:Books_API/Books_API_Order_Details")
                //.outputCucumberJson(true)
                .parallel(5);
       assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
