.class public final Lcom/fasterxml/aalto/evt/EventAllocatorImpl;
.super Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;
.source "SourceFile"


# static fields
.field static final sStdInstance:Lcom/fasterxml/aalto/evt/EventAllocatorImpl;


# instance fields
.field protected final _cfgPreserveLocation:Z

.field protected _lastLocation:Lorg/apache/poi/javax/xml/stream/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->sStdInstance:Lcom/fasterxml/aalto/evt/EventAllocatorImpl;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->_lastLocation:Lorg/apache/poi/javax/xml/stream/Location;

    iput-boolean p1, p0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->_cfgPreserveLocation:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/fasterxml/aalto/evt/EventAllocatorImpl;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->sStdInstance:Lcom/fasterxml/aalto/evt/EventAllocatorImpl;

    return-object v0
.end method

.method public static getFastInstance()Lcom/fasterxml/aalto/evt/EventAllocatorImpl;
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allocate(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/fasterxml/aalto/evt/IncompleteEvent;->instance()Lcom/fasterxml/aalto/evt/IncompleteEvent;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/codehaus/stax2/ri/evt/Stax2EventAllocatorImpl;->allocate(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->_cfgPreserveLocation:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->_lastLocation:Lorg/apache/poi/javax/xml/stream/Location;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->_lastLocation:Lorg/apache/poi/javax/xml/stream/Location;

    :cond_1
    return-object v0
.end method

.method public newInstance()Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;

    iget-boolean v1, p0, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->_cfgPreserveLocation:Z

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;-><init>(Z)V

    return-object v0
.end method
