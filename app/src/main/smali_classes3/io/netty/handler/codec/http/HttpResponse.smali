.class public interface abstract Lio/netty/handler/codec/http/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/HttpMessage;


# virtual methods
.method public abstract synthetic decoderResult()Lio/netty/handler/codec/DecoderResult;
.end method

.method public abstract synthetic getDecoderResult()Lio/netty/handler/codec/DecoderResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic headers()Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract synthetic protocolVersion()Lio/netty/handler/codec/http/HttpVersion;
.end method

.method public abstract synthetic setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
.end method

.method public abstract synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
.end method

.method public abstract setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpResponse;
.end method

.method public abstract setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/HttpResponse;
.end method

.method public abstract status()Lio/netty/handler/codec/http/HttpResponseStatus;
.end method
