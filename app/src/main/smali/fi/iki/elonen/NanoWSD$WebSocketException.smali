.class public Lfi/iki/elonen/NanoWSD$WebSocketException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebSocketException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final code:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketException;->code:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    iput-object p2, p0, Lfi/iki/elonen/NanoWSD$WebSocketException;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketException;->code:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketException;->reason:Ljava/lang/String;

    return-object v0
.end method
