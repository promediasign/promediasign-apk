.class public final Lcom/fasterxml/aalto/in/ReaderConfig;
.super Lcom/fasterxml/aalto/impl/CommonConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;
    }
.end annotation


# static fields
.field static final _recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/fasterxml/aalto/util/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

.field private mActualEncoding:Ljava/lang/String;

.field private final mCanonicalizer:Lcom/fasterxml/aalto/util/UriCanonicalizer;

.field private final mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

.field private final mExtEncoding:Ljava/lang/String;

.field private final mPublicId:Ljava/lang/String;

.field private mReporter:Lorg/apache/poi/javax/xml/stream/XMLReporter;

.field private mResolver:Lorg/apache/poi/javax/xml/stream/XMLResolver;

.field private final mSystemId:Ljava/lang/String;

.field private mXmlDeclEncoding:Ljava/lang/String;

.field private mXmlDeclStandalone:I

.field private mXmlDeclVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fasterxml/aalto/in/ReaderConfig;->sProperties:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "org.apache.poi.javax.xml.stream.isNamespaceAware"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "org.apache.poi.javax.xml.stream.isValidating"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "org.apache.poi.javax.xml.stream.isCoalescing"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "org.apache.poi.javax.xml.stream.isReplacingEntityReferences"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "org.apache.poi.javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "org.apache.poi.javax.xml.stream.supportDTD"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "org.apache.poi.javax.xml.stream.reporter"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "org.apache.poi.javax.xml.stream.resolver"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "org.apache.poi.javax.xml.stream.allocator"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "com.ctc.wstx.lazyParsing"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "org.codehaus.stax2.internNames"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "org.codehaus.stax2.internNsUris"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x2000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "org.codehaus.stax2.closeInputSource"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "org.codehaus.stax2.preserveLocation"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "org.codehaus.stax2.reportPrologWhitespace"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.codehaus.stax2.propDtdOverride"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/aalto/in/ReaderConfig;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    new-instance v4, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    invoke-direct {v4}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;-><init>()V

    new-instance v9, Lcom/fasterxml/aalto/util/UriCanonicalizer;

    invoke-direct {v9}, Lcom/fasterxml/aalto/util/UriCanonicalizer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x1f15

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/aalto/in/ReaderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;IILorg/apache/poi/javax/xml/stream/XMLReporter;Lorg/apache/poi/javax/xml/stream/XMLResolver;Lcom/fasterxml/aalto/util/UriCanonicalizer;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;IILorg/apache/poi/javax/xml/stream/XMLReporter;Lorg/apache/poi/javax/xml/stream/XMLResolver;Lcom/fasterxml/aalto/util/UriCanonicalizer;)V
    .locals 2

    .line 2
    invoke-direct {p0, p5, p6}, Lcom/fasterxml/aalto/impl/CommonConfig;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclEncoding:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclStandalone:I

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mPublicId:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mSystemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mExtEncoding:Ljava/lang/String;

    sget-object p1, Lcom/fasterxml/aalto/in/ReaderConfig;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/aalto/util/BufferRecycler;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iput-object p4, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    iput p5, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    iput p6, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flagMods:I

    iput-object p7, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mReporter:Lorg/apache/poi/javax/xml/stream/XMLReporter;

    iput-object p8, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mResolver:Lorg/apache/poi/javax/xml/stream/XMLResolver;

    iput-object p9, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mCanonicalizer:Lcom/fasterxml/aalto/util/UriCanonicalizer;

    return-void
.end method

.method private createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;
    .locals 3

    new-instance v0, Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-direct {v0}, Lcom/fasterxml/aalto/util/BufferRecycler;-><init>()V

    sget-object v1, Lcom/fasterxml/aalto/in/ReaderConfig;->_recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public allocFullBBuffer(I)[B
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->getFullBBuffer(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-array p1, p1, [B

    return-object p1
.end method

.method public allocFullCBuffer(I)[C
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->getFullCBuffer(I)[C

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-array p1, p1, [C

    return-object p1
.end method

.method public allocMediumCBuffer(I)[C
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->getMediumCBuffer(I)[C

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-array p1, p1, [C

    return-object p1
.end method

.method public allocSmallCBuffer(I)[C
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->getSmallCBuffer(I)[C

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-array p1, p1, [C

    return-object p1
.end method

.method public canonicalizeURI([CI)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mCanonicalizer:Lcom/fasterxml/aalto/util/UriCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/util/UriCanonicalizer;->canonicalizeURI([CI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createNonShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/in/ReaderConfig;
    .locals 11

    new-instance v10, Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    iget v5, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    iget v6, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flagMods:I

    iget-object v7, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mReporter:Lorg/apache/poi/javax/xml/stream/XMLReporter;

    iget-object v8, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mResolver:Lorg/apache/poi/javax/xml/stream/XMLResolver;

    iget-object v9, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mCanonicalizer:Lcom/fasterxml/aalto/util/UriCanonicalizer;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/aalto/in/ReaderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;IILorg/apache/poi/javax/xml/stream/XMLReporter;Lorg/apache/poi/javax/xml/stream/XMLResolver;Lcom/fasterxml/aalto/util/UriCanonicalizer;)V

    return-object v10
.end method

.method public doAutoCloseInput(Z)V
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/impl/CommonConfig;->setFlag(IZ)V

    return-void
.end method

.method public doParseLazily(Z)V
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/impl/CommonConfig;->setFlag(IZ)V

    return-void
.end method

.method public freeFullBBuffer([B)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/ReaderConfig;->createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->returnFullBBuffer([B)V

    return-void
.end method

.method public freeFullCBuffer([C)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/ReaderConfig;->createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->returnFullCBuffer([C)V

    return-void
.end method

.method public freeMediumCBuffer([C)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/ReaderConfig;->createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->returnMediumCBuffer([C)V

    return-void
.end method

.method public freeSmallCBuffer([C)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/ReaderConfig;->createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->returnSmallCBuffer([C)V

    return-void
.end method

.method public getActualEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getBBSymbols()Lcom/fasterxml/aalto/in/ByteBasedPNameTable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->getUtf8Symbols()Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v1, "ISO-8859-1"

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->getLatin1Symbols()Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_1
    const-string v1, "US-ASCII"

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->getAsciiSymbols()Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/Error;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Internal error, unknown encoding \'"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "\'"

    .line 48
    .line 49
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public getCBSymbols()Lcom/fasterxml/aalto/in/CharBasedPNameTable;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->getSymbols()Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    move-result-object v0

    return-object v0
.end method

.method public getCharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/fasterxml/aalto/in/InputCharTypes;->getUtf8CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v1, "ISO-8859-1"

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/fasterxml/aalto/in/InputCharTypes;->getLatin1CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    const-string v1, "US-ASCII"

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    invoke-static {}, Lcom/fasterxml/aalto/in/InputCharTypes;->getAsciiCharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/Error;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Internal error, unknown encoding \'"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    .line 40
    .line 41
    const-string v3, "\'"

    .line 42
    .line 43
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public getExternalEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mExtEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getIllegalCharHandler()Lcom/fasterxml/aalto/util/IllegalCharHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderConfig;->sProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/aalto/impl/CommonConfig;->getProperty(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of p1, v1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    :cond_2
    instance-of p1, v1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Internal error: unrecognized property value type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getXMLReporter()Lorg/apache/poi/javax/xml/stream/XMLReporter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mReporter:Lorg/apache/poi/javax/xml/stream/XMLReporter;

    return-object v0
.end method

.method public getXMLResolver()Lorg/apache/poi/javax/xml/stream/XMLResolver;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mResolver:Lorg/apache/poi/javax/xml/stream/XMLResolver;

    return-object v0
.end method

.method public getXmlDeclEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlDeclStandalone()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclStandalone:I

    return v0
.end method

.method public getXmlDeclVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasInternNamesBeenEnabled()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasExplicitFlag(I)Z

    move-result v0

    return v0
.end method

.method public hasInternNsURIsBeenEnabled()Z
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasExplicitFlag(I)Z

    move-result v0

    return v0
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderConfig;->sProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/fasterxml/aalto/impl/CommonConfig;->isPropertySupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isXml11()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActualEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderConfig;->sProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/aalto/impl/CommonConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    instance-of p1, v1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    return v2

    :cond_2
    instance-of p1, v1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/impl/CommonConfig;->setFlag(IZ)V

    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Internal error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXMLReporter(Lorg/apache/poi/javax/xml/stream/XMLReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mReporter:Lorg/apache/poi/javax/xml/stream/XMLReporter;

    return-void
.end method

.method public setXMLResolver(Lorg/apache/poi/javax/xml/stream/XMLResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mResolver:Lorg/apache/poi/javax/xml/stream/XMLResolver;

    return-void
.end method

.method public setXmlDeclInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const-string p1, "1.0"

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclVersion:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/16 v0, 0x110

    if-ne p1, v0, :cond_1

    const-string p1, "1.1"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclEncoding:Ljava/lang/String;

    const-string p1, "yes"

    if-ne p3, p1, :cond_2

    const/4 p1, 0x1

    :goto_2
    iput p1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mXmlDeclStandalone:I

    goto :goto_3

    :cond_2
    const-string p1, "no"

    if-ne p3, p1, :cond_3

    const/4 p1, 0x2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    return-void
.end method

.method public updateBBSymbols(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->updateUtf8Symbols(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "ISO-8859-1"

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->updateLatin1Symbols(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v1, "US-ASCII"

    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->updateAsciiSymbols(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/Error;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "Internal error, unknown encoding \'"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mActualEncoding:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "\'"

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public updateCBSymbols(Lcom/fasterxml/aalto/in/CharBasedPNameTable;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig;->mEncCtxt:Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->updateSymbols(Lcom/fasterxml/aalto/in/CharBasedPNameTable;)V

    return-void
.end method

.method public willAutoCloseInput()Z
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willCoalesceText()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willExpandEntities()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willInternNames()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willInternNsURIs()Z
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willParseLazily()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willPreserveLocation()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willReportCData()Z
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willSupportNamespaces()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
