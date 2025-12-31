.class public Lorg/jdom/input/SAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXHandler.java,v $ $Revision: 1.73 $ $Date: 2007/11/10 05:29:00 $ $Name:  $"

.field private static final attrNameToTypeMap:Ljava/util/Map;


# instance fields
.field private atRoot:Z

.field private currentElement:Lorg/jdom/Element;

.field private declaredNamespaces:Ljava/util/List;

.field private document:Lorg/jdom/Document;

.field private entityDepth:I

.field private expand:Z

.field private externalEntities:Ljava/util/Map;

.field private factory:Lorg/jdom/JDOMFactory;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private inCDATA:Z

.field private inDTD:Z

.field private inInternalSubset:Z

.field private internalSubset:Ljava/lang/StringBuffer;

.field private locator:Lorg/xml/sax/Locator;

.field private previousCDATA:Z

.field private suppress:Z

.field private textBuffer:Lorg/jdom/input/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "CDATA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "IDREF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "IDREFS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ENTITY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ENTITIES"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "NMTOKEN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "NMTOKENS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "NOTATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ENUMERATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom/JDOMFactory;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    iput v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    new-instance v2, Lorg/jdom/input/TextBuffer;

    invoke-direct {v2}, Lorg/jdom/input/TextBuffer;-><init>()V

    iput-object v2, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {p1}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    goto :goto_0

    :goto_1
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    return-void
.end method

.method private appendExternalId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x22

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " SYSTEM "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method private static getAttributeType(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x28

    if-ne p0, v1, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private transferNamespaces(Lorg/jdom/Element;)V
    .locals 3

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/jdom/Element;->addNamespaceDeclaration(Lorg/jdom/Namespace;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ATTLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p1, 0x22

    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    if-eqz p4, :cond_1

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p4, :cond_2

    const-string p2, "#FIXED"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p3, " \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom/input/TextBuffer;->append([CII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public comment([CII)V
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, "  <!--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "-->\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    if-nez p1, :cond_3

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-interface {p1, v0}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object p3

    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object p2

    iget-object p3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p3, v0}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object p3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ">\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endCDATA()V
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    return-void
.end method

.method public endDTD()V
    .locals 2

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v0}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/DocType;->setInternalSubset(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p2, p1, Lorg/jdom/Document;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    check-cast p1, Lorg/jdom/Element;

    .line 28
    .line 29
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 33
    .line 34
    const-string p3, "Ill-formed XML document (missing opening tag for "

    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    :cond_0
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    :cond_1
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public flushCharacters()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->isAllWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->clear()V

    return-void
.end method

.method public flushCharacters(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom/CDATA;

    move-result-object p1

    :goto_1
    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object p1

    goto :goto_1
.end method

.method public getCurrentElement()Lorg/jdom/Element;
    .locals 2

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Ill-formed XML document (multiple root elements detected)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    return-object v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jdom/input/SAXHandler;->characters([CII)V

    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!NOTATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-interface {v0, p1, p2}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object p1

    :goto_0
    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, p2}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public pushElement(Lorg/jdom/Element;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v0, p1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    :goto_0
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    return-void
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    return-void
.end method

.method public startCDATA()V
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdom/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    return-void
.end method

.method public startDocument()V
    .locals 2

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jdom/Document;->setBaseURI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-boolean v4, v0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x3a

    const/4 v7, 0x0

    if-nez v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v4

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v2, p1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object/from16 v2, p1

    move-object v8, v4

    :goto_3
    invoke-static {v8, v2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v2

    iget-object v5, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v5, v1, v2}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, v0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-direct {v0, v1}, Lorg/jdom/input/SAXHandler;->transferNamespaces(Lorg/jdom/Element;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    iget-boolean v2, v0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v2, v1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    iput-boolean v7, v0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual/range {p0 .. p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    :goto_4
    iput-object v1, v0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_14

    invoke-interface {v3, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "xmlns"

    if-nez v10, :cond_9

    const-string v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto/16 :goto_d

    :cond_7
    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-lez v10, :cond_8

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_8
    move-object v12, v4

    :goto_6
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_9
    move-object v12, v4

    :cond_a
    :goto_7
    invoke-interface {v3, v5}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jdom/input/SAXHandler;->getAttributeType(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v5}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string v11, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_d

    :cond_b
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    move-object v14, v1

    :goto_8
    invoke-virtual {v14}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v15

    invoke-virtual {v15}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v14}, Lorg/jdom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual {v1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v15

    invoke-virtual {v15}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual {v14}, Lorg/jdom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_b

    :cond_c
    invoke-virtual {v14}, Lorg/jdom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/jdom/Namespace;

    invoke-virtual/range {v16 .. v16}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual/range {v16 .. v16}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {v16 .. v16}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_d
    invoke-virtual/range {v16 .. v16}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x3a

    goto :goto_9

    :cond_e
    invoke-virtual {v14}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jdom/Attribute;

    invoke-virtual {v15}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v15

    invoke-virtual {v15}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v15}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v15}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_f
    invoke-virtual {v15}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual {v14}, Lorg/jdom/Content;->getParentElement()Lorg/jdom/Element;

    move-result-object v14

    if-nez v14, :cond_11

    :goto_b
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "attns0"

    move-object v12, v6

    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    add-int/lit8 v6, v6, 0x1

    const-string v7, "attns"

    .line 1
    invoke-static {v6, v7}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    :cond_11
    const/16 v6, 0x3a

    const/4 v7, 0x0

    goto/16 :goto_8

    .line 2
    :cond_12
    invoke-static {v12, v13}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v6

    iget-object v7, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v7, v8, v10, v9, v6}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v6

    iget-object v7, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v7, v1, v6}, Lorg/jdom/JDOMFactory;->setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V

    :cond_13
    :goto_d
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x3a

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_14
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    iget-boolean v2, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v2, :cond_4

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-nez v0, :cond_4

    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    iget-boolean v3, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    iget-object v3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v3, p1, v2, v0}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object p1

    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    :cond_3
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, " NDATA "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
