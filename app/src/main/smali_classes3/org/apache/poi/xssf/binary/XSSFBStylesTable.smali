.class public Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private inCellXFS:Z

.field private inFmts:Z

.field private final numberFormats:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final styleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->numberFormats:Ljava/util/SortedMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->styleIds:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inCellXFS:Z

    iput-boolean p1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inFmts:Z

    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    return-void
.end method

.method private handleBrtXFInCellXF([B)V
    .locals 1

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->styleIds:Ljava/util/List;

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleFormat([B)V
    .locals 3

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->numberFormats:Ljava/util/SortedMap;

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "Format id must be a short"

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getNumberFormatIndex(I)S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->styleIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method public getNumberFormatString(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->getNumberFormatIndex(I)S

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleRecord(I[B)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inFmts:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->handleFormat([B)V

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inFmts:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inFmts:Z

    goto :goto_0

    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inCellXFS:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->handleBrtXFInCellXF([B)V

    goto :goto_0

    :pswitch_4
    iput-boolean v1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inCellXFS:Z

    goto :goto_0

    :pswitch_5
    iput-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inCellXFS:Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
