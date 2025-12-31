.class public Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/PropFindRequestFieldParser;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestedFields(Ljava/io/InputStream;)Lio/milton/http/webdav/PropertiesRequest;
    .locals 6

    const-string v0, "exception parsing request body"

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_0
    new-instance v2, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v2, v4, v3}, Lio/milton/common/StreamUtils;->readTo(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)J

    invoke-virtual {v2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length v2, p1

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    const-string v5, "http://xml.org/sax/features/external-parameter-entities"

    invoke-interface {p1, v5, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v5, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p1, v5, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    new-instance v3, Lio/milton/http/webdav/PropFindSaxHandler;

    invoke-direct {v3}, Lio/milton/http/webdav/PropFindSaxHandler;-><init>()V

    invoke-interface {p1, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v3}, Lio/milton/http/webdav/PropFindSaxHandler;->isAllProp()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lio/milton/http/webdav/PropertiesRequest;

    invoke-direct {p1}, Lio/milton/http/webdav/PropertiesRequest;-><init>()V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lio/milton/http/webdav/PropFindSaxHandler;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_0
    :try_start_2
    sget-object v2, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;->log:Lorg/slf4j/Logger;

    :goto_1
    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_2
    sget-object v2, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;->log:Lorg/slf4j/Logger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_3
    sget-object v0, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception parsing PROPFIND request fields. Returning empty property set"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    invoke-static {v1}, Lio/milton/http/webdav/PropertiesRequest;->toProperties(Ljava/util/Set;)Lio/milton/http/webdav/PropertiesRequest;

    move-result-object p1

    return-object p1
.end method
