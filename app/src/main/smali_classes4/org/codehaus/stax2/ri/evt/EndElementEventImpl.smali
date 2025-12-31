.class public Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;
.super Lorg/codehaus/stax2/ri/evt/BaseEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/events/EndElement;


# instance fields
.field protected final mName:Lorg/apache/poi/javax/xml/namespace/QName;

.field protected final mNamespaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/xml/stream/Location;",
            "Lorg/apache/poi/javax/xml/namespace/QName;",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mName:Lorg/apache/poi/javax/xml/namespace/QName;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mNamespaces:Ljava/util/ArrayList;

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p1, 0x0

    goto :goto_1

    :goto_3
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 5

    .line 2
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mName:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mNamespaces:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p2, v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->constructNamespace(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mNamespaces:Ljava/util/ArrayList;

    :goto_1
    return-void
.end method


# virtual methods
.method public asEndElement()Lorg/apache/poi/javax/xml/stream/events/EndElement;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/apache/poi/javax/xml/stream/events/EndElement;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/EndElement;

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/EndElement;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getEventType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mName:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mNamespaces:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyIterator;->getInstance()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEndElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2

    :try_start_0
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mName:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;->mName:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->throwFromIOE(Ljava/io/IOException;)V

    :goto_2
    return-void
.end method

.method public writeUsing(Lorg/codehaus/stax2/XMLStreamWriter2;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method
