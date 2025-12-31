.class public Lfi/iki/elonen/NanoHTTPD$ClientHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

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
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$000(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    move-result-object v5

    invoke-interface {v5}, Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;->create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-result-object v8

    new-instance v5, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v11

    move-object v6, v5

    move-object v10, v4

    invoke-direct/range {v6 .. v11}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    :goto_0
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->execute()V
    :try_end_0
    .catch Lfi/iki/elonen/NanoHTTPD$CloseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v5, v3, v1

    aput-object v6, v3, v0

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v0, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$100()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "Communication with the client broken, or an bug in the handler code"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v5, v3, v1

    aput-object v6, v3, v0

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_1

    :goto_3
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v6, v3, v1

    aput-object v7, v3, v0

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v0, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    throw v5

    :catch_1
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v5, v3, v1

    aput-object v6, v3, v0

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_1

    :goto_4
    return-void
.end method
