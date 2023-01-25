FROM python

RUN pip install pytest-repeat

WORKDIR /opt/

COPY . .

CMD python -m flaky.main
