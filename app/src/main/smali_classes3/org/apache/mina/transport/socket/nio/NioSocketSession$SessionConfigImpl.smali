.class Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;
.super Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioSocketSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionConfigImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;


# direct methods
.method private constructor <init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;-><init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)V

    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSoLinger()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isKeepAlive()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isOobInline()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpNoDelay()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setKeepAlive(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOobInline(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setOOBInline(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setReuseAddress(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSendBufferSize(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSoLinger(I)V
    .locals 2

    if-gez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {p1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTcpNoDelay(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTrafficClass(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
