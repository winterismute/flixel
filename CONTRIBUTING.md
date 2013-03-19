
#### Releases

Right now the focus is on releasing a stable release of Flixel 2.56, **only containing bug fixes and performance improvements**. This release should be reverse-compatible with Flixel 2.55 and able to be dropped in to an existing Flixel game without breaking any existing code. All issues that will be handled in this version are marked with the [**Flixel v2.56** milestone](https://github.com/FlixelCommunity/flixel/issues?milestone=1&state=open)

Any new features or changes that break existing code are saved for the next version of Flixel. All existing issues that fall into this category are marked with the [**Future release** milestone](https://github.com/FlixelCommunity/flixel/issues?milestone=2&state=open).

#### Branches

 `FlixelCommunity/master` The current, stable release; currently at Flixel v2.55 (Adam Atomic's version).  
 `FlixelCommunity/dev` The developmental version containing all the fixes for the next release. Only "finished" bug fixes should be merged into this branch; no "half-finished" code or code that doesn't compile.

#### Finding an issue to work on

If you don't already know of a bug and want to find something to work on, you can [browse the existing issues](https://github.com/FlixelCommunity/flixel/issues?page=1&state=open).

Some issues are already being worked, have an open pull request, or won't be worked on until the future. To find which issues are free for you to work on, use the **OPEN** label.

Here is a list of all open issues that still need fixing before Flixel v2.56:
* https://github.com/FlixelCommunity/flixel/issues?labels=OPEN&milestone=1&page=1&state=open


#### Creating a pull request

As usual, be clear in your pull request's description, and follow the coding conventions used by the surrounding Flixel code (e.g. open brackets start on the next line, camel case naming).

To avoid merge conflicts, start your pull requests from the `FlixelCommunity/dev` branch. If you are on a system that supports Bash (usually MAC or Linux), you can use the following [GIT alias](https://git.wiki.kernel.org/index.php/Aliases) to assist:

```
dev = "!git fetch FlixelCommunity && git checkout FlixelCommunity/dev -b "
```

To use the alias, make sure `FlixelCommunity` is added as a remote repository, and run the following command when you want to start working on an issue, which will create a new branch with the specified name:

```
 $ git dev fix-some-issue
```

