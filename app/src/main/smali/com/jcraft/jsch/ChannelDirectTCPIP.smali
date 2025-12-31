.class public Lcom/jcraft/jsch/ChannelDirectTCPIP;
.super Lcom/jcraft/jsch/Channel;
.source "SourceFile"


# static fields
.field private static final _type:[B


# instance fields
.field host:Ljava/lang/String;

.field originator_IP_address:Ljava/lang/String;

.field originator_port:I

.field port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "direct-tcpip"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->_type:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_IP_address:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_port:I

    sget-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->_type:[B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->type:[B

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSizeMax(I)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalPacketSize(I)V

    return-void
.end method


# virtual methods
.method public connect(I)V
    .locals 3

    const-string v0, "DirectTCPIP thread "

    iput p1, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->sendChannelOpen()V

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "session is down"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->del(Lcom/jcraft/jsch/Channel;)V

    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    throw p1
.end method

.method public genChannelOpenPacket()Lcom/jcraft/jsch/Packet;
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_IP_address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x80

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->type:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->id:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->host:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->port:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_IP_address:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_port:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    return-object v1
.end method

.method public init()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    return-void
.end method

.method public run()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->sendChannelOpen()V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v3, :cond_2

    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v5, v4

    add-int/lit16 v5, v5, -0x8e

    const/16 v6, 0xe

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->eof()V

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->close:Z

    if-eqz v4, :cond_1

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    monitor-exit p0

    goto :goto_0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->eof()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    return-void

    :goto_3
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->host:Ljava/lang/String;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public setOrgIPAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_IP_address:Ljava/lang/String;

    return-void
.end method

.method public setOrgPort(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_port:I

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->port:I

    return-void
.end method
