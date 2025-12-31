.class public Lcom/illposed/osc/transport/tcp/TCPTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/transport/Transport;


# instance fields
.field private clientSocket:Ljava/net/Socket;

.field private final local:Ljava/net/InetSocketAddress;

.field private final parser:Lcom/illposed/osc/OSCParser;

.field private final remote:Ljava/net/InetSocketAddress;

.field private final serializationBuffer:Lcom/illposed/osc/ByteArrayListBytesReceiver;

.field private final serializer:Lcom/illposed/osc/OSCSerializer;

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/illposed/osc/OSCSerializerAndParserBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->local:Ljava/net/InetSocketAddress;

    iput-object p2, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->remote:Ljava/net/InetSocketAddress;

    invoke-virtual {p3}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->buildParser()Lcom/illposed/osc/OSCParser;

    move-result-object p1

    iput-object p1, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->parser:Lcom/illposed/osc/OSCParser;

    new-instance p1, Lcom/illposed/osc/ByteArrayListBytesReceiver;

    invoke-direct {p1}, Lcom/illposed/osc/ByteArrayListBytesReceiver;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->serializationBuffer:Lcom/illposed/osc/ByteArrayListBytesReceiver;

    invoke-virtual {p3, p1}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->buildSerializer(Lcom/illposed/osc/BytesReceiver;)Lcom/illposed/osc/OSCSerializer;

    move-result-object p1

    iput-object p1, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->serializer:Lcom/illposed/osc/OSCSerializer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->clientSocket:Ljava/net/Socket;

    iput-object p1, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->serverSocket:Ljava/net/ServerSocket;

    return-void
.end method

.method private getServerSocket()Ljava/net/ServerSocket;
    .locals 2

    iget-object v0, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->serverSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v0, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    iget-object v0, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method private readAllBytes(Ljava/io/InputStream;)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    :try_start_0
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->clientSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    iget-object v0, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_1
    return-void
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public receive()Lcom/illposed/osc/OSCPacket;
    .locals 3

    invoke-direct {p0}, Lcom/illposed/osc/transport/tcp/TCPTransport;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/illposed/osc/transport/tcp/TCPTransport;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->parser:Lcom/illposed/osc/OSCParser;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/illposed/osc/OSCParser;->convert(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCPacket;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->local:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/illposed/osc/transport/tcp/TCPTransport;->remote:Ljava/net/InetSocketAddress;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s: local=%s, remote=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
