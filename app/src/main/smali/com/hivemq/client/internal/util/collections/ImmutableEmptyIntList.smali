.class Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableIntList;


# static fields
.field static final INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(I)I
    .locals 1

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Empty int list"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method
