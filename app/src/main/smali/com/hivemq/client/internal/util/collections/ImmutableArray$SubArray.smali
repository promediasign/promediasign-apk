.class Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;
.super Lcom/hivemq/client/internal/util/collections/ImmutableArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/util/collections/ImmutableArray<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final fromIndex:I

.field private final toIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    iput p2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->fromIndex:I

    iput p3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->toIndex:I

    return-void
.end method


# virtual methods
.method public getFromIndex()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->fromIndex:I

    return v0
.end method

.method public getToIndex()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->toIndex:I

    return v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
