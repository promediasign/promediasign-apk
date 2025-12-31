.class public Lorg/h2/util/IntArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[I

.field private hash:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/h2/util/IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/h2/util/IntArray;->data:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/util/IntArray;->data:[I

    array-length p1, p1

    iput p1, p0, Lorg/h2/util/IntArray;->size:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    iget-object v1, p0, Lorg/h2/util/IntArray;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/2addr v0, v0

    invoke-virtual {p0, v0}, Lorg/h2/util/IntArray;->ensureCapacity(I)V

    :cond_0
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    iget v1, p0, Lorg/h2/util/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/util/IntArray;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    new-array p1, p1, [I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/h2/util/IntArray;->data:[I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/h2/util/IntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/h2/util/IntArray;

    invoke-virtual {p0}, Lorg/h2/util/IntArray;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/util/IntArray;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    iget v2, p1, Lorg/h2/util/IntArray;->size:I

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/h2/util/IntArray;->data:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/h2/util/IntArray;->data:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public get(I)I
    .locals 3

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 11
    .line 12
    const-string v1, "i="

    .line 13
    .line 14
    const-string v2, " size="

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget v1, p0, Lorg/h2/util/IntArray;->size:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    .line 34
    .line 35
    aget p1, v0, p1

    .line 36
    .line 37
    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/h2/util/IntArray;->hash:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/h2/util/IntArray;->data:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/h2/util/IntArray;->hash:I

    return v0
.end method

.method public remove(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 11
    .line 12
    const-string v1, "i="

    .line 13
    .line 14
    const-string v2, " size="

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget v1, p0, Lorg/h2/util/IntArray;->size:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    .line 34
    .line 35
    add-int/lit8 v1, p1, 0x1

    .line 36
    .line 37
    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    .line 38
    .line 39
    sub-int/2addr v2, p1

    .line 40
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    iget p1, p0, Lorg/h2/util/IntArray;->size:I

    .line 46
    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 48
    .line 49
    iput p1, p0, Lorg/h2/util/IntArray;->size:I

    .line 50
    .line 51
    return-void
.end method

.method public removeRange(II)V
    .locals 4

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    .line 8
    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 13
    .line 14
    const-string v1, "from="

    .line 15
    .line 16
    const-string v2, " to="

    .line 17
    .line 18
    const-string v3, " size="

    .line 19
    .line 20
    invoke-static {v1, p1, v2, p2, v3}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget p2, p0, Lorg/h2/util/IntArray;->size:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    .line 38
    .line 39
    iget v1, p0, Lorg/h2/util/IntArray;->size:I

    .line 40
    .line 41
    sub-int/2addr v1, p2

    .line 42
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    .line 46
    .line 47
    sub-int/2addr p2, p1

    .line 48
    sub-int/2addr v0, p2

    .line 49
    iput v0, p0, Lorg/h2/util/IntArray;->size:I

    .line 50
    .line 51
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    return v0
.end method

.method public toArray([I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/util/IntArray;->data:[I

    aget v2, v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
