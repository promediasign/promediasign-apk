.class Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableIntList;


# instance fields
.field private final array:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    check-cast p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    iget-object p1, p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    :cond_2
    check-cast p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    array-length v1, v1

    invoke-interface {p1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget v3, v3, v1

    invoke-interface {p1, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public get(I)I
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    array-length v1, v0

    invoke-static {p1, v1}, Lcom/hivemq/client/internal/util/Checks;->index(II)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
