from bottle import *
import urllib.request, json

with open("gengi.json","r" ) as skra:
    gogn = json.load(skra)
print(gogn)
@route("/")
def index():
    return  """
    <h2> Verkefni 3 </h2>
    <p><a href="/a"> Json Local </a></p>
    <p><a href="/b"> Json af API.is </a></p>
    """
# a liður json local
@route("/a")
def index():
    return template("index.tpl")


# b liður json api

with urllib.request.urlopen("http://apis.is/currency/") as url:
    data = json.loads(url.read().decode())

@route("/b")
def index():
    return template("index2.tpl", data=data)


################################################################################
#                    Nota í flestum kóðum hér fyrir neðann                     #
################################################################################

#Ekki Þetta #################################
@route("/static/<skra>")
def static(skra):
    return static_file(skra, root='./static')
#############################################
@error(404)
def villa(error):
    return "<h2 style ='color:red> þessi síða fannst ekki</h2> "

run(host='localhost', port=8080, reloader=True,debug=True)
