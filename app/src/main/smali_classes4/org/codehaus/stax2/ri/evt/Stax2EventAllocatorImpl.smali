.class public abstract Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;->getLocation(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized event type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v1, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1, v3}, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Z)V

    return-object v1

    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;->createDTD(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/Location;)Lorg/apache/poi/javax/xml/stream/events/DTD;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;->createEntityReference(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/Location;)Lorg/apache/poi/javax/xml/stream/events/EntityReference;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-instance p1, Lorg/codehaus/stax2/ri/evt/EndDocumentEventImpl;

    invoke-direct {p1, v0}, Lorg/codehaus/stax2/ri/evt/EndDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    return-object p1

    :pswitch_5
    new-instance v1, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;

    invoke-direct {v1, v0, p1}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    return-object v1

    :pswitch_6
    new-instance v1, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1, v2}, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;->setWhitespaceStatus(Z)V

    return-object v1

    :pswitch_7
    new-instance v1, Lorg/codehaus/stax2/ri/evt/CommentEventImpl;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/codehaus/stax2/ri/evt/CommentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V

    return-object v1

    :pswitch_8
    new-instance v1, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1, v2}, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Z)V

    return-object v1

    :pswitch_9
    new-instance v1, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_a
    new-instance v1, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;

    invoke-direct {v1, v0, p1}, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    return-object v1

    :pswitch_b
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;->createStartElement(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/Location;)Lorg/apache/poi/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public allocate(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/util/XMLEventConsumer;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;->allocate(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/poi/javax/xml/stream/util/XMLEventConsumer;->add(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public createDTD(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/Location;)Lorg/apache/poi/javax/xml/stream/events/DTD;
    .locals 8

    instance-of v0, p1, Lorg/codehaus/stax2/XMLStreamReader2;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/stax2/XMLStreamReader2;

    invoke-interface {p1}, Lorg/codehaus/stax2/XMLStreamReader2;->getDTDInfo()Lorg/codehaus/stax2/DTDInfo;

    move-result-object p1

    new-instance v7, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;

    invoke-interface {p1}, Lorg/codehaus/stax2/DTDInfo;->getDTDRootName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/codehaus/stax2/DTDInfo;->getDTDSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/codehaus/stax2/DTDInfo;->getDTDPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/codehaus/stax2/DTDInfo;->getDTDInternalSubset()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/codehaus/stax2/DTDInfo;->getProcessedDTD()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v7

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7

    :cond_0
    new-instance v0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createEntityReference(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/Location;)Lorg/apache/poi/javax/xml/stream/events/EntityReference;
    .locals 1

    new-instance v0, Lorg/codehaus/stax2/ri/evt/EntityReferenceEventImpl;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/codehaus/stax2/ri/evt/EntityReferenceEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V

    return-object v0
.end method

.method public createStartElement(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/Location;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
    .locals 11

    instance-of v0, p1, Lorg/codehaus/stax2/XMLStreamReader2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/codehaus/stax2/XMLStreamReader2;

    invoke-interface {v0}, Lorg/codehaus/stax2/XMLStreamReader2;->getNonTransientNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    move-object v5, v1

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    invoke-interface {p1, v6}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeName(I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v7

    new-instance v8, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;

    invoke-interface {p1, v6}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v6}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v10

    invoke-direct {v8, p2, v7, v9, v10}, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Z)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v2

    if-ge v2, v4, :cond_3

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-interface {p1, v3}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v4, v6}, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->constructNamespace(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    if-nez v5, :cond_5

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyIterator;->getInstance()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_5

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    if-nez v1, :cond_6

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyIterator;->getInstance()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_6

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-static {p2, p1, v2, v1, v0}, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->construct(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;

    move-result-object p1

    return-object p1
.end method

.method public abstract getLocation(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/Location;
.end method
