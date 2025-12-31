.class public Lorg/jdom/input/DOMBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DOMBuilder.java,v $ $Revision: 1.60 $ $Date: 2007/11/10 05:29:00 $ $Name:  $"


# instance fields
.field private adapterClass:Ljava/lang/String;

.field private factory:Lorg/jdom/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    iput-object p1, p0, Lorg/jdom/input/DOMBuilder;->adapterClass:Ljava/lang/String;

    return-void
.end method

.method private buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_13

    :pswitch_1
    move-object/from16 v2, p1

    check-cast v2, Lorg/w3c/dom/DocumentType;

    invoke-interface {v2}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lorg/jdom/JDOMFactory;->docType(Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/jdom/DocType;->setPublicID(Ljava/lang/String;)Lorg/jdom/DocType;

    invoke-virtual {v2, v4}, Lorg/jdom/DocType;->setSystemID(Ljava/lang/String;)Lorg/jdom/DocType;

    invoke-virtual {v2, v5}, Lorg/jdom/DocType;->setInternalSubset(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v3, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_13

    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    :goto_0
    if-ge v4, v6, :cond_17

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {v0, v7, v1, v2, v5}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_3
    if-eqz p4, :cond_0

    iget-object v2, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v3

    :goto_1
    invoke-interface {v2, v1, v3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_13

    :cond_0
    iget-object v1, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v3

    :goto_2
    invoke-interface {v1, v2, v3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_13

    :pswitch_4
    if-eqz p4, :cond_1

    iget-object v2, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object v3

    goto :goto_2

    :pswitch_5
    iget-object v1, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object v1

    iget-object v3, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    :goto_3
    invoke-interface {v3, v2, v1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_13

    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v3, v1}, Lorg/jdom/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom/CDATA;

    move-result-object v1

    goto :goto_3

    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v3, v1}, Lorg/jdom/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object v1

    goto :goto_3

    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string v8, ""

    if-ltz v7, :cond_2

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_2
    move-object v9, v8

    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    if-nez v2, :cond_3

    sget-object v7, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    goto :goto_5

    :cond_3
    invoke-virtual {v2, v9}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v7

    goto :goto_5

    :cond_4
    invoke-static {v9, v7}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v7

    :goto_5
    iget-object v10, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v10, v3, v7}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz p4, :cond_5

    invoke-virtual {v1, v3}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    goto :goto_6

    :cond_5
    iget-object v7, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v7, v2, v3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    const/4 v10, 0x0

    :goto_7
    const-string v11, "xmlns"

    if-ge v10, v7, :cond_9

    invoke-interface {v2, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Attr;

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v13, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_6

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_6
    move-object v11, v8

    :goto_8
    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v12

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v3, v12}, Lorg/jdom/Element;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;

    goto :goto_9

    :cond_7
    iget-object v11, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v11, v3, v12}, Lorg/jdom/JDOMFactory;->addNamespaceDeclaration(Lorg/jdom/Element;Lorg/jdom/Namespace;)V

    :cond_8
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    :goto_a
    if-ge v9, v7, :cond_15

    invoke-interface {v2, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Attr;

    invoke-interface {v10}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_14

    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_a

    invoke-virtual {v12, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_a
    move-object v14, v8

    :goto_b
    invoke-interface {v10}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    goto/16 :goto_10

    :cond_b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_c

    invoke-static {v14, v10}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v10

    goto/16 :goto_11

    :cond_c
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object v15, v3

    :goto_c
    invoke-virtual {v15}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v15}, Lorg/jdom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v3}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v15}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_e

    :cond_d
    invoke-virtual {v15}, Lorg/jdom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/jdom/Namespace;

    invoke-virtual/range {v16 .. v16}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual/range {v16 .. v16}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual/range {v16 .. v16}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_d

    :cond_f
    invoke-virtual {v15}, Lorg/jdom/Content;->getParentElement()Lorg/jdom/Element;

    move-result-object v15

    if-nez v15, :cond_12

    const/4 v4, 0x0

    move-object/from16 v16, v4

    :goto_e
    if-nez v16, :cond_11

    const-string v4, "attns0"

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    add-int/2addr v6, v5

    const-string v4, "attns"

    .line 1
    invoke-static {v6, v4}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .line 2
    :cond_10
    invoke-static {v4, v10}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v10

    goto :goto_11

    :cond_11
    move-object/from16 v10, v16

    goto :goto_11

    :cond_12
    const/4 v4, 0x0

    const/16 v6, 0x3a

    goto/16 :goto_c

    :cond_13
    :goto_10
    sget-object v10, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    :goto_11
    iget-object v4, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v4, v12, v13, v10}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v4

    iget-object v6, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v6, v3, v4}, Lorg/jdom/JDOMFactory;->setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V

    :cond_14
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x3a

    goto/16 :goto_a

    :cond_15
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_17

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_16

    invoke-direct {v0, v6, v1, v3, v7}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_17
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build(Lorg/w3c/dom/Document;)Lorg/jdom/Document;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    return-object v0
.end method

.method public build(Lorg/w3c/dom/Element;)Lorg/jdom/Element;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    invoke-virtual {v0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object p1

    return-object p1
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-void
.end method
