.class public Lorg/apache/mina/filter/stream/StreamWriteFilter;
.super Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getNextBuffer(Ljava/io/InputStream;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getWriteBufferSize()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v3, v0, :cond_0

    sub-int v4, v0, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v5, :cond_0

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_1

    if-nez v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {v1, v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0

    .line 2
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/stream/StreamWriteFilter;->getNextBuffer(Ljava/io/InputStream;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method
