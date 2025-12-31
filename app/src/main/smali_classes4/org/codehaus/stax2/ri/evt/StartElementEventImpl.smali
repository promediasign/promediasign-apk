.class public Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;
.super Lorg/codehaus/stax2/ri/evt/BaseEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/events/StartElement;


# instance fields
.field _actualNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

.field protected final _attrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/javax/xml/stream/events/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected final _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field protected final _nsDecls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field protected _parentNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/xml/stream/Location;",
            "Lorg/apache/poi/javax/xml/namespace/QName;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/javax/xml/stream/events/Attribute;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;",
            "Lorg/apache/poi/javax/xml/namespace/NamespaceContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_actualNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    iput-object p3, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    if-nez p5, :cond_0

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyNamespaceContext;->getInstance()Lorg/codehaus/stax2/ri/EmptyNamespaceContext;

    move-result-object p5

    :cond_0
    iput-object p5, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_parentNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public static construct(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/xml/stream/Location;",
            "Lorg/apache/poi/javax/xml/namespace/QName;",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;",
            "Lorg/apache/poi/javax/xml/namespace/NamespaceContext;",
            ")",
            "Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/stream/events/Attribute;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v6, v0

    :goto_1
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v7, p2

    goto :goto_3

    :cond_5
    :goto_2
    move-object v7, v0

    :goto_3
    new-instance p2, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)V

    return-object p2
.end method


# virtual methods
.method public asStartElement()Lorg/apache/poi/javax/xml/stream/events/StartElement;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/apache/poi/javax/xml/stream/events/StartElement;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/StartElement;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartElement;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->getNamespaces()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->iteratedEquals(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->iteratedEquals(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public getAttributeByName(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/stream/events/Attribute;
    .locals 8

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v5, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/javax/xml/stream/events/Attribute;

    invoke-interface {v5}, Lorg/apache/poi/javax/xml/stream/events/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_4

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    :cond_3
    return-object v5

    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/xml/stream/events/Attribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyIterator;->getInstance()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 2

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_actualNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_parentNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    :goto_0
    iput-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_actualNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_parentNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    invoke-static {v1, v0}, Lorg/codehaus/stax2/ri/evt/MergedNsContext;->construct(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;Ljava/util/List;)Lorg/codehaus/stax2/ri/evt/MergedNsContext;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_actualNsCtxt:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-interface {v3}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyIterator;->getInstance()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->getNamespaces()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->addHash(Ljava/util/Iterator;I)I

    move-result v0

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->addHash(Ljava/util/Iterator;I)I

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 5

    const/16 v0, 0x3c

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    iget-object v4, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-interface {v4, p1}, Lorg/apache/poi/javax/xml/stream/events/XMLEvent;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/xml/stream/events/Attribute;

    invoke-interface {v3}, Lorg/apache/poi/javax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    invoke-interface {v3, p1}, Lorg/apache/poi/javax/xml/stream/events/XMLEvent;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeUsing(Lorg/codehaus/stax2/XMLStreamWriter2;)V
    .locals 6

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_nsDecls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-interface {v3}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v4, v3}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1, v3}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->_attrs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/stream/events/Attribute;

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/events/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v5, v3, v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
