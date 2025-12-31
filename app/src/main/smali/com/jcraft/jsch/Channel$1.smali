.class Lcom/jcraft/jsch/Channel$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field b:[B

.field private buffer:Lcom/jcraft/jsch/Buffer;

.field private closed:Z

.field private dataLen:I

.field private packet:Lcom/jcraft/jsch/Packet;

.field final synthetic this$0:Lcom/jcraft/jsch/Channel;

.field final synthetic val$channel:Lcom/jcraft/jsch/Channel;


# direct methods
.method private declared-synchronized init()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit16 v0, v0, -0x8e

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize the channel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->eof()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    return-void
.end method

.method public flush()V
    .locals 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    iget-boolean v2, v2, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->init()V

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, v0

    :goto_0
    if-lez p3, :cond_3

    iget v2, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/lit8 v3, v2, 0xe

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, -0x80

    if-le p3, v3, :cond_1

    add-int/lit8 v3, v2, 0xe

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, -0x80

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    if-gtz v3, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0xe

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
