.class public abstract Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/stax2/XMLStreamWriter2;


# instance fields
.field protected final mDocument:Lorg/w3c/dom/Document;

.field protected mEncoding:Ljava/lang/String;

.field protected final mNsAware:Z

.field protected mNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

.field protected final mNsRepairing:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mEncoding:Ljava/lang/String;

    if-eqz p1, :cond_4

    iput-boolean p2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsAware:Z

    iput-boolean p3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsRepairing:Z

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/16 p3, 0x9

    if-eq p2, p3, :cond_2

    const/16 p3, 0xb

    if-ne p2, p3, :cond_1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    goto :goto_1

    :cond_1
    new-instance p2, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can not create an XMLStreamWriter for a DOM node of type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move-object p2, p1

    check-cast p2, Lorg/w3c/dom/Document;

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    if-eqz p2, :cond_3

    return-void

    :cond_3
    new-instance p2, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can not create an XMLStreamWriter for given node (of type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): did not have owner document"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can not pass null Node for constructing a DOM-based XMLStreamWriter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static throwOutputError(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract appendLeaf(Lorg/w3c/dom/Node;)V
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public reportUnsupported(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, " can not be used with DOM-backed writer"

    .line 4
    .line 5
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public setNamespaceContext(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->appendLeaf(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->appendLeaf(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public writeCharacters([CII)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->writeCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->appendLeaf(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 0

    const-string p1, "writeDTD()"

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->reportUnsupported(Ljava/lang/String;)V

    return-void
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->appendLeaf(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->appendLeaf(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 0

    const-string p1, "writeRaw()"

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->reportUnsupported(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument()V
    .locals 2

    .line 1
    const-string v0, "UTF-8"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mEncoding:Ljava/lang/String;

    return-void
.end method
