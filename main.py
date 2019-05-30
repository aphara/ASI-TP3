from flask import Flask, render_template, redirect, url_for
from model import article
from flask import request


app = Flask(__name__)


@app.route('/')
def home():
    return render_template('home.html')


@app.route('/form')
def article_form():
    return render_template('form.html')


@app.route('/articles')
def display_articles():
    results = article.Article.getAll()
    return render_template('table.html', items=results)


@app.route('/insertdb', methods=['POST'])
def display_form():
    x = article.Article(article.Article.getlastid()+1, request.form['Author'], request.form['Title'],
                        request.form['Date'], request.form['Section'],
                        request.form['Status'], request.form['Text'])
    y = article.Article.print(x)
    z = [y]
    article.Article.insertdb(z)
    return redirect(url_for('display_articles'))


if __name__ == '__main__':
    app.run()
