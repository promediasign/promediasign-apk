.class public final Lorg/apache/poi/util/StaxHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/util/StaxHelper;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public static newXMLEventFactory()Lorg/apache/poi/javax/xml/stream/XMLEventFactory;
    .locals 1

    invoke-static {}, Lorg/apache/poi/javax/xml/stream/XMLEventFactory;->newFactory()Lorg/apache/poi/javax/xml/stream/XMLEventFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newXMLInputFactory()Lorg/apache/poi/javax/xml/stream/XMLInputFactory;
    .locals 3

    invoke-static {}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->newFactory()Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    move-result-object v0

    const-string v1, "org.apache.poi.javax.xml.stream.isNamespaceAware"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Lorg/apache/poi/javax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    const-string v1, "org.apache.poi.javax.xml.stream.isValidating"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Lorg/apache/poi/javax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    const-string v1, "org.apache.poi.javax.xml.stream.supportDTD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Lorg/apache/poi/javax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    const-string v1, "org.apache.poi.javax.xml.stream.isSupportingExternalEntities"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Lorg/apache/poi/javax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static newXMLOutputFactory()Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;
    .locals 3

    invoke-static {}, Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;->newFactory()Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;

    move-result-object v0

    const-string v1, "org.apache.poi.javax.xml.stream.isRepairingNamespaces"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static trySetProperty(Lorg/apache/poi/javax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p2, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Cannot set StAX property because outdated StAX parser in classpath"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object p2, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "StAX Property unsupported"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private static trySetProperty(Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;Ljava/lang/String;Z)V
    .locals 6

    .line 2
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p2, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Cannot set StAX property because outdated StAX parser in classpath"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object p2, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "StAX Property unsupported"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
