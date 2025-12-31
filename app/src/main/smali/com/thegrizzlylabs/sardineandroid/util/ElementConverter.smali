.class public abstract Lcom/thegrizzlylabs/sardineandroid/util/ElementConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static read(Lorg/simpleframework/xml/stream/InputNode;)Lorg/w3c/dom/Element;
    .locals 4

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/InputNode;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/InputNode;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    return-object v0
.end method

.method public static write(Lorg/simpleframework/xml/stream/OutputNode;Lorg/w3c/dom/Element;)V
    .locals 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/simpleframework/xml/stream/NamespaceMap;->setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/OutputNode;->commit()V

    return-void
.end method
