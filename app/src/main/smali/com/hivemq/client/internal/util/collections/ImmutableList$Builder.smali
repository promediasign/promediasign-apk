.class public Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ILcom/hivemq/client/internal/util/collections/ImmutableList$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableList$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-le p1, v1, :cond_1

    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->newCapacity(I)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-class v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->e:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->e:Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    return-object p1
.end method

.method public static first(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)TE;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private newCapacity(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "Immutable list element"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->e:Ljava/lang/Object;

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    aput-object p1, v1, v2

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    :goto_0
    return-object p0
.end method

.method public build()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v2, v0, :cond_0

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v2, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->e:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    return v0
.end method
