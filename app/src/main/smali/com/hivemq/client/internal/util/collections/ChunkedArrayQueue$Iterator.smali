.class public Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private iterated:I

.field private iteratorChunk:[Ljava/lang/Object;

.field private iteratorIndex:I

.field final synthetic this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->reset()V

    return-void
.end method


# virtual methods
.method public getIterated()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$200(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$300(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    if-gtz v2, :cond_0

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorChunk:[Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorChunk:[Ljava/lang/Object;

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    aget-object v0, v0, v4

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v3}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$400(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iput v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    :cond_3
    :goto_0
    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    return-object v0

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->poll()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$000(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorChunk:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$100(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    return-void
.end method
