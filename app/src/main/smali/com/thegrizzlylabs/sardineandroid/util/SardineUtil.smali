.class public abstract Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATETIME_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_DATE_FORMATS:[Ljava/lang/String;

.field private static final factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "EEEEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v6, "EEE MMMM d HH:mm:ss yyyy"

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    const-string v4, "EEE MMM dd HH:mm:ss zzz yyyy"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->SUPPORTED_DATE_FORMATS:[Ljava/lang/String;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    sput-object v1, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->SUPPORTED_DATE_FORMATS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->DATETIME_FORMATS:Ljava/util/List;

    return-void
.end method

.method private static createDocument()Lorg/w3c/dom/Document;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createElement(Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 4

    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static createQNameWithDefaultNamespace(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 3

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "DAV:"

    const-string v2, "D"

    invoke-direct {v0, v1, p0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSerializer()Lorg/simpleframework/xml/Serializer;
    .locals 4

    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/Format;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/simpleframework/xml/convert/Registry;

    invoke-direct {v1}, Lorg/simpleframework/xml/convert/Registry;-><init>()V

    new-instance v2, Lorg/simpleframework/xml/convert/RegistryStrategy;

    invoke-direct {v2, v1}, Lorg/simpleframework/xml/convert/RegistryStrategy;-><init>(Lorg/simpleframework/xml/convert/Registry;)V

    new-instance v3, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v3, v2, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;

    const-class v2, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v0, v3, v2}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;-><init>(Lorg/simpleframework/xml/Serializer;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;

    const-class v2, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    invoke-direct {v0, v3, v2}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;-><init>(Lorg/simpleframework/xml/Serializer;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/model/Property;

    const-class v2, Lcom/thegrizzlylabs/sardineandroid/model/Property$PropertyConverter;

    invoke-virtual {v1, v0, v2}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Registry;

    return-object v3
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->DATETIME_FORMATS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_1

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->SUPPORTED_DATE_FORMATS:[Ljava/lang/String;

    aget-object v4, v4, v1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "UTC"

    invoke-static {v4}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static standardUTF8()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static toQName(Lorg/w3c/dom/Element;)Ljavax/xml/namespace/QName;
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "D"

    const-string v2, "DAV:"

    invoke-direct {v0, v2, p0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toXml(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static unmarshal(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a valid DAV response"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
