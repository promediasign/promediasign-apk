.class public Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;
.super Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseFrame"
.end annotation


# instance fields
.field private _closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field private _closeReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CLOSE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->generatePayload(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    return-void
.end method

.method private constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object p1

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    invoke-static {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->find(I)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object p1

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->binary2Text([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeReason:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;Lfi/iki/elonen/NanoWSD$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    return-void
.end method

.method private static generatePayload(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->text2Binary(Ljava/lang/String;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x1

    aput-byte p0, v1, v3

    array-length p0, p1

    invoke-static {p1, v0, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public getCloseCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method

.method public getCloseReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeReason:Ljava/lang/String;

    return-object v0
.end method
