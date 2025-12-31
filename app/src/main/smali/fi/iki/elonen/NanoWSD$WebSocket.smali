.class public abstract Lfi/iki/elonen/NanoWSD$WebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WebSocket"
.end annotation


# instance fields
.field private final continuousFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame;",
            ">;"
        }
    .end annotation
.end field

.field private continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field private final handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

.field private final handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

.field private final in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private state:Lfi/iki/elonen/NanoWSD$State;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    sget-object v0, Lfi/iki/elonen/NanoWSD$State;->UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocket$1;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lfi/iki/elonen/NanoWSD$WebSocket$1;-><init>(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    const-string p1, "upgrade"

    const-string v1, "websocket"

    invoke-virtual {v0, p1, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string v1, "Upgrade"

    invoke-virtual {v0, p1, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$002(Lfi/iki/elonen/NanoWSD$WebSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method public static synthetic access$102(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoWSD$State;)Lfi/iki/elonen/NanoWSD$State;
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    return-object p1
.end method

.method public static synthetic access$200(Lfi/iki/elonen/NanoWSD$WebSocket;)V
    .locals 0

    invoke-direct {p0}, Lfi/iki/elonen/NanoWSD$WebSocket;->readWebsocket()V

    return-void
.end method

.method private doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    const-string v1, "close failed"

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lfi/iki/elonen/NanoWSD;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lfi/iki/elonen/NanoWSD;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    sget-object v0, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    invoke-virtual {p0, p1, p2, p3}, Lfi/iki/elonen/NanoWSD$WebSocket;->onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    return-void
.end method

.method private handleCloseFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 3

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NORMAL_CLOSURE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    instance-of v1, p1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    if-eqz v1, :cond_0

    check-cast p1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getCloseCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getCloseReason()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v2, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->close(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private handleFrameFragment(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 2

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CONTINUATION:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    const-string v1, "Continuous frame sequence was not started."

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    iget-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eqz v0, :cond_4

    goto :goto_0

    :goto_1
    return-void

    :cond_4
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1
.end method

.method private handleWebsocketFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 3

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CLOSE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleCloseFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PING:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_1

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PONG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PONG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CONTINUATION:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->TEXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->BINARY:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "Non control or continuous frame expected."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "Continuous frame sequence not completed."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleFrameFragment(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    :goto_2
    return-void
.end method

.method private readWebsocket()V
    .locals 4

    const-string v0, "Handler terminated without closing the connection."

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v3, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    invoke-static {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->read(Ljava/io/InputStream;)Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    move-result-object v2

    invoke-direct {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleWebsocketFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_0
    :goto_1
    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->INTERNAL_SERVER_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-direct {p0, v2, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_5

    :goto_2
    :try_start_1
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->onException(Ljava/io/IOException;)V

    instance-of v3, v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lfi/iki/elonen/NanoWSD$WebSocketException;

    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketException;->getCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v3

    check-cast v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;->getReason()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-direct {p0, v3, v2, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_1

    :goto_4
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->onException(Ljava/io/IOException;)V

    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->INVALID_FRAME_PAYLOAD_DATA:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->INTERNAL_SERVER_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-direct {p0, v3, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    throw v2
.end method


# virtual methods
.method public close(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    iput-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    if-ne v0, v1, :cond_0

    new-instance p3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    invoke-direct {p3, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public getHandshakeRequest()Lfi/iki/elonen/NanoHTTPD$IHTTPSession;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    return-object v0
.end method

.method public getHandshakeResponse()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
.end method

.method public abstract onException(Ljava/io/IOException;)V
.end method

.method public abstract onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
.end method

.method public ping([B)V
    .locals 3

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PING:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->TEXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    return-void
.end method

.method public send([B)V
    .locals 3

    .line 2
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->BINARY:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    return-void
.end method

.method public declared-synchronized sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
