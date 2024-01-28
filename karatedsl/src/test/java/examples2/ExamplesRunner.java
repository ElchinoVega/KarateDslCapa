package examples2;

import com.intuit.karate.junit5.Karate;

public class ExamplesRunner {
@Karate.Test
Karate testUsers() {
    return Karate.run("NotToDo", "HistoryQuery", "mock", "OtherExamples").relativeTo(getClass());

}

}
