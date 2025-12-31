.class Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    return p3

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    long-to-int p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    int-to-long p1, p1

    return-wide p1
.end method
