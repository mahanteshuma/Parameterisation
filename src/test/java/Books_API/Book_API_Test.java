package Books_API;

import com.intuit.karate.FileUtils;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class Book_API_Test {

    @Test
     public void testParallel() {
        Results results = Runner.path("classpath:Books_API/Books_API_Order_Details")
                .outputCucumberJson(true)
                .parallel(5);
        generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }


    private static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = org.apache.commons.io.FileUtils.listFiles(new File(karateOutputPath), new String[]{"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        for (File file : jsonFiles) {
            jsonPaths.add(file.getAbsolutePath());
        }
        Configuration config = new Configuration(new File("target"), "Book_API");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}



