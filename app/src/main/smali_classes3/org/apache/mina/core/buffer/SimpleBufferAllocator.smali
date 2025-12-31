.class public Lorg/apache/mina/core/buffer/SimpleBufferAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/buffer/IoBufferAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    new-instance v0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;-><init>(Lorg/apache/mina/core/buffer/SimpleBufferAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
