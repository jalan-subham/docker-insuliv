FROM python:3.11

WORKDIR /code



COPY ./ /code/

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

RUN apt-get update

RUN apt-get install -y wkhtmltopdf

# 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]