.class public Lorg/jdom/output/SAXOutputter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXOutputter.java,v $ $Revision: 1.40 $ $Date: 2007/11/10 05:29:01 $ $Name:  $"

.field private static final DECL_HANDLER_ALT_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/handlers/DeclHandler"

.field private static final DECL_HANDLER_SAX_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field private static final LEXICAL_HANDLER_ALT_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/handlers/LexicalHandler"

.field private static final LEXICAL_HANDLER_SAX_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final NAMESPACES_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NS_PREFIXES_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final VALIDATION_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final attrTypeToNameMap:[Ljava/lang/String;


# instance fields
.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private declareNamespaces:Z

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private locator:Lorg/jdom/output/JDOMLocator;

.field private reportDtdEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "NOTATION"

    const-string v10, "NMTOKEN"

    const-string v0, "CDATA"

    const-string v1, "CDATA"

    const-string v2, "ID"

    const-string v3, "IDREF"

    const-string v4, "IDREFS"

    const-string v5, "ENTITY"

    const-string v6, "ENTITIES"

    const-string v7, "NMTOKEN"

    const-string v8, "NMTOKENS"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 6

    .line 2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jdom/output/SAXOutputter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;)V
    .locals 6

    .line 3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jdom/output/SAXOutputter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object p2, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    iput-object p3, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object p4, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    iput-object p5, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method private addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 6

    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v4, "CDATA"

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    const-string v2, ""

    const-string v3, "xmlns"

    :goto_0
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "xmlns:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    const-string v2, ""

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private cdata(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in CDATA"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private characters(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in characters"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private comment(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in comment"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private createDTDParser()Lorg/xml/sax/XMLReader;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    :cond_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    nop

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_3
    const-string v1, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    :try_start_4
    const-string v1, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    :goto_1
    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-object v0

    :catch_4
    move-exception v0

    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Error in SAX parser allocation"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private documentLocator(Lorg/jdom/Document;)V
    .locals 2

    new-instance v0, Lorg/jdom/output/JDOMLocator;

    invoke-direct {v0}, Lorg/jdom/output/JDOMLocator;-><init>()V

    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method private dtdEvents(Lorg/jdom/Document;)V
    .locals 4

    const-string v0, "DTD parsing error"

    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p1}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/DocType;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->createDTDParser()Lorg/xml/sax/XMLReader;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/jdom/JDOMException;

    invoke-direct {v1, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/jdom/JDOMException;

    invoke-direct {v1, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :cond_1
    :goto_2
    return-void
.end method

.method private element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V
    .locals 2

    invoke-virtual {p2}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v0

    invoke-direct {p0, p1, p2}, Lorg/jdom/output/SAXOutputter;->startPrefixMapping(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)Lorg/xml/sax/Attributes;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jdom/output/SAXOutputter;->startElement(Lorg/jdom/Element;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->endElement(Lorg/jdom/Element;)V

    invoke-direct {p0, p2, v0}, Lorg/jdom/output/SAXOutputter;->endPrefixMapping(Lorg/jdom/output/NamespaceStack;I)V

    return-void
.end method

.method private elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/jdom/Content;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jdom/Content;

    invoke-direct {p0, v0, p2}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Invalid element content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/jdom/output/SAXOutputter;->handleError(Lorg/jdom/JDOMException;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p1, Lorg/jdom/Element;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jdom/Element;

    invoke-direct {p0, p1, p2}, Lorg/jdom/output/SAXOutputter;->element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lorg/jdom/CDATA;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/jdom/CDATA;

    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->cdata(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lorg/jdom/Text;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/jdom/Text;

    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lorg/jdom/ProcessingInstruction;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/jdom/ProcessingInstruction;

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->processingInstruction(Lorg/jdom/ProcessingInstruction;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lorg/jdom/Comment;

    if-eqz p2, :cond_5

    check-cast p1, Lorg/jdom/Comment;

    invoke-virtual {p1}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->comment(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of p2, p1, Lorg/jdom/EntityRef;

    if-eqz p2, :cond_6

    check-cast p1, Lorg/jdom/EntityRef;

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->entityRef(Lorg/jdom/EntityRef;)V

    goto :goto_0

    :cond_6
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Invalid element content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/jdom/output/SAXOutputter;->handleError(Lorg/jdom/JDOMException;)V

    :goto_0
    return-void
.end method

.method private endDocument()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in endDocument"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private endElement(Lorg/jdom/Element;)V
    .locals 3

    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in endElement"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private endPrefixMapping(Lorg/jdom/output/NamespaceStack;I)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1}, Lorg/jdom/output/NamespaceStack;->pop()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jdom/JDOMException;

    const-string v0, "Exception in endPrefixMapping"

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method

.method private entityRef(Lorg/jdom/EntityRef;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in entityRef"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private static getAttributeTypeName(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    sget-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private handleError(Lorg/jdom/JDOMException;)V
    .locals 4

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lorg/jdom/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lorg/jdom/JDOMException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lorg/jdom/JDOMException;

    throw p1

    :cond_0
    new-instance v0, Lorg/jdom/JDOMException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    throw p1
.end method

.method private processingInstruction(Lorg/jdom/ProcessingInstruction;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in processingInstruction"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private startDocument()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in startDocument"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startElement(Lorg/jdom/Element;Lorg/xml/sax/Attributes;)V
    .locals 10

    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    if-eqz p2, :cond_0

    invoke-direct {v3, p2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_0
    invoke-direct {v3}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jdom/Attribute;

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getAttributeType()I

    move-result v4

    invoke-static {v4}, Lorg/jdom/output/SAXOutputter;->getAttributeTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jdom/JDOMException;

    const-string v0, "Exception in startElement"

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private startPrefixMapping(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)Lorg/xml/sax/Attributes;
    .locals 7

    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    sget-object v1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    const-string v2, "Exception in startPrefixMapping"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v0}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    invoke-direct {p0, v3, v0}, Lorg/jdom/output/SAXOutputter;->addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, v2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2, v1}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    invoke-direct {p0, v3, v1}, Lorg/jdom/output/SAXOutputter;->addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v3

    :try_start_1
    iget-object v5, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, v2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    invoke-virtual {v0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2, v0}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    invoke-direct {p0, v3, v0}, Lorg/jdom/output/SAXOutputter;->addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v3

    :try_start_2
    iget-object v4, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, v2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    return-object v3
.end method


# virtual methods
.method public createParser()Lorg/xml/sax/XMLReader;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "javax.xml.parsers.SAXParserFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "newSAXParser"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getXMLReader"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "org.apache.xerces.parsers.SAXParser"

    invoke-static {v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    return p1

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    return p1

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getLocator()Lorg/jdom/output/JDOMLocator;
    .locals 2

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jdom/output/JDOMLocator;

    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-direct {v0, v1}, Lorg/jdom/output/JDOMLocator;-><init>(Lorg/xml/sax/Locator;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p1

    return-object p1
.end method

.method public getReportDTDEvents()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    return v0
.end method

.method public getReportNamespaceDeclarations()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    return v0
.end method

.method public output(Ljava/util/List;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    :cond_1
    :goto_0
    return-void
.end method

.method public output(Lorg/jdom/Document;)V
    .locals 3

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->dtdEvents(Lorg/jdom/Document;)V

    :cond_1
    invoke-virtual {p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v2, v1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    instance-of v2, v1, Lorg/jdom/Element;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v1

    new-instance v2, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, v1, v2}, Lorg/jdom/output/SAXOutputter;->element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lorg/jdom/ProcessingInstruction;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/jdom/ProcessingInstruction;

    invoke-direct {p0, v1}, Lorg/jdom/output/SAXOutputter;->processingInstruction(Lorg/jdom/ProcessingInstruction;)V

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lorg/jdom/Comment;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/jdom/Comment;

    invoke-virtual {v1}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jdom/output/SAXOutputter;->comment(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    return-void
.end method

.method public output(Lorg/jdom/Element;)V
    .locals 1

    .line 3
    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    return-void
.end method

.method public outputFragment(Ljava/util/List;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public outputFragment(Lorg/jdom/Content;)V
    .locals 1

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setReportNamespaceDeclarations(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setReportDTDEvents(Z)V

    :goto_0
    return-void

    :cond_3
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    check-cast p2, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V

    goto :goto_2

    :cond_3
    :goto_1
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    :goto_2
    return-void
.end method

.method public setReportDTDEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    return-void
.end method

.method public setReportNamespaceDeclarations(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    return-void
.end method
