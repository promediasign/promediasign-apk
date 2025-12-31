.class public Lcom/jcraft/jsch/ProxySOCKS5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# instance fields
.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private passwd:Ljava/lang/String;

.field private proxy_host:Ljava/lang/String;

.field private proxy_port:I

.field private socket:Ljava/net/Socket;

.field private user:Ljava/lang/String;


# direct methods
.method private fill(Ljava/io/InputStream;[BI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    sub-int v1, p3, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "ProxySOCKS5: stream is closed"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    return-void
.end method

.method public connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 9

    const-string v0, "ProxySOCKS5: server returns "

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_host:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_port:I

    invoke-static {p1, v1, p4}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_host:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_port:I

    invoke-interface {p1, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-lez p4, :cond_1

    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, p1, v2

    const/4 v3, 0x2

    aput-byte v3, p1, p4

    aput-byte v2, p1, v3

    const/4 v4, 0x3

    aput-byte v3, p1, v4

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    const/4 v6, 0x4

    invoke-virtual {v5, p1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    invoke-direct {p0, v5, p1, v3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    aget-byte v5, p1, p4

    and-int/lit16 v5, v5, 0xff

    if-eqz v5, :cond_3

    if-ne v5, v3, :cond_2

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    if-eqz v7, :cond_2

    aput-byte p4, p1, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p1, p4

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5, v2, p1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v7, v3, v5

    add-int/2addr v5, v4

    iget-object v8, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    iget-object v8, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v2, p1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    invoke-virtual {v7, p1, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    invoke-direct {p0, v5, p1, v3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    aget-byte v5, p1, p4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    :try_start_2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "fail in SOCKS5 proxy"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    aput-byte v1, p1, v2

    aput-byte p4, p1, p4

    aput-byte v2, p1, v3

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    array-length v5, p2

    aput-byte v4, p1, v4

    int-to-byte v7, v5

    aput-byte v7, p1, v6

    invoke-static {p2, v2, p1, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    add-int/lit8 p2, v5, 0x6

    ushr-int/lit8 v7, p3, 0x8

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    add-int/lit8 v5, v5, 0x7

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    invoke-direct {p0, p2, p1, v6}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    aget-byte p2, p1, p4

    if-nez p2, :cond_7

    aget-byte p2, p1, v4

    and-int/lit16 p2, p2, 0xff

    if-eq p2, p4, :cond_6

    if-eq p2, v4, :cond_5

    if-eq p2, v6, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    const/16 p3, 0x12

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    invoke-direct {p0, p2, p1, p4}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    aget-byte p3, p1, v2

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p3, v3

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    const/4 p3, 0x6

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-void

    :cond_7
    :try_start_3
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, p4

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    :try_start_5
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ProxySOCKS5: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p3, p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :goto_5
    throw p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    return-object v0
.end method
