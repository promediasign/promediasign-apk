.class final Lcom/fasterxml/aalto/out/OutputElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/aalto/out/OutputElement$PrefixState;
    }
.end annotation


# instance fields
.field _defaultNsURI:Ljava/lang/String;

.field _name:Lcom/fasterxml/aalto/out/WName;

.field _nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

.field _parent:Lcom/fasterxml/aalto/out/OutputElement;

.field _uri:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_name:Lcom/fasterxml/aalto/out/WName;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    const-string v0, ""

    iput-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;Lcom/fasterxml/aalto/out/NsBinder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/OutputElement;->_name:Lcom/fasterxml/aalto/out/WName;

    iput-object p3, p0, Lcom/fasterxml/aalto/out/OutputElement;->_uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    iget-object p1, p1, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    return-void
.end method

.method public static createRoot()Lcom/fasterxml/aalto/out/OutputElement;
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/out/OutputElement;

    invoke-direct {v0}, Lcom/fasterxml/aalto/out/OutputElement;-><init>()V

    return-object v0
.end method

.method private relink(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/OutputElement;->_name:Lcom/fasterxml/aalto/out/WName;

    iput-object p3, p0, Lcom/fasterxml/aalto/out/OutputElement;->_uri:Ljava/lang/String;

    iget-object p2, p1, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    iget-object p1, p1, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fasterxml/aalto/out/NsBinder;->createEmpty()Lcom/fasterxml/aalto/out/NsBinder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-ne v1, v0, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/NsBinder;->createChild()Lcom/fasterxml/aalto/out/NsBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/NsBinder;->addMapping(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public addToPool(Lcom/fasterxml/aalto/out/OutputElement;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    return-void
.end method

.method public checkPrefixValidity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lcom/fasterxml/aalto/out/OutputElement$PrefixState;
    .locals 1

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/fasterxml/aalto/out/OutputElement$PrefixState;->OK:Lcom/fasterxml/aalto/out/OutputElement$PrefixState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/fasterxml/aalto/out/OutputElement$PrefixState;->MISBOUND:Lcom/fasterxml/aalto/out/OutputElement$PrefixState;

    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/NsBinder;->findUriByPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p3, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    sget-object p1, Lcom/fasterxml/aalto/out/OutputElement$PrefixState;->UNBOUND:Lcom/fasterxml/aalto/out/OutputElement$PrefixState;

    return-object p1

    :cond_4
    if-eq v0, p2, :cond_6

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/fasterxml/aalto/out/OutputElement$PrefixState;->MISBOUND:Lcom/fasterxml/aalto/out/OutputElement$PrefixState;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p1, Lcom/fasterxml/aalto/out/OutputElement$PrefixState;->OK:Lcom/fasterxml/aalto/out/OutputElement$PrefixState;

    :goto_3
    return-object p1
.end method

.method public createChild(Lcom/fasterxml/aalto/out/WName;)Lcom/fasterxml/aalto/out/OutputElement;
    .locals 3

    .line 1
    new-instance v0, Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fasterxml/aalto/out/OutputElement;-><init>(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;Lcom/fasterxml/aalto/out/NsBinder;)V

    return-object v0
.end method

.method public createChild(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)Lcom/fasterxml/aalto/out/OutputElement;
    .locals 2

    .line 2
    new-instance v0, Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/fasterxml/aalto/out/OutputElement;-><init>(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;Lcom/fasterxml/aalto/out/NsBinder;)V

    return-object v0
.end method

.method public generatePrefix(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;Ljava/lang/String;[I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fasterxml/aalto/out/NsBinder;->createEmpty()Lcom/fasterxml/aalto/out/NsBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    invoke-virtual {v0, p2, p1, p3}, Lcom/fasterxml/aalto/out/NsBinder;->generatePrefix(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;[I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExplicitPrefix(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/NsBinder;->findPrefixByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Lcom/fasterxml/aalto/out/WName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_name:Lcom/fasterxml/aalto/out/WName;

    return-object v0
.end method

.method public getNameDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_name:Lcom/fasterxml/aalto/out/WName;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/NsBinder;->findUriByPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParent()Lcom/fasterxml/aalto/out/OutputElement;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/NsBinder;->findPrefixByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrefixes(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/javax/xml/namespace/NamespaceContext;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/aalto/out/NsBinder;->getPrefixesBoundToUri(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    invoke-static {}, Lcom/fasterxml/aalto/util/EmptyIterator;->getInstance()Lcom/fasterxml/aalto/util/EmptyIterator;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public hasEmptyDefaultNs()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

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

.method public hasPrefix()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_name:Lcom/fasterxml/aalto/out/WName;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WName;->hasPrefix()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_name:Lcom/fasterxml/aalto/out/WName;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPrefixBoundTo(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Z
    .locals 1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/NsBinder;->findUriByPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p3, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    if-eq v0, p2, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    return p1

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPrefixUnbound(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_nsBinder:Lcom/fasterxml/aalto/out/NsBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/NsBinder;->findUriByPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public isRoot()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reuseAsChild(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;)Lcom/fasterxml/aalto/out/OutputElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/fasterxml/aalto/out/OutputElement;->relink(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V

    return-object v0
.end method

.method public reuseAsChild(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)Lcom/fasterxml/aalto/out/OutputElement;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/OutputElement;->_parent:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/OutputElement;->relink(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDefaultNsURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/out/OutputElement;->_defaultNsURI:Ljava/lang/String;

    return-void
.end method
