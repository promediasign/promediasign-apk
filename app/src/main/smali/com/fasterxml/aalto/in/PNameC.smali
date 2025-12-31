.class public final Lcom/fasterxml/aalto/in/PNameC;
.super Lcom/fasterxml/aalto/in/PName;
.source "SourceFile"


# instance fields
.field protected final mHash:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/aalto/in/PName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lcom/fasterxml/aalto/in/PNameC;->mHash:I

    return-void
.end method

.method public static construct(Ljava/lang/String;I)Lcom/fasterxml/aalto/in/PNameC;
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/in/PNameC;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/fasterxml/aalto/in/PNameC;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/fasterxml/aalto/in/PNameC;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/fasterxml/aalto/in/PNameC;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public createBoundName(Lcom/fasterxml/aalto/in/NsBinding;)Lcom/fasterxml/aalto/in/PName;
    .locals 5

    new-instance v0, Lcom/fasterxml/aalto/in/PNameC;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    iget v4, p0, Lcom/fasterxml/aalto/in/PNameC;->mHash:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/aalto/in/PNameC;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, v0, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    return-object v0
.end method

.method public equalsPName([CIII)Z
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/in/PNameC;->mHash:I

    const/4 v1, 0x0

    if-eq p4, v0, :cond_0

    return v1

    :cond_0
    iget-object p4, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p3, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getCustomHash()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/PNameC;->mHash:I

    return v0
.end method

.method public getQuad(I)I
    .locals 0

    invoke-static {}, Lcom/fasterxml/aalto/impl/ErrorConsts;->throwInternalError()V

    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/PNameC;->mHash:I

    return v0
.end method

.method public sizeInQuads()I
    .locals 1

    invoke-static {}, Lcom/fasterxml/aalto/impl/ErrorConsts;->throwInternalError()V

    const/4 v0, 0x0

    return v0
.end method
