import os

from flask import Flask, request, jsonify, make_response, render_template
import fasttext

app = Flask(__name__)
model = fasttext.load_model('model/fasttext.ftz')

@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')


@app.route('/predict', methods=['POST'])
def predict():
    try:
        request_dict = request.form if request.form else request.get_json()

        prediction = model.predict(request_dict["message"])
        res = {"predicted": prediction[0][0], "probability": prediction[1][0]}
        
        return make_response(res, 200)

    except Exception as e:
        return make_response(str(e), 500)

@app.route("/hi")
def hello():
    return "Hello, World!"

@app.route("/list")
def hello_test():
    ls_list = os.listdir()
    return ','.join(ls_list)

if __name__ == "__main__":
    app.run()
