FROM ruby:onbuild

EXPOSE 4567
ENV RACK_ENV=production

CMD ["./app.rb"]

