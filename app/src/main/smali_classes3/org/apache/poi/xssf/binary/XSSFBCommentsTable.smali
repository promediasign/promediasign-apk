.class public Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private authorBuffer:Ljava/lang/StringBuilder;

.field private authorId:I

.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cellAddress:Lorg/apache/poi/ss/util/CellAddress;

.field private cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

.field private comment:Ljava/lang/String;

.field private commentAddresses:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation
.end field

.field private comments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/xssf/binary/XSSFBComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comments:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->commentAddresses:Ljava/util/Queue;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authors:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comment:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->commentAddresses:Ljava/util/Queue;

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/binary/XSSFBComment;

    return-object p1
.end method

.method public getAddresses()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->commentAddresses:Ljava/util/Queue;

    return-object v0
.end method

.method public handleRecord(I[B)V
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorBuffer:Ljava/lang/StringBuilder;

    invoke-static {p2, v2, p1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authors:Ljava/util/List;

    iget-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comments:Ljava/util/Map;

    iget-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBComment;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authors:Ljava/util/List;

    iget v2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorId:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comment:Ljava/lang/String;

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBComment;-><init>(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorId:I

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    goto :goto_1

    :cond_2
    invoke-static {p2, v2}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->build([BI)Lorg/apache/poi/xssf/binary/XSSFBRichStr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comment:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorId:I

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    invoke-static {p2, v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->parse([BILorg/apache/poi/xssf/binary/XSSFBCellRange;)Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    new-instance p1, Lorg/apache/poi/ss/util/CellAddress;

    iget-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstRow:I

    iget p2, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstCol:I

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    goto :goto_0

    :goto_1
    return-void
.end method
