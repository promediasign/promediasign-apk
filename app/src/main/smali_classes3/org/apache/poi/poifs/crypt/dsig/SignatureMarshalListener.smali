.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;


# instance fields
.field signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

.field target:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/w3c/dom/events/EventTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->target:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static setListener(Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 2

    const-string v0, "DOMSubtreeModified"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleElement(Lorg/w3c/dom/Element;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->target:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "Id"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1, v1, v3}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setListener(Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;Z)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mdssi"

    const-string v4, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p1, v4, v1}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "xmlns:mdssi"

    invoke-interface {p1, v4, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setPrefix(Lorg/w3c/dom/Node;)V

    invoke-static {v0, p0, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setListener(Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 1

    instance-of v0, p1, Lorg/w3c/dom/events/MutationEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/w3c/dom/events/MutationEvent;

    invoke-interface {p1}, Lorg/w3c/dom/events/MutationEvent;->getTarget()Lorg/w3c/dom/events/EventTarget;

    move-result-object p1

    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->handleElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public setEventTarget(Lorg/w3c/dom/events/EventTarget;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->target:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setPrefix(Lorg/w3c/dom/Node;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setPrefix(Lorg/w3c/dom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method
