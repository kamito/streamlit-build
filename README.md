# streamlit-build

Google の Cloud run などで streamlit を起動するとヘルスチェックの `healthz` でコネクションエラーになってしまうのでこの URL を変更したものをビルドする.

ビルドしたものは `relases` にまとめている.

## pip install

このビルドを使って streamlit を動かすには `requirements.txt` に以下を記述て `pip install` する.

```
https://github.com/kamito/streamlit/releases/download/0.76.1.dev20210224-healthz/streamlit-0.76.0-py2.py3-none-any.whl
```
