.class public Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private array:[I

.field private i:I

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableIntList$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;-><init>()V

    return-void
.end method

.method private newCapacity(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public add(I)Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .locals 4

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->i:I

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    if-nez v2, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    goto :goto_0

    :cond_1
    array-length v3, v2

    if-ne v0, v3, :cond_2

    array-length v0, v2

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->newCapacity(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->i:I

    aput v3, v1, v2

    :cond_3
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    aput p1, v1, v0

    :goto_1
    return-object p0
.end method

.method public build()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 4

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    array-length v2, v1

    if-ne v2, v0, :cond_0

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;-><init>([I)V

    return-object v0

    :cond_0
    new-instance v2, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;-><init>([I)V

    return-object v2

    :cond_1
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->i:I

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;-><init>(I)V

    return-object v0

    :cond_2
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    return-object v0
.end method
