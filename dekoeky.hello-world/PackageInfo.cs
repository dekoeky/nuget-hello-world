using System.Reflection;
using static dekoeky.hello_world.Logging;

namespace dekoeky.hello_world;

/// <summary>
/// Provides some information regarding the assembly.
/// </summary>
public class PackageInfo
{
    public static PackageInfo Get()
    {
        var assembly = Assembly.GetExecutingAssembly();
        var assemblyName = assembly.GetName();

        var name = assemblyName.Name;
        var version = assemblyName.Version;

        return new PackageInfo
        {
            Name = name!,
            Version = version!,
        };
    }

    public static void Print()
    {
        var info = Get();

        Logger.Information("Package {name}, Version {version}", info.Name, info.Version);
    }

    public string Name { get; private set; } = null!;
    public Version Version { get; private set; } = null!;
}
