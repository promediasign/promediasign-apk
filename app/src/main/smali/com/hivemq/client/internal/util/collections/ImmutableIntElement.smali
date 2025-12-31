.class Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableIntList;


# instance fields
.field private final element:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    invoke-interface {p1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    invoke-interface {p1, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->get(I)I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->index(II)I

    iget p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    .line 9
    .line 10
    const-string v2, "]"

    .line 11
    .line 12
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
