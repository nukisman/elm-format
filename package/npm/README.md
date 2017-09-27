
See [https://github.com/nukisman/elm-format-short](https://github.com/nukisman/elm-format-short)

`elm-format-short` formats your code like `elm-format` but: 
* Without extra blank lines
* Without extra line breaks
* Without extra indents
    
`elm-format-short` formats [Elm](http://elm-lang.org) source code according to a standard set of rules in shorter way than `elm-format`.

The benefits of `elm-format-short` are same as of `elm-format`:
 - It makes code **easier to write**, because you never have to worry about minor formatting concerns while powering out new code.
 - It makes code **easier to read**, because there are no longer distracting minor stylistic differences between different code bases. As such, your brain can map more efficiently from source to mental model.
 - It makes code **easier to maintain**, because you can no longer have diffs related only to formatting; every diff necessarily involves a material change.
 - It **saves your team time** debating how to format things, because there is a standard tool that formats everything the same way.
 - It **saves you time** because you don't have to nitpick over formatting details of your code.

Plus benefits in contrast to `elm-format`:
 - It makes code **easier to read**, because you can see more code without scrolling.
 - It makes code **easier to navigate**, because you have not to scroll needless empty space by mouse or arrows on keyboard.
 - It makes code **easier to write**, because it is **easier to read** and **easier to navigate**.
 - It makes code **easier to debug**, because your lines of code commented out for debug purposes are not surrounded by needless blank lines above and below.
 - It **saves your money** because you can still use your display. It not require you to buy new display with vertical resolution of 1000000000 pixels to see tons of blank lines.

## Example formatting

See `dreamwriter` app by `@rtfeldman`:
 - [Editor.elm](https://github.com/nukisman/elm-format-short/blob/master/tests/test-files/good/rtfeldman/dreamwriter/Editor.elm)
 - [LeftSidebar.elm](https://github.com/nukisman/elm-format-short/blob/master/tests/test-files/good/rtfeldman/dreamwriter/LeftSidebar.elm)
 - [RightSidebar.elm](https://github.com/nukisman/elm-format-short/blob/master/tests/test-files/good/rtfeldman/dreamwriter/RightSidebar.elm)
 - [WordGraph.elm](https://github.com/nukisman/elm-format-short/blob/master/tests/test-files/good/rtfeldman/dreamwriter/WordGraph.elm)  

## Installation (currently Mac and Linux only) 

`npm i -g elm-format-short`  

## JetBrains Integration

This is for WebStorm and other JetBrains IDEs.

1. Install `elm-format-short`
1. Install the [Elm Language Plugin](https://durkiewicz.github.io/elm-plugin/) package.
1. Install the File Watchers plugin (available in the plugin repository)
1. Add a file watcher for .elm files with the settings as [shown here](https://github.com/nukisman/elm-format-short/blob/master/img/JetBrains%20setup.png).
1. Set tab/indent size to 2 spaces as [shown here](https://github.com/nukisman/elm-format-short/blob/master/img/JetBrains%20setup%20tabsize.png)

 