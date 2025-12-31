.class public Lio/milton/http/webdav/DefaultPropPatchParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/PropPatchRequestParser;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/DefaultPropPatchParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/DefaultPropPatchParser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseContent([B)Lio/milton/http/webdav/PropPatchParseResult;
    .locals 5

    array-length v0, p1

    if-lez v0, :cond_0

    sget-object v0, Lio/milton/http/webdav/DefaultPropPatchParser;->log:Lorg/slf4j/Logger;

    const-string v1, "processing content"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v4, 0x1

    invoke-interface {p1, v2, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    new-instance v2, Lio/milton/http/webdav/PropPatchSaxHandler;

    invoke-direct {v2}, Lio/milton/http/webdav/PropPatchSaxHandler;-><init>()V

    invoke-interface {p1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "toset: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/milton/http/webdav/PropPatchSaxHandler;->getAttributesToSet()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance p1, Lio/milton/http/webdav/PropPatchParseResult;

    invoke-virtual {v2}, Lio/milton/http/webdav/PropPatchSaxHandler;->getAttributesToSet()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2}, Lio/milton/http/webdav/PropPatchSaxHandler;->getAttributesToRemove()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/milton/http/webdav/PropPatchParseResult;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object p1

    :cond_0
    sget-object p1, Lio/milton/http/webdav/DefaultPropPatchParser;->log:Lorg/slf4j/Logger;

    const-string v0, "empty content"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance p1, Lio/milton/http/webdav/PropPatchParseResult;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p1, v0, v1}, Lio/milton/http/webdav/PropPatchParseResult;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object p1
.end method


# virtual methods
.method public getRequestedFields(Ljava/io/InputStream;)Lio/milton/http/webdav/PropPatchParseResult;
    .locals 3

    sget-object v0, Lio/milton/http/webdav/DefaultPropPatchParser;->log:Lorg/slf4j/Logger;

    const-string v1, "getRequestedFields"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lio/milton/common/StreamUtils;->readTo(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)J

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/milton/http/webdav/DefaultPropPatchParser;->parseContent([B)Lio/milton/http/webdav/PropPatchParseResult;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/milton/common/ReadingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/common/WritingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
