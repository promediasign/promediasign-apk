.class public abstract Lorg/codehaus/stax2/util/StreamReader2Delegate;
.super Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/stax2/XMLStreamReader2;


# instance fields
.field protected _delegate2:Lorg/codehaus/stax2/XMLStreamReader2;


# direct methods
.method public constructor <init>(Lorg/codehaus/stax2/XMLStreamReader2;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;-><init>(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    iput-object p1, p0, Lorg/codehaus/stax2/util/StreamReader2Delegate;->_delegate2:Lorg/codehaus/stax2/XMLStreamReader2;

    return-void
.end method


# virtual methods
.method public getDTDInfo()Lorg/codehaus/stax2/DTDInfo;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/util/StreamReader2Delegate;->_delegate2:Lorg/codehaus/stax2/XMLStreamReader2;

    invoke-interface {v0}, Lorg/codehaus/stax2/XMLStreamReader2;->getDTDInfo()Lorg/codehaus/stax2/DTDInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNonTransientNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/util/StreamReader2Delegate;->_delegate2:Lorg/codehaus/stax2/XMLStreamReader2;

    invoke-interface {v0}, Lorg/codehaus/stax2/XMLStreamReader2;->getNonTransientNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public setParent(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->setParent(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    check-cast p1, Lorg/codehaus/stax2/XMLStreamReader2;

    iput-object p1, p0, Lorg/codehaus/stax2/util/StreamReader2Delegate;->_delegate2:Lorg/codehaus/stax2/XMLStreamReader2;

    return-void
.end method
