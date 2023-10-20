using Serilog;

namespace dekoeky.hello_world;

public static class Greeting
{
    private static readonly ILogger Logger;

    static Greeting()
    {
        Logger = new LoggerConfiguration()
            .WriteTo.Console()
            .CreateLogger();
    }
    public static string Get()
    {
        return "Hello, World!" + Environment.NewLine + "Greetings, dekoeky";
    }
    public static void Perform()
    {
        Logger.Information(Get());
    }
}
