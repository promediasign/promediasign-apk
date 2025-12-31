.class public Lorg/codehaus/stax2/ri/Stax2FilteredStreamReader;
.super Lorg/codehaus/stax2/util/StreamReader2Delegate;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamConstants;


# instance fields
.field final mFilter:Lorg/apache/poi/javax/xml/stream/StreamFilter;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/StreamFilter;)V
    .locals 0

    invoke-static {p1}, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->wrapIfNecessary(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/util/StreamReader2Delegate;-><init>(Lorg/codehaus/stax2/XMLStreamReader2;)V

    iput-object p2, p0, Lorg/codehaus/stax2/ri/Stax2FilteredStreamReader;->mFilter:Lorg/apache/poi/javax/xml/stream/StreamFilter;

    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/util/StreamReader2Delegate;->_delegate2:Lorg/codehaus/stax2/XMLStreamReader2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2FilteredStreamReader;->mFilter:Lorg/apache/poi/javax/xml/stream/StreamFilter;

    invoke-interface {v1, p0}, Lorg/apache/poi/javax/xml/stream/StreamFilter;->accept(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    :goto_0
    return v0
.end method

.method public nextTag()I
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/util/StreamReader2Delegate;->_delegate2:Lorg/codehaus/stax2/XMLStreamReader2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2FilteredStreamReader;->mFilter:Lorg/apache/poi/javax/xml/stream/StreamFilter;

    invoke-interface {v1, p0}, Lorg/apache/poi/javax/xml/stream/StreamFilter;->accept(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method
