.class public Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/http/HttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TunnelHandler"
.end annotation


# instance fields
.field private final clientAddress:Ljava/net/InetAddress;

.field private final inputStream:Ludt/UDTInputStream;

.field private final outputStream:Ludt/UDTOutputStream;

.field final synthetic this$0:Lsk/mimac/slideshow/http/HttpServer;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/http/HttpServer;Ludt/UDTInputStream;Ludt/UDTOutputStream;Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->this$0:Lsk/mimac/slideshow/http/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->inputStream:Ludt/UDTInputStream;

    iput-object p3, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->outputStream:Ludt/UDTOutputStream;

    iput-object p4, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->clientAddress:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->inputStream:Ludt/UDTInputStream;

    iget-object v1, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->outputStream:Ludt/UDTOutputStream;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method

.method public run()V
    .locals 7

    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v0, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->outputStream:Ludt/UDTOutputStream;

    const/16 v1, 0x994

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v6, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    iget-object v1, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->this$0:Lsk/mimac/slideshow/http/HttpServer;

    iget-object v2, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->inputStream:Ludt/UDTInputStream;

    iget-object v4, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->clientAddress:Ljava/net/InetAddress;

    const-string v0, "tunneled"

    const-string v5, "true"

    invoke-static {v0, v5}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;Ljava/util/Map;)V

    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->inputStream:Ludt/UDTInputStream;

    invoke-virtual {v0}, Ludt/UDTInputStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->outputStream:Ludt/UDTOutputStream;

    invoke-virtual {v0}, Ludt/UDTOutputStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->execute()V
    :try_end_0
    .catch Lfi/iki/elonen/NanoHTTPD$CloseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->close()V

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Communication with the client broken"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->close()V

    throw v0

    :goto_4
    return-void
.end method
