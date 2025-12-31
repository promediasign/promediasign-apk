.class public Lorg/jdom/output/DOMOutputter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DOMOutputter.java,v $ $Revision: 1.43 $ $Date: 2007/11/10 05:29:01 $ $Name:  $"

.field private static final DEFAULT_ADAPTER_CLASS:Ljava/lang/String; = "org.jdom.adapters.XercesDOMAdapter"


# instance fields
.field private adapterClass:Ljava/lang/String;

.field private forceNamespaceAware:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/output/DOMOutputter;->adapterClass:Ljava/lang/String;

    return-void
.end method

.method private createDOMDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/DOMOutputter;->adapterClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v0, Lorg/jdom/adapters/JAXPDOMAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    const-class v0, Lorg/jdom/adapters/XercesDOMAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    new-instance p1, Lorg/jdom/JDOMException;

    const-string v0, "No JAXP or default parser available"

    invoke-direct {p1, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "xmlns:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "xmlns"

    :goto_0
    return-object p0
.end method

.method private output(Lorg/jdom/Attribute;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Attr;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_1
    new-instance v0, Lorg/jdom/JDOMException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Exception outputting Attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;
    .locals 9

    .line 3
    :try_start_0
    invoke-virtual {p3}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v1

    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v4

    sget-object v5, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v4, v5, :cond_3

    if-ne v4, v2, :cond_2

    const-string v2, ""

    invoke-virtual {p3, v2}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v4}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3, v4}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    invoke-static {v4}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Namespace;

    invoke-virtual {v4}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Attribute;

    invoke-direct {p0, v4, p2}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Attribute;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Attr;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-virtual {v4}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v5

    sget-object v6, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v5, v6, :cond_6

    sget-object v7, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v5, v7, :cond_6

    invoke-virtual {v5}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v5}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    :cond_6
    invoke-virtual {v4}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v5

    if-ne v5, v6, :cond_8

    iget-boolean v5, p0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v5, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v6, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/jdom/Element;

    if-eqz v4, :cond_a

    check-cast v3, Lorg/jdom/Element;

    invoke-direct {p0, v3, p2, p3}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;

    move-result-object v3

    :goto_4
    invoke-interface {v1, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_a
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_b

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    goto :goto_4

    :cond_b
    instance-of v4, v3, Lorg/jdom/CDATA;

    if-eqz v4, :cond_c

    check-cast v3, Lorg/jdom/CDATA;

    invoke-virtual {v3}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v3

    goto :goto_4

    :cond_c
    instance-of v4, v3, Lorg/jdom/Text;

    if-eqz v4, :cond_d

    check-cast v3, Lorg/jdom/Text;

    invoke-virtual {v3}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    goto :goto_4

    :cond_d
    instance-of v4, v3, Lorg/jdom/Comment;

    if-eqz v4, :cond_e

    check-cast v3, Lorg/jdom/Comment;

    invoke-virtual {v3}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v3

    goto :goto_4

    :cond_e
    instance-of v4, v3, Lorg/jdom/ProcessingInstruction;

    if-eqz v4, :cond_f

    check-cast v3, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {v3}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v3

    goto :goto_4

    :cond_f
    instance-of v4, v3, Lorg/jdom/EntityRef;

    if-eqz v4, :cond_10

    check-cast v3, Lorg/jdom/EntityRef;

    invoke-virtual {v3}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v3

    goto :goto_4

    :cond_10
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Element contained content with type:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_11
    :goto_5
    invoke-virtual {p3}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result p2

    if-le p2, v0, :cond_12

    invoke-virtual {p3}, Lorg/jdom/output/NamespaceStack;->pop()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_12
    return-object v1

    :goto_6
    new-instance p3, Lorg/jdom/JDOMException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Exception outputting Element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public getForceNamespaceAware()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    return v0
.end method

.method public output(Lorg/jdom/Document;)Lorg/w3c/dom/Document;
    .locals 4

    .line 2
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jdom/output/DOMOutputter;->createDOMDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/jdom/Element;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/jdom/Element;

    invoke-direct {p0, v2, v1, v0}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;

    move-result-object v2

    :goto_2
    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/jdom/Comment;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/jdom/Comment;

    invoke-virtual {v2}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v2

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {v2}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v2

    goto :goto_2

    :cond_3
    instance-of v3, v2, Lorg/jdom/DocType;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/jdom/JDOMException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Document contained top-level content with type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-object v1

    :goto_3
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception outputting Document"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setForceNamespaceAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    return-void
.end method
