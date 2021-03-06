
# Socratic Programmer - Dotnet Nuget Pack
A custom Azure Pipeline build task for nuget packaging using the dotnet cli.

[![Build status](https://dev.azure.com/jesmith26/SocraticProgrammer/_apis/build/status/Libraries/Socratic.DataAccess.Abstractions)](https://dev.azure.com/jesmith26/SocraticProgrammer/_apis/build/status/Libraries/NugetBuildTask-CI?branchName=dev)



## Input Variables
- Project Path   
The path to the **single** csproj file that is being built.
- Output Path  
The final location in which you would like the .nupkg file to be placed
- Major Version  
The major version of the nuget package
- Minor Version  
The minor version of the nuget package

## Conventions

### Versioning
- Builds for the dev branch result in a .nupkg file with a version comprised of the provided major and minor versions appended with an increment above the most recent nuget package you have previously published.

- Builds for branches other than dev have a version equal to the current build number.

- The assembly versions for all projects are set equal to the package version.

**_Note_**: If you are attempting to pack with major and minor versions which do not match your latest published version then the patch version will always get set to 0.

### Naming
The name of the nuget package is the base name of the csproj file given in the *project path* variable. Currently this is not configurable in the task.

 ## Example Scenarios
 
 1. #### If you have never published a package with the same name, provide a major version of 1, a minor version of 0, and are building the dev branch...
    The result will be a package with the version 1.0.0

 2. #### If you are building a feature branch and the build number is 2018.12.11.2...  
     The result will be a package with the version 2018.12.11.2

 3. #### If the latest published package with the same name is 1.0.3, you provide a major version of 1, a minor version of 0, and are building the dev branch...  
     The result will be a package with the version 1.0.4

4. #### If the latest published package with the same name is 1.0.3, you provide a major version of 1, a minor version of 1, and are building the dev branch...
    The result will be a package with the version 1.1.0
 