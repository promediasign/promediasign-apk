.class public final Lcom/fasterxml/aalto/in/PNameN;
.super Lcom/fasterxml/aalto/in/ByteBasedPName;
.source "SourceFile"


# instance fields
.field final mQuadLen:I

.field final mQuads:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/in/ByteBasedPName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    iput p6, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuadLen:I

    return-void
.end method


# virtual methods
.method public createBoundName(Lcom/fasterxml/aalto/in/NsBinding;)Lcom/fasterxml/aalto/in/PName;
    .locals 8

    new-instance v7, Lcom/fasterxml/aalto/in/PNameN;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    iget-object v5, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    iget v6, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuadLen:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/aalto/in/PNameN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[II)V

    iput-object p1, v7, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    return-object v7
.end method

.method public equals(II)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuadLen:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    aget v0, v0, v2

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    aget v3, v0, v2

    if-ne v3, p1, :cond_2

    aget p1, v0, v1

    if-ne p1, p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public equals([II)Z
    .locals 4

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuadLen:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v2, p1, v0

    iget-object v3, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public getQuad(I)I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuadLen:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashEquals(III)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuadLen:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    aget p1, p1, v1

    if-ne p1, p2, :cond_0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object p1, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    aget v2, p1, v1

    if-ne v2, p2, :cond_2

    aget p1, p1, v0

    if-ne p1, p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashEquals(I[II)Z
    .locals 3

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuadLen:I

    if-ne p3, p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    aget v0, p2, p1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuads:[I

    aget v2, v2, p1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public sizeInQuads()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/PNameN;->mQuadLen:I

    return v0
.end method
