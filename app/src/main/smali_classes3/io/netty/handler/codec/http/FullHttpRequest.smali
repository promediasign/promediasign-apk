.class public interface abstract Lio/netty/handler/codec/http/FullHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/HttpRequest;
.implements Lio/netty/handler/codec/http/FullHttpMessage;


# virtual methods
.method public abstract synthetic content()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract synthetic copy()Lio/netty/buffer/ByteBufHolder;
.end method

.method public abstract synthetic copy()Lio/netty/handler/codec/http/FullHttpMessage;
.end method

.method public abstract copy()Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic copy()Lio/netty/handler/codec/http/HttpContent;
.end method

.method public abstract synthetic copy()Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract synthetic decoderResult()Lio/netty/handler/codec/DecoderResult;
.end method

.method public abstract synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
.end method

.method public abstract synthetic duplicate()Lio/netty/handler/codec/http/FullHttpMessage;
.end method

.method public abstract duplicate()Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic duplicate()Lio/netty/handler/codec/http/HttpContent;
.end method

.method public abstract synthetic duplicate()Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract synthetic getDecoderResult()Lio/netty/handler/codec/DecoderResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic getMethod()Lio/netty/handler/codec/http/HttpMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic getUri()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic headers()Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract synthetic method()Lio/netty/handler/codec/http/HttpMethod;
.end method

.method public abstract synthetic protocolVersion()Lio/netty/handler/codec/http/HttpVersion;
.end method

.method public abstract synthetic refCnt()I
.end method

.method public abstract synthetic release()Z
.end method

.method public abstract synthetic release(I)Z
.end method

.method public abstract synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
.end method

.method public abstract synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpMessage;
.end method

.method public abstract replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpContent;
.end method

.method public abstract synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract synthetic retain()Lio/netty/buffer/ByteBufHolder;
.end method

.method public abstract synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
.end method

.method public abstract synthetic retain()Lio/netty/handler/codec/http/FullHttpMessage;
.end method

.method public abstract synthetic retain(I)Lio/netty/handler/codec/http/FullHttpMessage;
.end method

.method public abstract retain()Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract retain(I)Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic retain()Lio/netty/handler/codec/http/HttpContent;
.end method

.method public abstract synthetic retain(I)Lio/netty/handler/codec/http/HttpContent;
.end method

.method public abstract synthetic retain()Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract synthetic retain(I)Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract synthetic retain()Lio/netty/util/ReferenceCounted;
.end method

.method public abstract synthetic retain(I)Lio/netty/util/ReferenceCounted;
.end method

.method public abstract synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
.end method

.method public abstract synthetic retainedDuplicate()Lio/netty/handler/codec/http/FullHttpMessage;
.end method

.method public abstract retainedDuplicate()Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic retainedDuplicate()Lio/netty/handler/codec/http/HttpContent;
.end method

.method public abstract synthetic retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract synthetic setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
.end method

.method public abstract setMethod(Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic setMethod(Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/HttpRequest;
.end method

.method public abstract setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
.end method

.method public abstract synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpRequest;
.end method

.method public abstract setUri(Ljava/lang/String;)Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic setUri(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;
.end method

.method public abstract synthetic touch()Lio/netty/buffer/ByteBufHolder;
.end method

.method public abstract synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
.end method

.method public abstract synthetic touch()Lio/netty/handler/codec/http/FullHttpMessage;
.end method

.method public abstract synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpMessage;
.end method

.method public abstract touch()Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract synthetic touch()Lio/netty/handler/codec/http/HttpContent;
.end method

.method public abstract synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpContent;
.end method

.method public abstract synthetic touch()Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract synthetic touch()Lio/netty/util/ReferenceCounted;
.end method

.method public abstract synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
.end method

.method public abstract synthetic trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract synthetic uri()Ljava/lang/String;
.end method
