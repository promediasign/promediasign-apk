.class public final Lorg/apache/poi/util/XMLHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/util/XMLHelper;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/XMLHelper;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 4

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    const-string v2, "http://xml.org/sax/features/external-general-entities"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    const-string v2, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    const-string v2, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/poi/util/XMLHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Cannot set SAX feature because outdated XML parser in classpath"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p2, Lorg/apache/poi/util/XMLHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "SAX Feature unsupported"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
