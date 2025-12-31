.class public Lorg/codehaus/stax2/ri/evt/MergedNsContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/namespace/NamespaceContext;


# instance fields
.field final _namespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field final _parentCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/xml/namespace/NamespaceContext;",
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_parentCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_namespaces:Ljava/util/List;

    return-void
.end method

.method public static construct(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;Ljava/util/List;)Lorg/codehaus/stax2/ri/evt/MergedNsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/xml/namespace/NamespaceContext;",
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;)",
            "Lorg/codehaus/stax2/ri/evt/MergedNsContext;"
        }
    .end annotation

    new-instance v0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;-><init>(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public addToList(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_namespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_namespaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_parentCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_3
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal to pass null prefix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_namespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_namespaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_parentCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_parentCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    invoke-interface {v1, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_4
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "xml"

    return-object p1

    :cond_5
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "xmlns"

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal to pass null/empty prefix as argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_namespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_namespaces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-interface {v4}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->_parentCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3, v2}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :cond_3
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "xml"

    invoke-virtual {p0, v3, v0}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_4
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "xmlns"

    invoke-virtual {p0, v3, p1}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_5
    return-object v1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal to pass null/empty prefix as argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
