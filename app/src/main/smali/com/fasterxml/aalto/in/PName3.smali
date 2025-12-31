.class public final Lcom/fasterxml/aalto/in/PName3;
.super Lcom/fasterxml/aalto/in/ByteBasedPName;
.source "SourceFile"


# instance fields
.field final mQuad1:I

.field final mQuad2:I

.field final mQuad3:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/in/ByteBasedPName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput p5, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad1:I

    iput p6, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad2:I

    iput p7, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad3:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/in/ByteBasedPName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    aget p1, p5, p1

    iput p1, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad1:I

    const/4 p1, 0x1

    aget p1, p5, p1

    iput p1, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad2:I

    const/4 p1, 0x2

    aget p1, p5, p1

    iput p1, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad3:I

    return-void
.end method


# virtual methods
.method public createBoundName(Lcom/fasterxml/aalto/in/NsBinding;)Lcom/fasterxml/aalto/in/PName;
    .locals 9

    new-instance v8, Lcom/fasterxml/aalto/in/PName3;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    iget v5, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad1:I

    iget v6, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad2:I

    iget v7, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad3:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/aalto/in/PName3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object p1, v8, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    return-object v8
.end method

.method public equals(II)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public equals([II)Z
    .locals 3

    .line 2
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    aget p2, p1, v1

    iget v0, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad1:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    aget v0, p1, p2

    iget v2, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad2:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    aget p1, p1, v0

    iget v0, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad3:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getQuad(I)I
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad1:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad2:I

    :goto_0
    return p1

    :cond_1
    iget p1, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad3:I

    return p1
.end method

.method public hashEquals(III)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public hashEquals(I[II)Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    aget p1, p2, v1

    iget p3, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad1:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    aget p3, p2, p1

    iget v0, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad2:I

    if-ne p3, v0, :cond_0

    const/4 p3, 0x2

    aget p2, p2, p3

    iget p3, p0, Lcom/fasterxml/aalto/in/PName3;->mQuad3:I

    if-ne p2, p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public sizeInQuads()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
