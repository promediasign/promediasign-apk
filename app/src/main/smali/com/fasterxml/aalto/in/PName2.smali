.class public final Lcom/fasterxml/aalto/in/PName2;
.super Lcom/fasterxml/aalto/in/ByteBasedPName;
.source "SourceFile"


# instance fields
.field final mQuad1:I

.field final mQuad2:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/in/ByteBasedPName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput p5, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad1:I

    iput p6, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad2:I

    return-void
.end method


# virtual methods
.method public createBoundName(Lcom/fasterxml/aalto/in/NsBinding;)Lcom/fasterxml/aalto/in/PName;
    .locals 8

    new-instance v7, Lcom/fasterxml/aalto/in/PName2;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    iget v5, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad1:I

    iget v6, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad2:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/aalto/in/PName2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object p1, v7, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    return-object v7
.end method

.method public equals(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad1:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad2:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals([II)Z
    .locals 2

    .line 2
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    aget p2, p1, v1

    iget v0, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad1:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    aget p1, p1, p2

    iget v0, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad2:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getQuad(I)I
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad1:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad2:I

    :goto_0
    return p1
.end method

.method public hashEquals(III)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad1:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad2:I

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashEquals(I[II)Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    aget p1, p2, v1

    iget p3, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad1:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    aget p2, p2, p1

    iget p3, p0, Lcom/fasterxml/aalto/in/PName2;->mQuad2:I

    if-ne p2, p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public sizeInQuads()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
