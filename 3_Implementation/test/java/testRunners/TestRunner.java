package testRunners;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.Assert.*;
import org.junit.Test;
import com.intuit.karate.*;

@KarateOptions(tags = {"@smoke"})
public class TestRunner {
    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:features").tags("@smoke").parallel(1);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }

}
