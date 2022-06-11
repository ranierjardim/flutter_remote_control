# Use latest stable channel SDK.
FROM dart:stable AS build
WORKDIR /app
COPY ./src/ .
RUN dart pub get
RUN dart compile exe bin/remote_control_dedicated_server.dart -o bin/server
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/
EXPOSE 4678
CMD ["/app/bin/server"]