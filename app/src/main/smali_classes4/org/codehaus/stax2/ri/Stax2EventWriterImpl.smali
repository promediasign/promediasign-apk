.class public Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamConstants;


# instance fields
.field protected final _writer:Lorg/codehaus/stax2/XMLStreamWriter2;


# direct methods
.method public constructor <init>(Lorg/codehaus/stax2/XMLStreamWriter2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/poi/javax/xml/stream/XMLEventReader;)V
    .locals 1

    .line 1
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->add(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public add(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    instance-of v0, p1, Lorg/codehaus/stax2/evt/XMLEvent2;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/stax2/evt/XMLEvent2;

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1, v0}, Lorg/codehaus/stax2/evt/XMLEvent2;->writeUsing(Lorg/codehaus/stax2/XMLStreamWriter2;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to output event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/XMLEvent;->asCharacters()Lorg/apache/poi/javax/xml/stream/events/Characters;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/DTD;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/Attribute;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, v3, v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/EntityReference;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object p1, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    goto/16 :goto_2

    :pswitch_7
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/StartDocument;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->encodingSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/Comment;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/XMLEvent;->asCharacters()Lorg/apache/poi/javax/xml/stream/events/Characters;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Characters;->isCData()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_a
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_b
    iget-object p1, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto :goto_2

    :pswitch_c
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/XMLEvent;->asStartElement()Lorg/apache/poi/javax/xml/stream/events/StartElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartElement;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->add(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/stream/events/Attribute;

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->add(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceContext(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->setNamespaceContext(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;->_writer:Lorg/codehaus/stax2/XMLStreamWriter2;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
