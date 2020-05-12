# WebWL
![](https://img.shields.io/github/v/release/PCabralSoftware/WebWL?style=flat-square&include_prereleases) ![](https://img.shields.io/github/license/PCabralSoftware/WebWL?style=flat-square) ![](https://img.shields.io/badge/Made%20with-Wolfram%20Language-red?style=flat-square)

A powerful web framework powered by the Wolfram Language. Use HTML files with special tags to execute code dynamically, serve files, and much more. Compatible from versions from **11.2.0** ─ **12.1.0**.

## Features
- **Powerful** ─ Create _parametric plots_, solve _differential equations_, manipulate _symbolic expressions_, perform _higher mathematical computation_, get _stock market data_, use _neural networks_, evaluate _back-end_ code, everything you can do in the Wolfram Language, and render it as a HTML page.

- **Modern** ─ From **SSL** to **HTTP/2**, this project constantly works on bringing the most recent web technologies and protocols.

- **Secure** ─ Using good development standards and practices, this engine can resist [cross-site-scripting](https://owasp.org/www-community/attacks/xss/) attacks, [path-traversal](https://owasp.org/www-community/attacks/Path_Traversal) attacks, and many other types of invasions.

- **Cross-Platform** ─ Works on *MacOS*, *Windows*, and *Linux*.

- **Live-Reloading** ─ Change code, create new routes, and configure features at runtime.

- **Native** ─ No depencencies. Unlike other projects like [WolframWebEngineForPython](https://github.com/WolframResearch/WolframWebEngineForPython), it's entirely made with one single language.

- **File-System Routing** ─ It can create routes using files on a folder and logic using snippets of code inside HTML files.

- **Custom Routing** ─ You can also create routes using a router file, and delivering content using only `.wl` files.

## WolframHTML (WHTML)
**WebWL** comes with a powerful tool, the **WolframHTML**. It comes with special html tags for server-side rendering of the Wolfram Language.

```html
<html>
  <body>
    <wl:code>
      DocumentWrite["Hello, world!"];
    </wl:code>
  </body>
</html>
```

## Prerequisites
- Mathematica v11.2.0+, Wolfram Engine v11.2.0+  or Wolfram Desktop v11.2.0+

## Usage
Install **WebWL**, and execute the file with the path to your project as an argument.
```sh
/path/to/WebWL.wls /path/to/project/
```

## Configuration
The configuration can be done through a `webwl.json` file, if your directory doesn't have a `webwl.json` file, it will automatically create on the specified directory. Ignoring specifig paths can be done with a `.gitignore` file.

Read more about the configuration of WebWL in the [configuration page](https://github.com/PCabralSoftware/WebWL/wiki/Configuration).

## License
Copyright (c) 2020 ─ Pedro Cabral, MIT License.
```text
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
