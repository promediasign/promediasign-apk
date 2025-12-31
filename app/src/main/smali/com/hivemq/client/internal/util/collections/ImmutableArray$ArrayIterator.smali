.class Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
        "TE;>;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/hivemq/client/internal/util/collections/ImmutableArray;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableArray;I)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD0/a;->a(Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;Ljava/lang/Object;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->access$000(Lcom/hivemq/client/internal/util/collections/ImmutableArray;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->access$000(Lcom/hivemq/client/internal/util/collections/ImmutableArray;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final synthetic remove()V
    .locals 0

    .line 1
    invoke-static {p0}, LD0/a;->b(Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;)V

    return-void
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD0/a;->c(Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;Ljava/lang/Object;)V

    return-void
.end method
