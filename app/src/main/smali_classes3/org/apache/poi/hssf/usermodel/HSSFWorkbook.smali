.class public final Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
.super Lorg/apache/poi/POIDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;,
        Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;
    }
.end annotation


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field public static final INITIAL_CAPACITY:I

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected _sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private _udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lorg/apache/poi/hssf/usermodel/HSSFFont;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

.field private missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

.field private names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private preserveNodes:Z

.field private workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "HSSFWorkbook.SheetInitialCapacity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 4

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    new-instance p1, Ljava/util/ArrayList;

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V
    .locals 5

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v3, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v0

    iput-boolean p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->clearDirectory()V

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecords(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setPropertiesFromWorkbook(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumRecords()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->convertLabelRecords(Ljava/util/List;I)V

    new-instance v0, Lorg/apache/poi/hssf/model/RecordStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v2, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported BOF found of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->getType()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 p1, 0x5

    invoke-virtual {p2, p1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result p1

    if-ge v4, p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hssf/usermodel/HSSFName;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameCommentRecord(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameCommentRecord;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1

    .line 8
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    return-void
.end method

.method private convertLabelRecords(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "convertLabelRecords called"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    const/16 v4, 0x204

    if-ne v3, v4, :cond_1

    check-cast v1, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance v3, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    new-instance v5, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/LabelRecord;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/LabelRecord;->getRow()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/LabelRecord;->getColumn()S

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/LabelRecord;->getXFIndex()S

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/record/CellRecord;->setXFIndex(S)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/2addr p2, v2

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result p2

    if-eqz p2, :cond_3

    new-array p2, v2, [Ljava/lang/Object;

    const-string v1, "convertLabelRecords exit"

    aput-object v1, p2, v0

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/model/InternalWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v0
.end method

.method private getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFSheet;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V

    return-void
.end method

.method public static getOleMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hpsf/ClassID;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PowerPoint Document"

    sget-object v2, Lorg/apache/poi/hpsf/ClassID;->PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lorg/apache/poi/hpsf/ClassID;->XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSheets()[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, ")"

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    add-int/lit8 v4, v0, 0x1

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-static {p1, v5, v4}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    add-int/2addr v4, v5

    .line 35
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    nop

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    nop

    .line 47
    :cond_0
    const/4 v4, 0x2

    .line 48
    :goto_0
    add-int/lit8 v0, v4, 0x1

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    add-int/2addr v6, v5

    .line 63
    add-int/2addr v6, v3

    .line 64
    const/16 v5, 0x1f

    .line 65
    .line 66
    if-ge v6, v5, :cond_1

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, " ("

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    rsub-int/lit8 v6, v6, 0x1d

    .line 102
    .line 103
    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, "("

    .line 111
    .line 112
    invoke-static {v5, v6, v4, v2}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 117
    .line 118
    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    const/4 v6, -0x1

    .line 123
    if-ne v5, v6, :cond_2

    .line 124
    .line 125
    return-object v4

    .line 126
    :cond_2
    move v4, v0

    .line 127
    goto :goto_0
.end method

.method public static getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "EncryptedPackage"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "The supplied spreadsheet seems to be an Encrypted .xlsx file. It must be decrypted before use by XSSF, it cannot be used by HSSF"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v0, "Book"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    new-instance v0, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v1, "The supplied spreadsheet seems to be Excel 5.0/7.0 (BIFF5) format. POI only supports BIFF8 format (from Excel versions 97/2000/XP/2003)"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The supplied POIFSFileSystem does not contain a BIFF8 \'Workbook\' entry. Is it really an excel file? Had: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryNames()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private searchForPictures(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFPictureData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    invoke-direct {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->searchForPictures(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPropertiesFromWorkbook(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-void
.end method

.method private updateActiveSheetAfterSheetReorder(II)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_1

    :cond_0
    if-ge v0, p1, :cond_1

    if-lt v0, p2, :cond_4

    :cond_1
    if-le v0, p1, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    if-le p2, p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private updateEncryptionInfo()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWorkbookRecordList()Lorg/apache/poi/hssf/model/WorkbookRecordList;

    move-result-object v1

    if-nez v2, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v4, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/Decryptor;->getVerifier()[B

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "can\'t validate/update encryption setting"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateNamedRangesAfterSheetReorder(II)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getSheetIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-ne v2, p1, :cond_1

    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_1
    if-gt p2, v2, :cond_2

    if-ge v2, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_2
    if-ge p1, v2, :cond_0

    if-gt v2, p2, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private validateSheetIndex(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    if-le p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    :goto_0
    const-string v1, "(0.."

    .line 16
    .line 17
    const-string v2, ")"

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, -0x1

    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    const-string v1, "(no sheets)"

    .line 27
    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "Sheet index ("

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ") is out of range "

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method private write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "Workbook"

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V

    iget-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "\u0005SummaryInformation"

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0005DocumentSummaryInformation"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    new-instance v2, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOlePackage(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getOleMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->initDirectory()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    :cond_0
    const/4 v1, 0x0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MBD"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v0, v2

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    invoke-interface {v1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    :cond_2
    if-eqz v1, :cond_1

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "\u0001Ole"

    invoke-interface {v1, v2, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    new-instance v2, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    invoke-direct {v2, p2, p3, p4, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->writeOut(Ljava/io/OutputStream;)V

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "\u0001Ole10Native"

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return v0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public addPicture([BI)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->initDrawings()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq p2, v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Lorg/apache/poi/ddf/EscherBitmapBlip;

    .line 16
    .line 17
    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setUID([B)V

    .line 21
    .line 22
    .line 23
    const/4 v4, -0x1

    .line 24
    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setMarker(B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    .line 28
    .line 29
    .line 30
    array-length p1, p1

    .line 31
    add-int/lit8 p1, p1, 0x19

    .line 32
    .line 33
    const/16 v4, 0xff

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const v4, -0x65393229

    .line 41
    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    array-length v3, p1

    .line 46
    const/16 v4, 0x16

    .line 47
    .line 48
    sub-int/2addr v3, v4

    .line 49
    new-array v3, v3, [B

    .line 50
    .line 51
    array-length v5, p1

    .line 52
    sub-int/2addr v5, v4

    .line 53
    invoke-static {p1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    move-object p1, v3

    .line 57
    :cond_1
    new-instance v3, Lorg/apache/poi/ddf/EscherMetafileBlip;

    .line 58
    .line 59
    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setUID([B)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setPictureData([B)V

    .line 66
    .line 67
    .line 68
    const/4 p1, -0x2

    .line 69
    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setFilter(B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getCompressedSize()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    add-int/lit8 p1, p1, 0x3a

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    :goto_0
    add-int/lit16 v5, p2, -0xfe8

    .line 80
    .line 81
    int-to-short v5, v5

    .line 82
    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    .line 83
    .line 84
    .line 85
    packed-switch p2, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string v0, "Unexpected picture format: "

    .line 91
    .line 92
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :pswitch_0
    const/16 v5, 0x7a80

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :pswitch_1
    const/16 v5, 0x6e00

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_2
    const/16 v5, 0x46a0

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_3
    const/16 v5, 0x5420

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_4
    const/16 v5, 0x2160

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_5
    const/16 v5, 0x3d40

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_2
    new-instance v5, Lorg/apache/poi/ddf/EscherBSERecord;

    .line 122
    .line 123
    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    .line 124
    .line 125
    .line 126
    const/16 v6, -0xff9

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    .line 129
    .line 130
    .line 131
    shl-int/lit8 v6, p2, 0x4

    .line 132
    .line 133
    or-int/2addr v1, v6

    .line 134
    int-to-short v1, v1

    .line 135
    invoke-virtual {v5, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    .line 136
    .line 137
    .line 138
    int-to-byte p2, p2

    .line 139
    invoke-virtual {v5, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeMacOS(B)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeWin32(B)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setUid([B)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBSERecord;->setTag(S)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setSize(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setOffset(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v3}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipRecord(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 164
    .line 165
    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addBSERecord(Lorg/apache/poi/ddf/EscherBSERecord;)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    return p1

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cloneSheet(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->cloneSheet(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->cloneFilter(II)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public bridge synthetic cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->cloneSheet(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/POIDocument;->close()V

    return-void
.end method

.method public createBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hssf/usermodel/HSSFName;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public createCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    const/16 v1, 0xfbe

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumCellStyles()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-direct {v2, v1, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The maximum number of cell styles was exceeded. You can define up to 4000 styles in a .xls workbook"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    return-object v0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createNewFont()Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    :cond_0
    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum number of fonts was exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public createName()Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createName()Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createName()Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public createSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sheet"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    return-object v0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->doesContainsSheetName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The workbook already contains a sheet named \'"

    const-string v2, "\'"

    .line 2
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sheetName must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public dumpDrawingGroupRecords(Z)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0xeb

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    if-eqz p1, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public encryptBytes([B)V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    new-instance v3, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v3, p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    const/16 v4, 0x400

    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/crypt/Encryptor;->setChunkSize(I)V

    new-array v5, v4, [B

    :try_start_0
    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_4

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    invoke-static {v5, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v5, v8}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v8

    invoke-static {v7}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->isNeverEncryptedRecord(I)Z

    move-result v9

    invoke-virtual {v0, v8, v9}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->setNextRecordSize(IZ)V

    invoke-virtual {v0, v5, v2, v6}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    const/16 v10, 0x85

    if-ne v7, v10, :cond_1

    new-array v7, v8, [B

    invoke-virtual {v1, v7}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    invoke-virtual {v0, v7, v2, v6}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    add-int/lit8 v9, v8, -0x4

    invoke-virtual {v0, v7, v6, v9}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    move v6, v8

    :goto_1
    if-lez v6, :cond_3

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1, v5, v2, v7}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    if-eqz v9, :cond_2

    invoke-virtual {v0, v5, v2, v7}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5, v2, v7}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    :goto_2
    sub-int/2addr v6, v7

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x4

    add-int/2addr v3, v8

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public findExistingBuiltinNameRecordIdx(IB)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result v2

    if-eq v2, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find all defined names to iterate over"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()S

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getBold()Z

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getColor()S

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getFontHeight()S

    move-result v3

    if-ne v3, p3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getFontName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getItalic()Z

    move-result v3

    if-ne v3, p5, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getStrikeout()Z

    move-result v3

    if-ne v3, p6, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getTypeOffset()S

    move-result v3

    if-ne v3, p7, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getUnderline()B

    move-result v3

    if-ne v3, p8, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object p1

    return-object p1
.end method

.method public getActiveSheetIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v0

    return v0
.end method

.method public getAllEmbeddedObjects()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFPictureData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    instance-of v3, v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->searchForPictures(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackupFlag()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BackupRecord;->getBackup()S

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 0

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object p1
.end method

.method public getBytes()[B
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string v4, "HSSFWorkbook.getBytes()"

    .line 14
    .line 15
    aput-object v4, v3, v0

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheets()[Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v3, v1

    .line 25
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateEncryptionInfo()V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 29
    .line 30
    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->preSerialize()V

    .line 31
    .line 32
    .line 33
    array-length v4, v1

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-ge v5, v4, :cond_1

    .line 36
    .line 37
    aget-object v6, v1, v5

    .line 38
    .line 39
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7}, Lorg/apache/poi/hssf/model/InternalSheet;->preSerialize()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->preSerialize()V

    .line 47
    .line 48
    .line 49
    add-int/2addr v5, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 52
    .line 53
    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSize()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    new-array v5, v3, [Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    :goto_1
    if-ge v6, v3, :cond_2

    .line 61
    .line 62
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 63
    .line 64
    invoke-virtual {v7, v6, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetBof(II)V

    .line 65
    .line 66
    .line 67
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;

    .line 68
    .line 69
    invoke-direct {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;-><init>()V

    .line 70
    .line 71
    .line 72
    aget-object v8, v1, v6

    .line 73
    .line 74
    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v8, v7, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    add-int/2addr v4, v8

    .line 86
    aput-object v7, v5, v6

    .line 87
    .line 88
    add-int/2addr v6, v2

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-array v1, v4, [B

    .line 91
    .line 92
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 93
    .line 94
    invoke-virtual {v4, v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->serialize(I[B)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    :goto_2
    if-ge v0, v3, :cond_4

    .line 99
    .line 100
    aget-object v6, v5, v0

    .line 101
    .line 102
    invoke-virtual {v6, v4, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->serialize(I[B)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-ne v7, v8, :cond_3

    .line 111
    .line 112
    add-int/2addr v4, v7

    .line 113
    add-int/2addr v0, v2

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 116
    .line 117
    const-string v2, "Actual serialized sheet size ("

    .line 118
    .line 119
    const-string v3, ") differs from pre-calculated size ("

    .line 120
    .line 121
    invoke-static {v7, v2, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, ") for sheet ("

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ")"

    .line 141
    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->encryptBytes([B)V

    .line 154
    .line 155
    .line 156
    return-object v1
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    int-to-short p1, p1

    invoke-direct {v1, p1, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v1
.end method

.method public bridge synthetic getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object p1

    return-object p1
.end method

.method public getCreationHelper()Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public bridge synthetic getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCreationHelper()Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFirstVisibleTab()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v0

    return v0
.end method

.method public getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    invoke-direct {v2, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;-><init>(SLorg/apache/poi/hssf/record/FontRecord;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public bridge synthetic getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object p1

    return-object p1
.end method

.method public getForceFormulaRecalculation()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    const/16 v1, 0x1c1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->getEngineId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInternalWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-object v0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object p1
.end method

.method public bridge synthetic getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object p1

    return-object p1
.end method

.method public getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object p1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Specified name index "

    const-string v4, " is outside the allowable range (0.."

    .line 1
    invoke-static {p1, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There are no defined names in this workbook"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getNameAt(I)Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object p1

    return-object p1
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getNameIndex(Lorg/apache/poi/hssf/usermodel/HSSFName;)I
    .locals 2

    .line 2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getNameName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getNameName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    return-object p1
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getNameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getNumCellStyles()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    return v0
.end method

.method public getNumberOfFonts()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumberOfFontRecords()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getNumberOfNames()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRootDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabs()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object p1
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object p1

    return-object p1
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-object v0
.end method

.method public getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-object v0
.end method

.method public initDrawings()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    :cond_1
    return-void
.end method

.method public insertChartRecord()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    const/16 v1, 0x5a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    new-instance v2, Lorg/apache/poi/hssf/record/UnknownRecord;

    const/16 v3, 0xeb

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(I[B)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :array_0
    .array-data 1
        0xft
        0x0t
        0x0t
        -0x10t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        -0x10t
        0x18t
        0x0t
        0x0t
        0x0t
        0x1t
        0x8t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x33t
        0x0t
        0xbt
        -0x10t
        0x12t
        0x0t
        0x0t
        0x0t
        -0x41t
        0x0t
        0x8t
        0x0t
        0x8t
        0x0t
        -0x7ft
        0x1t
        0x9t
        0x0t
        0x0t
        0x8t
        -0x40t
        0x1t
        0x40t
        0x0t
        0x0t
        0x8t
        0x40t
        0x0t
        0x1et
        -0xft
        0x10t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x0t
        0x8t
        0xct
        0x0t
        0x0t
        0x8t
        0x17t
        0x0t
        0x0t
        0x8t
        -0x9t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public isHidden()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHidden()Z

    move-result v0

    return v0
.end method

.method public isSheetHidden(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isSheetHidden(I)Z

    move-result p1

    return p1
.end method

.method public isSheetVeryHidden(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isSheetVeryHidden(I)Z

    move-result p1

    return p1
.end method

.method public isWriteProtected()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isWriteProtected()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result p1

    return p1
.end method

.method public removeName(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeName(I)V

    return-void
.end method

.method public removeName(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(I)V

    return-void
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 0

    .line 3
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Lorg/apache/poi/hssf/usermodel/HSSFName;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(I)V

    return-void
.end method

.method public removePrintArea(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeBuiltinRecord(BI)V

    return-void
.end method

.method public removeSheetAt(I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeSheet(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    if-lt p1, v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSelectedTab(I)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    if-ne v0, p1, :cond_5

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_3

    :cond_5
    if-le v0, p1, :cond_6

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public resetFontCache()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    return-void
.end method

.method public setActiveSheet(I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setActiveSheetIndex(I)V

    return-void
.end method

.method public setBackupFlag(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/BackupRecord;->setBackup(S)V

    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setFirstVisibleTab(I)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecalcId()Lorg/apache/poi/hssf/record/RecalcIdRecord;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->setEngineId(I)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHidden(Z)V

    return-void
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/util/CellReference;

    const/4 v1, 0x1

    invoke-direct {v0, p4, p2, v1, v1}, Lorg/apache/poi/hssf/util/CellReference;-><init>(IIZZ)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lorg/apache/poi/hssf/util/CellReference;

    invoke-direct {p4, p5, p3, v1, v1}, Lorg/apache/poi/hssf/util/CellReference;-><init>(IIZZ)V

    const-string p3, ":"

    .line 1
    invoke-static {p2, p3}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p4}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p2, p0, v1, p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-void
.end method

.method public setSelectedTab(I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    return-void
.end method

.method public setSelectedTabs(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    int-to-short p1, p1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    return-void
.end method

.method public setSelectedTabs([I)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSelectedTabs(Ljava/util/Collection;)V

    return-void
.end method

.method public setSheetHidden(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid sheet state : "

    const-string v1, "\nSheet state must beone of the Workbook.SHEET_STATE_* constants"

    .line 1
    invoke-static {p2, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    goto :goto_1

    :cond_2
    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 0

    .line 8
    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->doesContainsSheetName(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "The workbook already contains a sheet named \'"

    .line 23
    .line 24
    const-string v1, "\'"

    .line 25
    .line 26
    invoke-static {v0, p2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "sheetName must not be null"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetOrder(Ljava/lang/String;I)V

    invoke-static {v0, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateNamedRangesAfterSheetReorder(II)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateActiveSheetAfterSheetReorder(II)V

    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetHidden(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public sheetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public unwriteProtectWorkbook()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->unwriteProtectWorkbook()V

    return-void
.end method

.method public write()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->writeProperties()V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem()V

    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>()V

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw p1
.end method

.method public writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
