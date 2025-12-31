.class public Lsk/mimac/slideshow/http/WsResponder;
.super Lfi/iki/elonen/NanoWSD$WebSocket;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/WsResponder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/WsResponder;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;-><init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V

    return-void
.end method


# virtual methods
.method public onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onException(Ljava/io/IOException;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/http/WsResponder;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Exception in WebSocket"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/http/WsResponder;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Received message: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method

.method public onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 0

    return-void
.end method
