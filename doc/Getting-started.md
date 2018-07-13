# Getting started.
## Table of contents.
    * Installing SIMPLE & it's enviroment.
    - Test your installation.
    * Getting help.
## Installing SIMPLE & it's enviroment.
SIMPLE can be installed on any operating system. Be it Windows, Linux or Unix OS* and even Mac. In this section, i'll discuss how we can install in all OS'es.
#### Unix / Linux Os.
To install **SIMPLE** on a Unix / Linux OS, grab the latest release of the Linux package from [here](https://github.com/simple-lang/simple/releases). Choose the suitable OS type and download.
Upon downloading, you'll unzip and install. Open your terminal:
```sh
$ unzip simple-release-version.zip & cd simple-release-version
$ cd build & chmod +x Linux-build.sh 
$ sudo ./Linux-build.sh -c -i
# This check and configures your system (-c) and then install (-i)
```
Boom!. SIMPLE has been installed and enviroments and modules have also been added.

#### Windows OS.
It's pretty simple to install **SIMPLE** on Windows OS. Grab the latest release for windows from [here](https://github.com/simple-lang/simple/releases) and run the *.exe* file. In a few moments, you'll have SIMPLE installed.

#### Mac OS.
The steps are pretty similar to the one of the Unix. Grab the latest release for **Mac** from [here](https://github.com/simple-lang/simple/releases). Unzip and run the sh file. Open your console.
```sh
$ unzip simple-release-version.zip & cd simple-release-version
$ cd build & chmod +x SimpleOnlyBuild-mac.sh
$ sudo ./SimpleOnlyBuild-Mac.sh
```

## Testing your installation.
To test your installation, open your Konsole, Terminal or command prompt and test run the *SIMPLE* command.
```sh
$ simple
```
You can also test the enviroments built with it, such as the repl ( read-evaluate-print-loop) with the command:
```sh
$ simplerepl
```

### Hello world - Testing the installation.
To see simple in action, we'll write a basic *hello world* in simple. Create a new file in your desired workspace, I'll name mine __hello.sim__. Write this in the file:
```
display "Hello World"
```
Run the file using the simple compiler from your command prompt, terminal or konsole.
```sh
$ simple hello.sim
// Displays "Hello world"
```

## Getting help.
Stuck installing  SIMPLE ? Do create a new issue **[here](https://github.com/simple-lang/simple/issues)**. We'll be glad to help.