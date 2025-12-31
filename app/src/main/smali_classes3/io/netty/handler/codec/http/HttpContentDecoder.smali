.class public abstract Lio/netty/handler/codec/http/HttpContentDecoder;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "Lio/netty/handler/codec/http/HttpObject;",
        ">;"
    }
.end annotation


# static fields
.field static final IDENTITY:Ljava/lang/String;


# instance fields
.field private continueResponse:Z

.field protected ctx:Lio/netty/channel/ChannelHandlerContext;

.field private decoder:Lio/netty/channel/embedded/EmbeddedChannel;

.field private needRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpContentDecoder;->IDENTITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    return-void
.end method

.method private cleanup()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finishAndReleaseAll()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    :cond_0
    return-void
.end method

.method private cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentDecoder;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method private decode(Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->writeInbound([Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpContentDecoder;->fetchDecoderOutput(Ljava/util/List;)V

    return-void
.end method

.method private decodeContent(Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpContent;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http/HttpContentDecoder;->decode(Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    instance-of v0, p1, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpContentDecoder;->finishDecode(Ljava/util/List;)V

    check-cast p1, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/ComposedLastHttpContent;

    sget-object v1, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    invoke-direct {v0, p1, v1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;-><init>(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/DecoderResult;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private fetchDecoderOutput(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->readInbound()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_0

    :cond_1
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private finishDecode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentDecoder;->fetchDecoderOutput(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentDecoder;->cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_1
    throw v1
.end method

.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpObject;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string p1, "Object of class "

    :try_start_0
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    instance-of p1, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->continueResponse:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_0
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->continueResponse:Z

    if-eqz v0, :cond_3

    instance-of p1, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->continueResponse:Z

    :cond_2
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentDecoder;->cleanup()V

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    sget-object v3, Lio/netty/handler/codec/http/HttpContentDecoder;->IDENTITY:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v3}, Lio/netty/handler/codec/http/HttpContentDecoder;->newContentDecoder(Ljava/lang/String;)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    if-nez v4, :cond_6

    instance-of p1, v0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz p1, :cond_5

    move-object p1, v0

    check-cast p1, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpContent;->retain()Lio/netty/handler/codec/http/HttpContent;

    :cond_5
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v4}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    :cond_7
    invoke-virtual {p0, v3}, Lio/netty/handler/codec/http/HttpContentDecoder;->getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    invoke-virtual {v4, v3}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    :goto_4
    instance-of v1, v0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v1, :cond_b

    instance-of v1, v0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v1, :cond_9

    move-object p1, v0

    check-cast p1, Lio/netty/handler/codec/http/HttpRequest;

    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpRequest;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    instance-of v1, v0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v1, :cond_a

    move-object p1, v0

    check-cast p1, Lio/netty/handler/codec/http/HttpResponse;

    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpResponse;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;)V

    :goto_5
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    new-instance p2, Lio/netty/handler/codec/CodecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an HttpRequest or HttpResponse"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/netty/handler/codec/CodecException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    instance-of p1, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz p1, :cond_e

    check-cast p2, Lio/netty/handler/codec/http/HttpContent;

    iget-object p1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    if-nez p1, :cond_d

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->retain()Lio/netty/handler/codec/http/HttpContent;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/HttpContentDecoder;->decodeContent(Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_7
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    return-void

    :goto_8
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    iput-boolean p2, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    throw p1
.end method

.method public bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 3
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpContentDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method

.method public getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p1, Lio/netty/handler/codec/http/HttpContentDecoder;->IDENTITY:Ljava/lang/String;

    return-object p1
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentDecoder;->cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public abstract newContentDecoder(Ljava/lang/String;)Lio/netty/channel/embedded/EmbeddedChannel;
.end method
