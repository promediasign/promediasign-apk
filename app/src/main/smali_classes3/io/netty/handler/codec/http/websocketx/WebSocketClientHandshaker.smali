.class public abstract Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_FORCE_CLOSE_TIMEOUT_MILLIS:I = 0x2710

.field private static final FORCE_CLOSE_INIT_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTPS_SCHEME_PREFIX:Ljava/lang/String;

.field private static final HTTP_SCHEME_PREFIX:Ljava/lang/String;


# instance fields
.field private final absoluteUpgradeUrl:Z

.field private volatile actualSubprotocol:Ljava/lang/String;

.field protected final customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

.field private final expectedSubprotocol:Ljava/lang/String;

.field private volatile forceCloseComplete:Z

.field private volatile forceCloseInit:I

.field private volatile forceCloseTimeoutMillis:J

.field private volatile handshakeComplete:Z

.field private final maxFramePayloadLength:I

.field private final uri:Ljava/net/URI;

.field private final version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->HTTP_SCHEME_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->HTTPS_SCHEME_PREFIX:Ljava/lang/String;

    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    const-string v1, "forceCloseInit"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->FORCE_CLOSE_INIT_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;I)V
    .locals 8

    .line 1
    const-wide/16 v6, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJ)V
    .locals 9

    .line 2
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->uri:Ljava/net/URI;

    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    iput-object p3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    iput-object p4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    iput p5, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->maxFramePayloadLength:I

    iput-wide p6, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    iput-boolean p8, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->absoluteUpgradeUrl:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->FORCE_CLOSE_INIT_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method public static synthetic access$102(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseComplete:Z

    return p1
.end method

.method private applyForceCloseTimeout(Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;)V
    .locals 7

    iget-wide v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    invoke-interface {p1}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseInit:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V

    invoke-interface {p2, v6}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method private setActualSubprotocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->actualSubprotocol:Ljava/lang/String;

    return-void
.end method

.method private setHandshakeComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshakeComplete:Z

    return-void
.end method

.method public static websocketHostValue(Ljava/net/URI;)Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpScheme;->port()I

    move-result v3

    if-ne v0, v3, :cond_3

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lio/netty/util/NetUtil;->toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    sget-object v2, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpScheme;->port()I

    move-result v3

    if-ne v0, v3, :cond_6

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WSS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1, v0}, Lio/netty/util/NetUtil;->toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_1
    return-object v1

    :cond_6
    invoke-static {v1, v0}, Lio/netty/util/NetUtil;->toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static websocketOriginValue(Ljava/net/URI;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WSS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    .line 10
    .line 11
    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name()Lio/netty/util/AsciiString;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    sget-object v3, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    .line 22
    .line 23
    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ne v1, v0, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->HTTP_SCHEME_PREFIX:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->HTTPS_SCHEME_PREFIX:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_2
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eq v1, v2, :cond_2

    .line 65
    .line 66
    const/4 v2, -0x1

    .line 67
    if-eq v1, v2, :cond_2

    .line 68
    .line 69
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p0, v1}, Lio/netty/util/NetUtil;->toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_2
    invoke-static {v0, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method


# virtual methods
.method public actualSubprotocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->actualSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 1
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 2
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->applyForceCloseTimeout(Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;)V

    return-object p3
.end method

.method public expectedSubprotocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public final finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->verify(Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_PROTOCOL:Lio/netty/util/AsciiString;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string v0, ""

    .line 28
    .line 29
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    iget-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    .line 38
    .line 39
    :goto_2
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->setActualSubprotocol(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_9

    .line 48
    .line 49
    if-eqz p2, :cond_9

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_9

    .line 56
    .line 57
    const-string v1, ","

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    array-length v1, v0

    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_3
    if-ge v2, v1, :cond_9

    .line 66
    .line 67
    aget-object v3, v0, v2

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_8

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_4
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->setHandshakeComplete()V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const-class v0, Lio/netty/handler/codec/http/HttpContentDecompressor;

    .line 88
    .line 89
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lio/netty/handler/codec/http/HttpContentDecompressor;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 98
    .line 99
    .line 100
    :cond_3
    const-class v0, Lio/netty/handler/codec/http/HttpObjectAggregator;

    .line 101
    .line 102
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lio/netty/handler/codec/http/HttpObjectAggregator;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 111
    .line 112
    .line 113
    :cond_4
    const-class v0, Lio/netty/handler/codec/http/HttpResponseDecoder;

    .line 114
    .line 115
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "ws-decoder"

    .line 120
    .line 121
    if-nez v0, :cond_6

    .line 122
    .line 123
    const-class v0, Lio/netty/handler/codec/http/HttpClientCodec;

    .line 124
    .line 125
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lio/netty/handler/codec/http/HttpClientCodec;

    .line 136
    .line 137
    invoke-virtual {v2}, Lio/netty/channel/CombinedChannelDuplexHandler;->removeOutboundHandler()V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {p2, v0, v1, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 149
    .line 150
    .line 151
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$2;

    .line 156
    .line 157
    invoke-direct {v0, p0, p2, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$2;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/ChannelPipeline;Lio/netty/handler/codec/http/HttpClientCodec;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string p2, "ChannelPipeline does not contain an HttpRequestEncoder or HttpClientCodec"

    .line 167
    .line 168
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_6
    const-class v2, Lio/netty/handler/codec/http/HttpRequestEncoder;

    .line 173
    .line 174
    invoke-interface {p2, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    if-eqz v3, :cond_7

    .line 179
    .line 180
    invoke-interface {p2, v2}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 181
    .line 182
    .line 183
    :cond_7
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-interface {p2, v2, v1, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 192
    .line 193
    .line 194
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$3;

    .line 199
    .line 200
    invoke-direct {v1, p0, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$3;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/ChannelHandlerContext;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 204
    .line 205
    .line 206
    :goto_5
    return-void

    .line 207
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_9
    new-instance p1, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    .line 212
    .line 213
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    .line 214
    .line 215
    const-string v1, "Invalid subprotocol. Actual: "

    .line 216
    .line 217
    const-string v2, ". Expected one of: "

    .line 218
    .line 219
    invoke-static {v1, p2, v2, v0}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-direct {p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1
.end method

.method public forceCloseTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    return-wide v0
.end method

.method public handshake(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 1
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public final handshake(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2

    .line 2
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/HttpResponseDecoder;

    if-nez v1, :cond_0

    const-class v1, Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpClientCodec;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ChannelPipeline does not contain an HttpResponseDecoder or HttpClientCodec"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p2

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->newHandshakeRequest()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$1;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$1;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-object p2
.end method

.method public isForceCloseComplete()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseComplete:Z

    return v0
.end method

.method public isHandshakeComplete()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshakeComplete:Z

    return v0
.end method

.method public maxFramePayloadLength()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->maxFramePayloadLength:I

    return v0
.end method

.method public abstract newHandshakeRequest()Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method public abstract newWebSocketEncoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;
.end method

.method public abstract newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;
.end method

.method public final processHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpResponse;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->processHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpResponse;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public final processHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpResponse;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5

    .line 2
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p2, Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V

    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    if-nez v1, :cond_1

    const-class v1, Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ChannelPipeline does not contain an HttpResponseDecoder or HttpClientCodec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/netty/handler/codec/http/HttpObjectAggregator;

    const/16 v4, 0x2000

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    const-string v4, "httpAggregator"

    invoke-interface {v0, v2, v4, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;

    invoke-direct {v2, p0, p1, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)V

    const-string p1, "handshaker"

    invoke-interface {v0, v4, p1, v2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :try_start_1
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object p3
.end method

.method public setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 0

    iput-wide p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    return-object p0
.end method

.method public upgradeUrl(Ljava/net/URI;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->absoluteUpgradeUrl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "/"

    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public abstract verify(Lio/netty/handler/codec/http/FullHttpResponse;)V
.end method

.method public version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method
