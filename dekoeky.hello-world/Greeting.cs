using static dekoeky.hello_world.Logging;

namespace dekoeky.hello_world;

public static class Greeting
{
    public static string Get() => "Hello, World!" + Environment.NewLine + "Greetings, dekoeky";

    public static void Perform() => Logger.Information(Get());
}
