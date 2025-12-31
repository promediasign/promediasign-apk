.class public Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;
.super Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/stax2/XMLStreamReader2;
.implements Lorg/codehaus/stax2/DTDInfo;


# instance fields
.field protected _depth:I

.field protected _typedContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;-><init>(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->_depth:I

    return-void
.end method

.method public static wrapIfNecessary(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/codehaus/stax2/XMLStreamReader2;
    .locals 1

    instance-of v0, p0, Lorg/codehaus/stax2/XMLStreamReader2;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/codehaus/stax2/XMLStreamReader2;

    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;

    invoke-direct {v0, p0}, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;-><init>(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method


# virtual methods
.method public getDTDInfo()Lorg/codehaus/stax2/DTDInfo;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getEventType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getDTDInternalSubset()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getEventType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDRootName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getElementText()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->_depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->_depth:I

    :cond_1
    return-object v2
.end method

.method public getNonTransientNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->_typedContent:Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->_typedContent:Ljava/lang/String;

    return v1

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->next()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v1, p0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->_depth:I

    add-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->_depth:I

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    iget v1, p0, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->_depth:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
