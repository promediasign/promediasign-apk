.class public Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;->INSTANCE:Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;->INSTANCE:Lorg/apache/xmlbeans/impl/jam/xml/JamXmlUtils;

    return-object v0
.end method


# virtual methods
.method public createService(Ljava/io/InputStream;)Lorg/apache/xmlbeans/impl/jam/JamService;
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/jam/JamServiceFactory;->getInstance()Lorg/apache/xmlbeans/impl/jam/JamServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/jam/JamServiceFactory;->createServiceParams()Lorg/apache/xmlbeans/impl/jam/JamServiceParams;

    move-result-object v1

    new-instance v2, Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;-><init>()V

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/jam/JamServiceParams;->addClassBuilder(Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/jam/JamServiceFactory;->createService(Lorg/apache/xmlbeans/impl/jam/JamServiceParams;)Lorg/apache/xmlbeans/impl/jam/JamService;

    move-result-object v0

    new-instance v3, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;

    check-cast v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    invoke-direct {v3, v2, p1, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;Ljava/io/InputStream;Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlReader;->read()V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/jam/internal/CachedClassBuilder;->getClassNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/JamService;->getClassNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object p1, v0

    check-cast p1, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->setClassNames([Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null stream"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toXml([Lorg/apache/xmlbeans/impl/jam/JClass;Ljava/io/Writer;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlWriter;

    invoke-direct {v0, p2}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlWriter;->begin()V

    const/4 p2, 0x0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlWriter;->write(Lorg/apache/xmlbeans/impl/jam/JClass;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/jam/xml/JamXmlWriter;->end()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null writer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null classes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
