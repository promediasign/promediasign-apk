.class public Lcom/hivemq/client/internal/util/Ranges;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/Ranges$Range;
    }
.end annotation


# instance fields
.field private rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hivemq/client/internal/util/Ranges$Range;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {v0, p1, p2}, Lcom/hivemq/client/internal/util/Ranges$Range;-><init>(II)V

    iput-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    return-void
.end method

.method private returnId(Lcom/hivemq/client/internal/util/Ranges$Range;I)Lcom/hivemq/client/internal/util/Ranges$Range;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    iput p2, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    return-object v2

    :cond_0
    iget v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    if-lt p2, v1, :cond_5

    const-string v3, "The id is greater than maxId. This must not happen and is a bug."

    if-ne p2, v1, :cond_3

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    iget p2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    if-ne v1, p2, :cond_1

    iget p2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    iput p2, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    iget-object p2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    iput-object p2, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    :cond_1
    return-object v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The id was already returned. This must not happen and is a bug."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getId()I
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    iget v2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    if-ne v3, v2, :cond_1

    iget-object v0, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    :cond_1
    return v1
.end method

.method public resize(I)I
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    :goto_0
    iget v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    const/4 v2, 0x0

    if-gt v1, p1, :cond_1

    iget-object v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    return v2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v1, p1

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    if-eqz v1, :cond_3

    iget v3, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    iget v0, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    move-object v0, v1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iput p1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    :cond_4
    return v2
.end method

.method public returnId(I)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    new-instance v1, Lcom/hivemq/client/internal/util/Ranges$Range;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, p1, v2, v0}, Lcom/hivemq/client/internal/util/Ranges$Range;-><init>(IILcom/hivemq/client/internal/util/Ranges$Range;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/hivemq/client/internal/util/Ranges;->returnId(Lcom/hivemq/client/internal/util/Ranges$Range;I)Lcom/hivemq/client/internal/util/Ranges$Range;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    new-instance v2, Lcom/hivemq/client/internal/util/Ranges$Range;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v2, p1, v3, v0}, Lcom/hivemq/client/internal/util/Ranges$Range;-><init>(IILcom/hivemq/client/internal/util/Ranges$Range;)V

    iput-object v2, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    :cond_1
    return-void
.end method
