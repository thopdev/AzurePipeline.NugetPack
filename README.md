
# Socratic Programmer - Dotnet Nuget Pack
A custom Azure Pipeline build task for nuget packaging using the dotnet cli.

[![Build status](https://dev.azure.com/jesmith26/SocraticProgrammer/_apis/build/status/Libraries/Socratic.DataAccess.Abstractions)](https://dev.azure.com/jesmith26/SocraticProgrammer/_apis/build/status/Libraries/Socratic.DataAccess.Abstractions?branchName=dev)



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
Builds for the dev branch result in a .nupkg file with a version comprised of the provided major and minor versions appended with an increment above the most recent nuget package you have previously published.

Note that if you are attempting to pack with major and minor versions which do not match your latest published version then the patch version will always get set to 0.

Builds for branches other than dev have a version equal to the current build number.

### Naming
The name of the nuget package is the base name of the csproj file given in the *project path* variable. Currently this is not configurable in the task.

 **Example Scenarios**
 1. If you have never published a package with the same name and provide a major version of 1 and a minor version of 0.  
 