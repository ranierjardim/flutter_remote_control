FROM dart:2.17.3 AS build
WORKDIR /
COPY ./core/ ./core/
WORKDIR /app/build/
COPY ./dedicated-server/src/ .
RUN dart pub get
RUN dart compile exe bin/remote_control_dedicated_server.dart -o bin/server
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/build/bin/server /app/bin/
EXPOSE 4678
CMD ["/app/bin/server"]