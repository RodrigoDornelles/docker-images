ARG ZIG_BASE_IMAGE=scratch

FROM busybox:1.36.0-musl as fetch

ARG ZIG_VERSION=0.10.0

RUN mkdir -p /zig
RUN wget -qOzig.tar.xz "http://ziglang.org/download/$ZIG_VERSION/zig-linux-$(uname -m)-$ZIG_VERSION.tar.xz"
RUN tar xf zig.tar.xz -C /zig --strip-components=1

FROM ${ZIG_BASE_IMAGE}
COPY --from=fetch /zig/zig /bin/zig
COPY --from=fetch /zig/lib /bin/lib
ENTRYPOINT ["/bin/zig"]
