.class public abstract Lfi/iki/elonen/NanoWSD;
.super Lfi/iki/elonen/NanoHTTPD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoWSD$WebSocket;,
        Lfi/iki/elonen/NanoWSD$WebSocketFrame;,
        Lfi/iki/elonen/NanoWSD$WebSocketException;,
        Lfi/iki/elonen/NanoWSD$State;
    }
.end annotation


# static fields
.field public static final HEADER_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final HEADER_CONNECTION_VALUE:Ljava/lang/String; = "Upgrade"

.field public static final HEADER_UPGRADE:Ljava/lang/String; = "upgrade"

.field public static final HEADER_UPGRADE_VALUE:Ljava/lang/String; = "websocket"

.field public static final HEADER_WEBSOCKET_ACCEPT:Ljava/lang/String; = "Sec-WebSocket-Accept"

.field public static final HEADER_WEBSOCKET_KEY:Ljava/lang/String; = "Sec-WebSocket-Key"

.field public static final HEADER_WEBSOCKET_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"

.field public static final HEADER_WEBSOCKET_VERSION:Ljava/lang/String; = "Sec-WebSocket-Version"

.field public static final HEADER_WEBSOCKET_VERSION_VALUE:Ljava/lang/String; = "13"

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final WEBSOCKET_KEY_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lfi/iki/elonen/NanoWSD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoWSD;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private isWebSocketConnectionHeader(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Connection"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgrade"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static makeAcceptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/digest/DigestUtils;->sha1(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public isWebsocketRequested(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z
    .locals 2

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "upgrade"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD;->isWebSocketConnectionHeader(Ljava/util/Map;)Z

    move-result p1

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 6

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->isWebsocketRequested(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Sec-WebSocket-Version"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "13"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "text/plain"

    if-nez v3, :cond_0

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid Websocket-Version "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v4, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "Missing Websocket-Key"

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;

    move-result-object p1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->getHandshakeResponse()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lfi/iki/elonen/NanoWSD;->makeAcceptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v3, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public abstract serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
.end method

.method public useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
