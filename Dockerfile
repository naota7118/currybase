FROM ruby:3.3.0

WORKDIR /currybase
# パッケージ一覧を更新 aptはDebian系ディストーションのパッケージ管理コマンド
RUN apt update
# パッケージをインストール
RUN apt install -y

COPY . .

RUN apt install -y ruby-dev build-essential libpq-dev postgresql-client
RUN bundle install
