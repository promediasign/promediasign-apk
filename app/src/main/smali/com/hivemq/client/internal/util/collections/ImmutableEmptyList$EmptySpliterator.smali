.class Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4551

    return v0
.end method

.method public estimateSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

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

    const-wide/16 v0, 0x0

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
