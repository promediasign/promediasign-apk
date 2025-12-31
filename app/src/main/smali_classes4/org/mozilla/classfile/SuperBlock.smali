.class final Lorg/mozilla/classfile/SuperBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private end:I

.field private index:I

.field private isInQueue:Z

.field private isInitialized:Z

.field private locals:[I

.field private stack:[I

.field private start:I


# direct methods
.method public constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    iput p2, p0, Lorg/mozilla/classfile/SuperBlock;->start:I

    iput p3, p0, Lorg/mozilla/classfile/SuperBlock;->end:I

    array-length p1, p4

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length p2, p4

    const/4 p3, 0x0

    invoke-static {p4, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, p3, [I

    iput-object p1, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    iput-boolean p3, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    iput-boolean p3, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    return-void
.end method

.method private static mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v2, p0, v0

    aget v3, p1, v0

    invoke-static {v2, v3, p3}, Lorg/mozilla/classfile/TypeInfo;->merge(IILorg/mozilla/classfile/ConstantPool;)I

    move-result v3

    aput v3, p0, v0

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->end:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    return v0
.end method

.method public getLocals()[I
    .locals 4

    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getStack()[I
    .locals 4

    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->start:I

    return v0
.end method

.method public getTrimmedLocals()[I
    .locals 6

    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v2, v1, v0

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v4, v4, v2

    invoke-static {v4}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v3, [I

    const/4 v2, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    iget-object v4, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v5, v4, v2

    aput v5, v0, v1

    aget v4, v4, v2

    invoke-static {v4}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public isInQueue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    return v0
.end method

.method public merge([II[IILorg/mozilla/classfile/ConstantPool;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p5, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    invoke-static {p1, v2, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, p4, [I

    iput-object p1, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    invoke-static {p3, v2, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v1, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v3, v0

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    array-length v3, v3

    if-ne v3, p4, :cond_3

    invoke-static {v0, p1, p2, p5}, Lorg/mozilla/classfile/SuperBlock;->mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result p1

    iget-object p2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/classfile/SuperBlock;->mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result p2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad merge attempt"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInQueue(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sb "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
