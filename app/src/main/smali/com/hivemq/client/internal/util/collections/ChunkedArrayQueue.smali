.class public Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final chunkSize:I

.field private consumerChunk:[Ljava/lang/Object;

.field private consumerIndex:I

.field private producerChunk:[Ljava/lang/Object;

.field private producerIndex:I

.field private single:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I
    .locals 0

    iget p0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerIndex:I

    return p0
.end method

.method public static synthetic access$200(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I
    .locals 0

    iget p0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    return p0
.end method

.method public static synthetic access$300(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I
    .locals 0

    iget p0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    return p0
.end method

.method private offerQueue(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerChunk:[Ljava/lang/Object;

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerIndex:I

    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    if-ne v0, v4, :cond_2

    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    :cond_0
    iget v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    const/4 v5, 0x0

    if-lt v4, v2, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v1

    aput-object v2, v0, v1

    aput-object v4, v2, v5

    iput-object v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerChunk:[Ljava/lang/Object;

    move-object v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    aput-object p1, v0, v1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerIndex:I

    iget p1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "TE;>.Iterator;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;-><init>(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->iterator()Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    return-void

    :cond_0
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerChunk:[Ljava/lang/Object;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerChunk:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offerQueue(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offerQueue(Ljava/lang/Object;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    iput-object v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerIndex:I

    aget-object v4, v0, v3

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    aput-object v2, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    if-ne v0, v5, :cond_3

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    aget-object v0, v4, v1

    aput-object v2, v4, v1

    move-object v4, v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v3, v6

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    if-ne v3, v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerIndex:I

    return-object v4
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    return v0
.end method
