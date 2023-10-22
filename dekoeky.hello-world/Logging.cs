using Serilog;

namespace dekoeky.hello_world;

internal static class Logging
{
    public static ILogger Logger { get; }

    static Logging()
    {
        Logger = new LoggerConfiguration()
            .WriteTo.Console()
            .CreateLogger();
    }
}
