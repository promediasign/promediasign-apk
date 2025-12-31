.class Lorg/jdom/transform/JDOMResult$DocumentBuilder;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocumentBuilder"
.end annotation


# instance fields
.field private saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

.field private startDocumentReceived:Z

.field private final synthetic this$0:Lorg/jdom/transform/JDOMResult;


# direct methods
.method public constructor <init>(Lorg/jdom/transform/JDOMResult;)V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-object p1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom/transform/JDOMResult;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    return-void
.end method

.method private ensureInitialization()V
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocument()V

    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 1

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom/input/SAXHandler;->comment([CII)V

    return-void
.end method

.method public endCDATA()V
    .locals 1

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom/input/SAXHandler;->endCDATA()V

    return-void
.end method

.method public endDTD()V
    .locals 1

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom/input/SAXHandler;->endDTD()V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1}, Lorg/jdom/input/SAXHandler;->endEntity(Ljava/lang/String;)V

    return-void
.end method

.method public getResult()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->getResult()Ljava/util/List;

    move-result-object v0

    iput-object v1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startCDATA()V
    .locals 1

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom/input/SAXHandler;->startCDATA()V

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom/input/SAXHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom/transform/JDOMResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jdom/transform/JDOMResult;->setResult(Ljava/util/List;)V

    new-instance v0, Lorg/jdom/transform/JDOMResult$FragmentHandler;

    iget-object v1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom/transform/JDOMResult;

    invoke-virtual {v1}, Lorg/jdom/transform/JDOMResult;->getFactory()Lorg/jdom/JDOMFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom/transform/JDOMResult$FragmentHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    iput-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-super {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1}, Lorg/jdom/input/SAXHandler;->startEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
