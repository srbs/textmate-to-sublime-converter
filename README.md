Description
-----------

It is an XSL Transformation file to switch between TextMate & Sublime Text snippets.

Also included is an ant script that will convert entire bundles/packages between the two systems.


Known issues and feature requests
---------------------------------

Please go [here](https://github.com/srbs/textmate-to-sublime-converter/issues) to view current issues & feature requests, or to file a new one.


Prerequisites
-------------

1. To use only the XSL Transformation files (*.xsl),
	* tm2subl:
		*	Any XSLT processor will work. [Mac & Linux come with a command built in][xsltproc],
			while [Windows needs a download][xsltproc-win].
			
			More information on this command, see [xmlsoft][xmlsoft]
			or [installing instructions][install-xslt].
	* subl2tm:
		*	When converting to TextMate, I have the transformer create a UUID for TextMate to use,
			this requires a more advanced XSLT implementation than is given above.
			
			[Apache xalan][xalan]works without any
			xsl file edits. (This is what is used inside of Ant.)
			
			[Saxon][saxon] should work with one edit of the file:
			
			`xmlns:uuid="java.util.UUID"`
			on line 2 becomes:
			`xmlns:uuid="java:java.util.UUID"`
			
			To use [xsltproc](#tm2subl) above, remove lines 26-31 & `xmlns:uuid="java.util.UUID"` on line 2.
			
			

2. To use the Ant XML scripts (*.xml)
	* [Java 1.4][java] or above
	* [Ant 1.8][ant] or above
	
Note: the requirements in 1 are not required for 2 and visa versa.


How to Get
----------

git clone https://github.com/srbs/textmate-to-sublime-converter


Usage
-----

...


License
-------

	Copyright (c) 2012 David "srbs" Forrest
	
	This software is provided 'as-is', without any express or implied
	warranty. In no event will the authors be held liable for any damages
	arising from the use of this software.
	
	Permission is granted to anyone to use this software for any purpose,
	including commercial applications, and to alter it and redistribute it
	freely, subject to the following restrictions:
	
		1.	The origin of this software must not be misrepresented; you must not
			claim that you wrote the original software. If you use this software
			in a product, an acknowledgment in the product documentation would be
			appreciated but is not required.
	
		2.	Altered source versions must be plainly marked as such, and must not be
			misrepresented as being the original software.
	
		3.	This notice may not be removed or altered from any source
			distribution.


[xalan]: http://xml.apache.org/xalan-j/getstarted.html "Apache Xalan"
[saxon]: http://saxon.sourceforge.net/ "Saxon"
[xsltproc]: http://xmlsoft.org/xslt/xsltproc.html "XSLT proc"
[xsltproc-win]: http://www.zlatkovic.com/libxml.en.html "XSLT for Windows"

[xmlsoft]: http://xmlsoft.org/ "LibXML2"
[install-xslt]: http://www.sagehill.net/docbookxsl/InstallingAProcessor.html "Installing xsltproc"

[ant]: http://ant.apache.org/ "Apache Ant"
[java]: http://www.oracle.com/technetwork/java/javase/downloads/index.html "Java"
