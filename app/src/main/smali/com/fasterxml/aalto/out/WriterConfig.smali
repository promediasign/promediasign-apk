.class public final Lcom/fasterxml/aalto/out/WriterConfig;
.super Lcom/fasterxml/aalto/impl/CommonConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;
    }
.end annotation


# static fields
.field static final mRecyclerRef:Ljava/lang/ThreadLocal;
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field _currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

.field private _encoding:Ljava/lang/String;

.field private final _encodingContext:Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;

.field private _propAutoNsPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fasterxml/aalto/out/WriterConfig;->sProperties:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "org.apache.poi.javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "org.apache.poi.javax.xml.stream.isNamespaceAware"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.apache.poi.javax.xml.stream.reporter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "org.codehaus.stax2.autoCloseOutput"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "org.codehaus.stax2.automaticEmptyElements"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "org.codehaus.stax2.automaticNsPrefix"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.codehaus.stax2.textEscaper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.codehaus.stax2.attrValueEscaper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/aalto/out/WriterConfig;->mRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v4, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;

    invoke-direct {v4}, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;-><init>()V

    const-string v5, "ans"

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/aalto/out/WriterConfig;-><init>(Ljava/lang/String;IILcom/fasterxml/aalto/out/WriterConfig$EncodingContext;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/fasterxml/aalto/out/WriterConfig$EncodingContext;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/aalto/impl/CommonConfig;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    iput-object p1, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encoding:Ljava/lang/String;

    iput-object p4, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encodingContext:Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;

    sget-object p1, Lcom/fasterxml/aalto/out/WriterConfig;->mRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/aalto/util/BufferRecycler;

    iput-object p1, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iput p2, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    iput p3, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flagMods:I

    iput-object p5, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_propAutoNsPrefix:Ljava/lang/String;

    return-void
.end method

.method private createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;
    .locals 3

    new-instance v0, Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-direct {v0}, Lcom/fasterxml/aalto/util/BufferRecycler;-><init>()V

    sget-object v1, Lcom/fasterxml/aalto/out/WriterConfig;->mRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public allocFullBBuffer(I)[B
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

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

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

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

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->getMediumCBuffer(I)[C

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-array p1, p1, [C

    return-object p1
.end method

.method public createNonShared()Lcom/fasterxml/aalto/out/WriterConfig;
    .locals 7

    new-instance v6, Lcom/fasterxml/aalto/out/WriterConfig;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encoding:Ljava/lang/String;

    iget v2, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    iget v3, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flagMods:I

    iget-object v4, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encodingContext:Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;

    iget-object v5, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_propAutoNsPrefix:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/aalto/out/WriterConfig;-><init>(Ljava/lang/String;IILcom/fasterxml/aalto/out/WriterConfig$EncodingContext;Ljava/lang/String;)V

    return-object v6
.end method

.method public doAutoCloseOutput(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/impl/CommonConfig;->setFlag(IZ)V

    return-void
.end method

.method public enableXml11()V
    .locals 0

    return-void
.end method

.method public freeFullBBuffer([B)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WriterConfig;->createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->returnFullBBuffer([B)V

    return-void
.end method

.method public freeFullCBuffer([C)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WriterConfig;->createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->returnFullCBuffer([C)V

    return-void
.end method

.method public freeMediumCBuffer([C)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WriterConfig;->createRecycler()Lcom/fasterxml/aalto/util/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_currRecycler:Lcom/fasterxml/aalto/util/BufferRecycler;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/BufferRecycler;->returnMediumCBuffer([C)V

    return-void
.end method

.method public getActualEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getAsciiSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encodingContext:Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->getAsciiSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1

    return-object p1
.end method

.method public getAutomaticNsPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_propAutoNsPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getCharSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encodingContext:Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->getCharSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1

    return-object p1
.end method

.method public getLatin1Symbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encodingContext:Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->getLatin1Symbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1

    return-object p1
.end method

.method public getPreferredEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/fasterxml/aalto/out/WriterConfig;->sProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/aalto/impl/CommonConfig;->getProperty(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p2, -0x2

    if-eq p1, p2, :cond_3

    return-object v2

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_propAutoNsPrefix:Ljava/lang/String;

    return-object p1
.end method

.method public getUtf8Symbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encodingContext:Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->getUtf8Symbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1

    return-object p1
.end method

.method public isNamespaceAware()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/out/WriterConfig;->sProperties:Ljava/util/HashMap;

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

.method public setActualEncodingIfNotSet(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_encoding:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/fasterxml/aalto/out/WriterConfig;->sProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

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
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ltz p1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/impl/CommonConfig;->setFlag(IZ)V

    return v0

    :cond_3
    const/4 v1, -0x2

    if-eq p1, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/out/WriterConfig;->_propAutoNsPrefix:Ljava/lang/String;

    return v0
.end method

.method public willAutoCloseOutput()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public willCheckAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public willCheckContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willCheckNames()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public willCheckStructure()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willEscapeCR()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willFixContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willRepairNamespaces()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    return v0
.end method
