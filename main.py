from distutils.log import debug
from flask import Flask, render_template

app=Flask(__name__)


#router
@app.route("/")
def home():
    return render_template("main.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(80), debug=True)  #啟動