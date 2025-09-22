@IsTest
private class MyApexClassTest {
    
    @IsTest
    static void testGetGreeting() {
        String name = 'Akshaja';
        String expected = 'Hello, Akshaja!';
        String actual = MyApexClass.getGreeting(name);
        System.assertEquals(expected, actual);
    }
    
}