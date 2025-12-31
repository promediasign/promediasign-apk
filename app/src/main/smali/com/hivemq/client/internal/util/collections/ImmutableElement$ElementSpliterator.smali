.class Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElementSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private size:I

.field final synthetic this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;Lcom/hivemq/client/internal/util/collections/ImmutableElement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4551

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    int-to-long v0, v0

    return-wide v0
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

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    return-void
.end method

.method public final synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->access$100(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    return v2

    :cond_0
    return v1
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
