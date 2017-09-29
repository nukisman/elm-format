var binwrap = require("binwrap");
var path = require("path");

var packageInfo = require(path.join(__dirname, "package.json"));
var binVersion = packageInfo.version//.replace(/\.[0-9]*$/, "");

var root = "https://github.com/nukisman/elm-format-short/releases/download/" +
  binVersion +
  "/elm-format-short-0.18-" +
  binVersion;

module.exports = binwrap({
  binaries: ["elm-format-short"],
  urls: {
    "darwin-x64": root + "-mac-x64.tgz",
    "linux-x64": root + "-linux-x64.tgz",
     "win32-x64": root + "-win-i386.zip",
     "win32-ia32": root + "-win-i386.zip"
  }
});
