namespace dekoeky.hello_world.tests;

[TestClass]
public class GreetingTests
{
    [TestMethod]
    public void Get()
    {
        //Act
        var greet = Greeting.Get();

        //Assert
        Assert.IsNotNull(greet);
        Assert.IsFalse(string.IsNullOrEmpty(greet));
        Assert.IsFalse(string.IsNullOrWhiteSpace(greet));
    }

    [TestMethod]
    public void Perform()
    {
        var sw = new StringWriter();
        Console.SetOut(sw);

        //Act
        Greeting.Perform();

        //Assert
        var greet = sw.ToString();
        Assert.IsNotNull(greet);
        Assert.IsFalse(string.IsNullOrEmpty(greet));
        Assert.IsFalse(string.IsNullOrWhiteSpace(greet));
    }
}
