#!/usr/bin/env wolframscript

(*

	WebWL - A file-system based web framework for the Wolfram Language.
	MIT Licensed

*)

$WebWLVersion = "0.0.1";

SendResponse[content_, mime_] := Module[{},
	StringTemplate[
		"HTTP/1.1 200 OK\nCache-Control: max-age=0\nDate: `now`\nServer: `server`\nX-Powered-By: `poweredby`\nContent-Type: `mime`; charset=UTF-8\nContent-Length: `length`\n\n`content`\n\n"][<|"now" -> DateString[] <> " " <> $TimeZoneEntity["ShortName"], "poweredby" -> "Wolfram Language v" <> ToString[$VersionNumber],"server" -> "WebWL v"<> $WebWLVersion,"mime" -> mime, "length" -> ToString[StringLength[content]], "content" -> content|>]
];

webHandler[req_] := Module[{},
	With[{client = req["SourceSocket"]},
		WriteString[client, SendResponse["<html><head><title>WebWL</title></head><body><h1>WebWL</h1></body></html>", "text/html"]];
		Close[client]
	]
];

webSocket = SocketListen[8080, webHandler]

(* There's other elegant way of keeping the code running, sorry. *)
While[True,
	Nothing
];
