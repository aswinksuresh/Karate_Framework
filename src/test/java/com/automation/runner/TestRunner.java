package com.automation.runner;


import com.intuit.karate.junit5.Karate;

public class TestRunner {
@Karate.Test
    Karate runTest(){
    return Karate.run("classpath:features").outputCucumberJson(true).reportDir("Karate_Report");
}
}
