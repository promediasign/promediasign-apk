.class public final Lcom/fasterxml/aalto/evt/EventReaderImpl;
.super Lorg/codehaus/stax2/ri/Stax2EventReaderImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;Lorg/codehaus/stax2/XMLStreamReader2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codehaus/stax2/ri/Stax2EventReaderImpl;-><init>(Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;Lorg/codehaus/stax2/XMLStreamReader2;)V

    return-void
.end method


# virtual methods
.method public getErrorDesc(II)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public reportProblem(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/impl/StreamExceptionBase;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/aalto/impl/StreamExceptionBase;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method
