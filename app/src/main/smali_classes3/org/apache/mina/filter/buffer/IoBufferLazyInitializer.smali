.class public Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;
.super Lorg/apache/mina/util/LazyInitializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/util/LazyInitializer<",
        "Lorg/apache/mina/core/buffer/IoBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private bufferSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/util/LazyInitializer;-><init>()V

    iput p1, p0, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;->bufferSize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;->init()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public init()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;->bufferSize:I

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method
