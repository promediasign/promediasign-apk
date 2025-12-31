.class public interface abstract Lio/netty/handler/codec/http/HttpMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/HttpObject;


# virtual methods
.method public abstract synthetic decoderResult()Lio/netty/handler/codec/DecoderResult;
.end method

.method public abstract synthetic getDecoderResult()Lio/netty/handler/codec/DecoderResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract headers()Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract protocolVersion()Lio/netty/handler/codec/http/HttpVersion;
.end method

.method public abstract synthetic setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
.end method

.method public abstract setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
.end method
