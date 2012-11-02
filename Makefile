
all:
	pandoc faq.txt -t html5 -o faq.html --template=faqhtml.tpl --toc -f markdown --css=style/main.css --smart --highlight-style=tango
	perl -pi -e 's,(?<!<title>)TeX,<span class="TeX">T<span class="TeX-e">E</span>X</span>,'g faq.html 
