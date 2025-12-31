.class public Lcom/hivemq/client/internal/util/collections/Index;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/Index$Node;,
        Lcom/hivemq/client/internal/util/collections/Index$Spec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private nodeCount:I

.field private nodeThreshold:I

.field private size:I

.field private final spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index$Spec<",
            "TE;TK;>;"
        }
    .end annotation
.end field

.field private table:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/util/collections/Index$Spec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/Index$Spec<",
            "TE;TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget p1, p1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->minCapacity:I

    invoke-static {p1}, Lcom/hivemq/client/internal/util/Pow2Util;->roundToPowerOf2Bits(I)I

    move-result p1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/Index;->calcThresholds(I)V

    return-void
.end method

.method private added()V
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    return-void
.end method

.method private addedNode()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    iget v2, v0, Lcom/hivemq/client/internal/util/collections/Index;->nodeThreshold:I

    if-le v1, v2, :cond_d

    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v2, v3, :cond_d

    array-length v2, v1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, -0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v2, :cond_c

    aget-object v8, v1, v6

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v9, v10, :cond_a

    check-cast v8, Lcom/hivemq/client/internal/util/collections/Index$Node;

    add-int v9, v6, v2

    const/4 v11, 0x0

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    :goto_1
    iget v15, v8, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    and-int/2addr v15, v4

    if-ne v15, v6, :cond_1

    if-nez v12, :cond_0

    aput-object v8, v5, v6

    :goto_2
    move-object v12, v8

    goto :goto_4

    :cond_0
    iput-object v8, v12, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    move-object v13, v12

    goto :goto_2

    :cond_1
    if-nez v11, :cond_2

    aput-object v8, v5, v9

    :goto_3
    move-object v11, v8

    goto :goto_4

    :cond_2
    iput-object v8, v11, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    move-object v14, v11

    goto :goto_3

    :goto_4
    add-int/lit8 v15, v7, 0x1

    iget-object v8, v8, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    move-object/from16 v16, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v10, :cond_3

    check-cast v8, Lcom/hivemq/client/internal/util/collections/Index$Node;

    move v7, v15

    move-object/from16 v1, v16

    goto :goto_1

    :cond_3
    invoke-direct {v0, v8}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v8, v0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v8, v8, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v8, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    and-int/2addr v8, v4

    if-ne v8, v6, :cond_6

    if-nez v12, :cond_4

    aput-object v1, v5, v6

    goto :goto_5

    :cond_4
    iput-object v1, v12, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    :goto_5
    if-eqz v11, :cond_9

    iget-object v1, v11, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    if-nez v14, :cond_5

    aput-object v1, v5, v9

    goto :goto_7

    :cond_5
    iput-object v1, v14, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    goto :goto_7

    :cond_6
    if-nez v11, :cond_7

    aput-object v1, v5, v9

    goto :goto_6

    :cond_7
    iput-object v1, v11, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    :goto_6
    if-eqz v12, :cond_9

    iget-object v1, v12, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    if-nez v13, :cond_8

    aput-object v1, v5, v6

    goto :goto_7

    :cond_8
    iput-object v1, v13, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    goto :goto_7

    :cond_9
    move v7, v15

    goto :goto_7

    :cond_a
    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-direct {v0, v8}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    and-int/2addr v1, v4

    aput-object v8, v5, v1

    goto :goto_7

    :cond_b
    move-object/from16 v16, v1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_c
    iput-object v5, v0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    iput v7, v0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    invoke-direct {v0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->calcThresholds(I)V

    :cond_d
    return-void
.end method

.method private calcThresholds(I)V
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget v0, v0, Lcom/hivemq/client/internal/util/collections/Index$Spec;->nodeThresholdFactor:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeThreshold:I

    return-void
.end method

.method private cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    return-object p1
.end method

.method private put(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TE;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v2

    aget-object v4, v0, v3

    const/4 v5, 0x0

    if-nez v4, :cond_0

    aput-object p1, v0, v3

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->added()V

    return-object v5

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v6, v7, :cond_6

    check-cast v4, Lcom/hivemq/client/internal/util/collections/Index$Node;

    :goto_0
    iget v0, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v0, v0, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    iget-object v3, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    if-eqz p2, :cond_1

    iput-object p1, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v7, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/hivemq/client/internal/util/collections/Index$Node;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v3, v3, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    iput-object p1, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    new-instance p2, Lcom/hivemq/client/internal/util/collections/Index$Node;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {p2, v1, v0, p1}, Lcom/hivemq/client/internal/util/collections/Index$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->added()V

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->addedNode()V

    return-object v5

    :cond_6
    invoke-direct {p0, v4}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v6, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v6, v6, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v6, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_7

    aput-object p1, v0, v3

    :cond_7
    return-object v2

    :cond_8
    new-instance p2, Lcom/hivemq/client/internal/util/collections/Index$Node;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {p2, v1, v4, p1}, Lcom/hivemq/client/internal/util/collections/Index$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, v3

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->added()V

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->addedNode()V

    return-object v5
.end method

.method private removed()V
    .locals 12

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeThreshold:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget v2, v2, Lcom/hivemq/client/internal/util/collections/Index$Spec;->minCapacity:I

    if-le v1, v2, :cond_5

    array-length v1, v0

    shr-int/lit8 v2, v1, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_4

    aget-object v6, v0, v5

    if-eqz v6, :cond_3

    sub-int v7, v5, v2

    aget-object v8, v3, v7

    if-nez v8, :cond_0

    aput-object v6, v3, v7

    goto :goto_3

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v9, v10, :cond_2

    check-cast v8, Lcom/hivemq/client/internal/util/collections/Index$Node;

    :goto_1
    iget-object v7, v8, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v10, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/hivemq/client/internal/util/collections/Index$Node;

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget-object v10, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v10, v10, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-direct {p0, v7}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {v9, v10, v7, v6}, Lcom/hivemq/client/internal/util/collections/Index$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v9, v8, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    new-instance v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget-object v10, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v10, v10, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-direct {p0, v8}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {v9, v10, v8, v6}, Lcom/hivemq/client/internal/util/collections/Index$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v7

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iput-object v3, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    iput v4, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    invoke-direct {p0, v2}, Lcom/hivemq/client/internal/util/collections/Index;->calcThresholds(I)V

    :cond_5
    return-void
.end method

.method private removedNode()V
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    return-void
.end method


# virtual methods
.method public any()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v0, v1, :cond_0

    check-cast v3, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget-object v0, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v4, v5, :cond_0

    :goto_1
    check-cast v3, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget-object v4, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    aget-object v0, v0, v2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v3, v4, :cond_4

    :goto_0
    check-cast v0, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget v3, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v3, v3, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    iget-object v5, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    return-object v2

    :cond_4
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v0

    :cond_5
    return-object v2
.end method

.method public put(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v5, v6, :cond_7

    check-cast v3, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget v5, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    if-ne v5, v1, :cond_1

    iget-object v5, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v5, v5, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    iget-object v7, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removedNode()V

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removed()V

    iget-object p1, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v5, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v6, :cond_3

    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v5, v5, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v5, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    aput-object p1, v0, v2

    :goto_1
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removedNode()V

    :goto_2
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removed()V

    return-object v1

    :cond_2
    return-object v4

    :cond_3
    :goto_3
    move-object v0, v5

    check-cast v0, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget v2, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v2, v2, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    iget-object v5, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    iput-object p1, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removedNode()V

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removed()V

    iget-object p1, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v6, :cond_6

    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v2, v2, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    iput-object p1, v3, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-object v4

    :cond_6
    move-object v3, v0

    goto :goto_3

    :cond_7
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v3, v3, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    aput-object v4, v0, v2

    goto :goto_2

    :cond_8
    return-object v4
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    return v0
.end method
