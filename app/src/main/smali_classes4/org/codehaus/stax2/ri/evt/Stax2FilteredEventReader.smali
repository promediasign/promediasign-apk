.class public Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/stax2/XMLEventReader2;
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamConstants;


# instance fields
.field final mFilter:Lorg/apache/poi/javax/xml/stream/EventFilter;

.field final mReader:Lorg/codehaus/stax2/XMLEventReader2;


# direct methods
.method public constructor <init>(Lorg/codehaus/stax2/XMLEventReader2;Lorg/apache/poi/javax/xml/stream/EventFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mFilter:Lorg/apache/poi/javax/xml/stream/EventFilter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->close()V

    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mFilter:Lorg/apache/poi/javax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/xml/stream/EventFilter;->accept(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public nextTag()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->nextTag()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mFilter:Lorg/apache/poi/javax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/xml/stream/EventFilter;->accept(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mFilter:Lorg/apache/poi/javax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/xml/stream/EventFilter;->accept(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;->mReader:Lorg/codehaus/stax2/XMLEventReader2;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
