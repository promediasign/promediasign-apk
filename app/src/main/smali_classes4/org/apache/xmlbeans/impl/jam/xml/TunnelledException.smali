.class public Lorg/apache/xmlbeans/impl/jam/xml/TunnelledException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private mXSE:Lorg/apache/poi/javax/xml/stream/XMLStreamException;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/XMLStreamException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/xml/TunnelledException;->mXSE:Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    return-void
.end method


# virtual methods
.method public getXMLStreamException()Lorg/apache/poi/javax/xml/stream/XMLStreamException;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/TunnelledException;->mXSE:Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    return-object v0
.end method
