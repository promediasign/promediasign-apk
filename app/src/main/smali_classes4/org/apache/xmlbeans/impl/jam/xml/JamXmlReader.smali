.class Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/xml/JamXmlElements;


# instance fields
.field private mCache:Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;

.field private mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

.field private mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;Ljava/io/InputStream;Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->newInstance()Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;Ljava/io/Reader;Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->newInstance()Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null cache"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mCache:Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null ctx"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertCurrentBoolean(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private assertCurrentInt(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private assertCurrentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    return-object v0
.end method

.method private assertEnd(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isEndElement()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string v0, "expected to get a </"

    .line 20
    .line 21
    const-string v1, ">, "

    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->error(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private assertStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string v0, "expected to get a <"

    .line 20
    .line 21
    const-string v1, ">, "

    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->error(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private checkCurrentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private error(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "<"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    .line 12
    .line 13
    invoke-interface {v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "> line:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    .line 33
    .line 34
    invoke-interface {v3}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Lorg/apache/poi/javax/xml/stream/Location;->getLineNumber()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, " col:"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuffer;

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    .line 63
    .line 64
    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/Location;->getColumnNumber()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "]"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    .line 88
    .line 89
    const-string v2, ":\n "

    .line 90
    .line 91
    invoke-static {p1, v2}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {v1, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1
.end method

.method private getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nextElement()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of file"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAnnotatedElement(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;)V
    .locals 9

    :goto_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "annotation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    const-string v0, "name"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;->addLiteralAnnotation(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;

    move-result-object v2

    :goto_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "annotation-value"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "type"

    invoke-direct {p0, v5}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/jam/JClass;->isArrayType()Z

    move-result v6

    const-string v7, "value"

    if-eqz v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v7}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v2, v3, v7, v5}, Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;->setSimpleValue(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V

    goto :goto_3

    :cond_1
    invoke-direct {p0, v7}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6, v5}, Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;->setSimpleValue(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V

    :goto_3
    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;->createComment()Lorg/apache/xmlbeans/impl/jam/mutable/MComment;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mIn:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/jam/mutable/MComment;->setText(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    :cond_4
    const-string v0, "source-position"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readSourcePosition(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;)V

    :cond_5
    return-void
.end method

.method private readClass()V
    .locals 5

    const-string v0, "class"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    const-string v1, "name"

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->mCache:Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;->createClassToBuild(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/mutable/MClass;

    move-result-object v1

    const-string v2, "is-interface"

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->setIsInterface(Z)V

    const-string v2, "modifiers"

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/jam/mutable/MMember;->setModifiers(I)V

    const-string v2, "superclass"

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->checkCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->setSuperclass(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v2, "interface"

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->checkCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addInterface(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    const-string v2, "field"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readField(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V

    goto :goto_2

    :cond_3
    :goto_3
    const-string v2, "constructor"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readConstructor(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V

    goto :goto_3

    :cond_4
    :goto_4
    const-string v2, "method"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readMethod(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V

    goto :goto_4

    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readAnnotatedElement(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    check-cast v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ClassImpl;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ClassImpl;->setState(I)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    return-void
.end method

.method private readConstructor(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V
    .locals 1

    const-string v0, "constructor"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewConstructor()Lorg/apache/xmlbeans/impl/jam/mutable/MConstructor;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readInvokableContents(Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    return-void
.end method

.method private readField(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V
    .locals 2

    const-string v0, "field"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewField()Lorg/apache/xmlbeans/impl/jam/mutable/MField;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    const-string v1, "name"

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setSimpleName(Ljava/lang/String;)V

    const-string v1, "modifiers"

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MMember;->setModifiers(I)V

    const-string v1, "type"

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MField;->setType(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readAnnotatedElement(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    return-void
.end method

.method private readInvokableContents(Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;)V
    .locals 3

    const-string v0, "modifiers"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MMember;->setModifiers(I)V

    :goto_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parameter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;->addNewParameter()Lorg/apache/xmlbeans/impl/jam/mutable/MParameter;

    move-result-object v0

    const-string v2, "name"

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setSimpleName(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/jam/mutable/MParameter;->setType(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readAnnotatedElement(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;)V

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readAnnotatedElement(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;)V

    return-void
.end method

.method private readMethod(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V
    .locals 2

    const-string v0, "method"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewMethod()Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    const-string v1, "name"

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setSimpleName(Ljava/lang/String;)V

    const-string v1, "return-type"

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;->setReturnType(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readInvokableContents(Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    return-void
.end method

.method private readSourcePosition(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;)V
    .locals 3

    const-string v0, "source-position"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->createSourcePosition()Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "line"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;->setLine(I)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "column"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;->setColumn(I)V

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source-uri"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;->setSourceURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    const-string v0, "jam-service"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertStart(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->nextElement()V

    :goto_0
    const-string v1, "class"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->readClass()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->assertEnd(Ljava/lang/String;)V

    return-void
.end method
