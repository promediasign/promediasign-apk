.class public abstract Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;


# instance fields
.field private buffersOnly:Z

.field private final messageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    return-void
.end method


# virtual methods
.method public getMessageQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method public mergeAll()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v1, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the encoded message list contains a non-buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buf is empty. Forgot to call flip()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    :goto_0
    return-void
.end method
