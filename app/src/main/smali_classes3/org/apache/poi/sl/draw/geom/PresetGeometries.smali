.class public Lorg/apache/poi/sl/draw/geom/PresetGeometries;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/apache/poi/sl/draw/geom/CustomGeometry;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BINDING_PACKAGE:Ljava/lang/String; = "org.apache.poi.sl.draw.binding"

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field protected static _inst:Lorg/apache/poi/sl/draw/geom/PresetGeometries;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public static convertCustomGeometry(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 4

    :try_start_0
    const-string v0, "org.apache.poi.sl.draw.binding"

    invoke-static {v0}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v0

    const-class v1, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    invoke-interface {v0, p0, v1}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-virtual {p0}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>(Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;)V
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to parse single custom geometry"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x7

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    .locals 4

    const-class v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->_inst:Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v2, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    const-string v3, "presetShapeDefinitions.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->init(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sput-object v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->_inst:Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_1
    sget-object v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->_inst:Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init(Ljava/io/InputStream;)V
    .locals 8

    .line 1
    new-instance v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;-><init>(Lorg/apache/poi/sl/draw/geom/PresetGeometries;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/apache/poi/util/StaxHelper;->newXMLInputFactory()Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->createFilteredReader(Lorg/apache/poi/javax/xml/stream/XMLEventReader;Lorg/apache/poi/javax/xml/stream/EventFilter;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    .line 19
    .line 20
    .line 21
    const-string v1, "org.apache.poi.sl.draw.binding"

    .line 22
    .line 23
    invoke-static {v1}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lorg/apache/poi/javax/xml/stream/events/StartElement;

    .line 42
    .line 43
    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/events/StartElement;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-class v3, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    .line 52
    .line 53
    invoke-interface {v1, p1, v3}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Lorg/apache/poi/javax/xml/stream/XMLEventReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    sget-object v4, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->LOG:Lorg/apache/poi/util/POILogger;

    .line 70
    .line 71
    const-string v5, "Duplicate definition of "

    .line 72
    .line 73
    invoke-static {v5, v2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const/4 v6, 0x1

    .line 78
    new-array v6, v6, [Ljava/lang/Object;

    .line 79
    .line 80
    const/4 v7, 0x0

    .line 81
    aput-object v5, v6, v7

    .line 82
    .line 83
    const/4 v5, 0x5

    .line 84
    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    new-instance v4, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    .line 88
    .line 89
    invoke-direct {v4, v3}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>(Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method
