.class Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/CachedBufferAllocator;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ljava/util/Queue<",
        "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;->initialValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->newPoolMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
