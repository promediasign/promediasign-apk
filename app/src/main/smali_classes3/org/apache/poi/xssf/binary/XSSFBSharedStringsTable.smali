.class public Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private count:I

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueCount:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->SHARED_STRINGS_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->count:I

    return p1
.end method

.method public static synthetic access$202(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->uniqueCount:I

    return p1
.end method

.method private readFrom(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;-><init>(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->count:I

    return v0
.end method

.method public getEntryAt(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getUniqueCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->uniqueCount:I

    return v0
.end method
