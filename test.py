import gettext

ko = gettext.translation('lokalise', './locales', languages=['ko'] ,fallback=True)
en = gettext.translation('lokalise', './locales', languages=['en'] ,fallback=True)
fr = gettext.translation('lokalise', './locales', languages=['fr'] ,fallback=True)

ko.install()
print(_("Hello, world!"))

en.install()
print(_("Hello, world!"))

fr.install()    
print(_("Hello, world!"))