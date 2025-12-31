.class public abstract Lcom/fasterxml/aalto/in/PName;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _localName:Ljava/lang/String;

.field protected _namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

.field protected final _prefix:Ljava/lang/String;

.field protected final _prefixedName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    return-void
.end method

.method public static boundHashCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final boundEquals(Lcom/fasterxml/aalto/in/PName;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getNsUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/PName;->getNsUri()Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final boundEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/PName;->getNsUri()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final boundHashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final constructQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    :goto_0
    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, ""

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    iget-object v4, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v3

    :cond_2
    invoke-direct {v2, v1, v4, v0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final constructQName(Lcom/fasterxml/aalto/in/NsBinding;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance p1, Lorg/apache/poi/javax/xml/namespace/QName;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    invoke-direct {p1, v2, v1, v0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object p1, p1, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    iget-object p1, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    invoke-direct {v2, v1, p1, v0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public abstract createBoundName(Lcom/fasterxml/aalto/in/NsBinding;)Lcom/fasterxml/aalto/in/PName;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/fasterxml/aalto/in/PName;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/fasterxml/aalto/in/PName;

    iget-object v1, p1, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    if-ne v1, v3, :cond_2

    iget-object p1, p1, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_localName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNsUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefixedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getQuad(I)I
.end method

.method public final isBound()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_namespaceBinding:Lcom/fasterxml/aalto/in/NsBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract sizeInQuads()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    return-object v0
.end method

.method public final unboundEquals(Lcom/fasterxml/aalto/in/PName;)Z
    .locals 1

    iget-object p1, p1, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final unboundHashCode()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/PName;->_prefixedName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
