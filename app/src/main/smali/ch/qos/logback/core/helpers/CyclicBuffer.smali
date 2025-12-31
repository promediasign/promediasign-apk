.class public Lch/qos/logback/core/helpers/CyclicBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field ea:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field first:I

.field last:I

.field maxSize:I

.field numElems:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lch/qos/logback/core/helpers/CyclicBuffer;->init(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maxSize argument ("

    const-string v2, ") is not a positive integer."

    .line 1
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lch/qos/logback/core/helpers/CyclicBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->ea:[Ljava/lang/Object;

    iget-object v2, p1, Lch/qos/logback/core/helpers/CyclicBuffer;->ea:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lch/qos/logback/core/helpers/CyclicBuffer;->last:I

    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->last:I

    iget v0, p1, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    iget p1, p1, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    iput p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    return-void
.end method

.method private init(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->ea:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    iput p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->last:I

    iput p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->ea:[Ljava/lang/Object;

    iget v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->last:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->last:I

    iget p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    const/4 v0, 0x0

    if-ne v1, p1, :cond_0

    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->last:I

    :cond_0
    iget v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    if-ge v1, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    if-ne v1, p1, :cond_2

    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    :cond_2
    :goto_0
    return-void
.end method

.method public asList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lch/qos/logback/core/helpers/CyclicBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lch/qos/logback/core/helpers/CyclicBuffer;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    iget v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    invoke-direct {p0, v0}, Lch/qos/logback/core/helpers/CyclicBuffer;->init(I)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    iget-object v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->ea:[Ljava/lang/Object;

    iget v2, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    aget-object v3, v0, v2

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    iget v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    :cond_0
    move-object v1, v3

    :cond_1
    return-object v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 2
    if-ltz p1, :cond_1

    iget v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->ea:[Ljava/lang/Object;

    iget v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    add-int/2addr v1, p1

    iget p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    rem-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    return v0
.end method

.method public resize(I)V
    .locals 7

    .line 1
    if-ltz p1, :cond_5

    .line 2
    .line 3
    iget v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-array v1, p1, [Ljava/lang/Object;

    .line 9
    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    move v0, p1

    .line 13
    :cond_1
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v0, :cond_3

    .line 16
    .line 17
    iget-object v4, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->ea:[Ljava/lang/Object;

    .line 18
    .line 19
    iget v5, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    .line 20
    .line 21
    aget-object v6, v4, v5

    .line 22
    .line 23
    aput-object v6, v1, v3

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    aput-object v6, v4, v5

    .line 27
    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    iput v5, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    .line 31
    .line 32
    iget v4, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    .line 33
    .line 34
    if-ne v5, v4, :cond_2

    .line 35
    .line 36
    iput v2, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    .line 37
    .line 38
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iput-object v1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->ea:[Ljava/lang/Object;

    .line 42
    .line 43
    iput v2, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->first:I

    .line 44
    .line 45
    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->numElems:I

    .line 46
    .line 47
    iput p1, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->maxSize:I

    .line 48
    .line 49
    if-ne v0, p1, :cond_4

    .line 50
    .line 51
    iput v2, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->last:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iput v0, p0, Lch/qos/logback/core/helpers/CyclicBuffer;->last:I

    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string v1, "Negative array size ["

    .line 60
    .line 61
    const-string v2, "] not allowed."

    .line 62
    .line 63
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method
