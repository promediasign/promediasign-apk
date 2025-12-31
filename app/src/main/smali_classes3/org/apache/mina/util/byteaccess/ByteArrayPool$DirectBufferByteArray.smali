.class Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
.super Lorg/apache/mina/util/byteaccess/BufferByteArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirectBufferByteArray"
.end annotation


# instance fields
.field public freed:Z

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayPool;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-direct {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$000(Lorg/apache/mina/util/byteaccess/ByteArrayPool;I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$200(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$300(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$500(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$208(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$414(Lorg/apache/mina/util/byteaccess/ByteArrayPool;J)J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already freed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setFreed(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    return-void
.end method
