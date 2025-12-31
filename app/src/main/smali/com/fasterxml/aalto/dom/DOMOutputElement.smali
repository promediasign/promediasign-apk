.class public Lcom/fasterxml/aalto/dom/DOMOutputElement;
.super Lcom/fasterxml/aalto/dom/OutputElementBase;
.source "SourceFile"


# instance fields
.field private _defaultNsSet:Z

.field private _element:Lorg/w3c/dom/Element;

.field private _parent:Lcom/fasterxml/aalto/dom/DOMOutputElement;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/aalto/dom/OutputElementBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_parent:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_element:Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_nsMapping:Lcom/fasterxml/aalto/dom/BijectiveNsMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_nsMapShared:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_defaultNsURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    iput-boolean v1, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_defaultNsSet:Z

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/aalto/dom/DOMOutputElement;Lorg/w3c/dom/Element;Lcom/fasterxml/aalto/dom/BijectiveNsMap;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/fasterxml/aalto/dom/OutputElementBase;-><init>(Lcom/fasterxml/aalto/dom/OutputElementBase;Lcom/fasterxml/aalto/dom/BijectiveNsMap;)V

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_parent:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    iput-object p2, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_element:Lorg/w3c/dom/Element;

    iput-object p3, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_nsMapping:Lcom/fasterxml/aalto/dom/BijectiveNsMap;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_nsMapShared:Z

    iget-object p3, p1, Lcom/fasterxml/aalto/dom/OutputElementBase;->_defaultNsURI:Ljava/lang/String;

    iput-object p3, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_defaultNsURI:Ljava/lang/String;

    iget-object p1, p1, Lcom/fasterxml/aalto/dom/OutputElementBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    iput-boolean p2, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_defaultNsSet:Z

    return-void
.end method

.method public static createRoot()Lcom/fasterxml/aalto/dom/DOMOutputElement;
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/dom/DOMOutputElement;

    invoke-direct {v0}, Lcom/fasterxml/aalto/dom/DOMOutputElement;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appendNode(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_element:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_element:Lorg/w3c/dom/Element;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public createAndAttachChild(Lorg/w3c/dom/Element;)Lcom/fasterxml/aalto/dom/DOMOutputElement;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_element:Lorg/w3c/dom/Element;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->createChild(Lorg/w3c/dom/Element;)Lcom/fasterxml/aalto/dom/DOMOutputElement;

    move-result-object p1

    return-object p1
.end method

.method public createChild(Lorg/w3c/dom/Element;)Lcom/fasterxml/aalto/dom/DOMOutputElement;
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/dom/DOMOutputElement;

    iget-object v1, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_nsMapping:Lcom/fasterxml/aalto/dom/BijectiveNsMap;

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/aalto/dom/DOMOutputElement;-><init>(Lcom/fasterxml/aalto/dom/DOMOutputElement;Lorg/w3c/dom/Element;Lcom/fasterxml/aalto/dom/BijectiveNsMap;)V

    return-object v0
.end method

.method public getParent()Lcom/fasterxml/aalto/dom/DOMOutputElement;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_parent:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    return-object v0
.end method

.method public isRoot()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_parent:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDefaultNsUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/OutputElementBase;->_defaultNsURI:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/aalto/dom/DOMOutputElement;->_defaultNsSet:Z

    return-void
.end method
