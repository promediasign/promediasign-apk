.class public Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;
    }
.end annotation


# static fields
.field public static final DEFAULT_WINDOW_SIZE:I = 0x64

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _compressTmpFiles:Z

.field private _randomAccessWindowSize:I

.field private final _sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private final _sxFromXHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/streaming/SXSSFSheet;",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private final _wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

.field private final _xFromSxHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            "Lorg/apache/poi/xssf/streaming/SXSSFSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1

    .line 3
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZ)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->setRandomAccessWindowSize(I)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->setCompressTempFiles(Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object p0
.end method

.method private static copyStreamAndInjectWorksheet(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 12

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p0, Ljava/io/OutputStreamWriter;

    invoke-direct {p0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "<sheetData"

    const/16 v4, 0xa

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v8

    const-string v9, "</sheetData>"

    const/4 v10, -0x1

    if-eq v8, v10, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v8, v11, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    if-ne v6, v10, :cond_1

    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const/16 v8, 0x3e

    if-ne v6, v8, :cond_2

    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    const/16 v4, 0xc

    move-object v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    if-ne v6, v10, :cond_3

    goto :goto_1

    :cond_3
    if-ne v6, v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-virtual {p0, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    if-lez v6, :cond_6

    invoke-virtual {p0, v5, v2, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v8, v6, :cond_7

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v8}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_2

    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    if-eqz v7, :cond_9

    const-string v1, "<sheetData>\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_9
    invoke-static {p2, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    :goto_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result p1

    if-eq p1, v10, :cond_a

    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method private getSheetFromZipEntryName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setRandomAccessWindowSize(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rowAccessWindowSize must be greater than 0 or -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addPicture([BI)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addPicture([BI)I

    move-result p1

    return p1
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method public cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NotImplemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An exception occurred while closing sheet data writer for sheet "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x5

    invoke-virtual {v3, v1, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->close()V

    return-void
.end method

.method public createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->registerSheetMapping(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public createSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/streaming/GZIPSheetDataWriter;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/GZIPSheetDataWriter;-><init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V

    return-object v0
.end method

.method public deregisterSheetMapping(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dispose()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    :try_start_0
    invoke-virtual {v4}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->dispose()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    return v3
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v1

    return-object v1
.end method

.method public flushSheets()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveSheetIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    return v0
.end method

.method public getAllNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/PictureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p1

    return-object p1
.end method

.method public getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method

.method public getFirstVisibleTab()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFirstVisibleTab()I

    move-result v0

    return v0
.end method

.method public getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFontAt(S)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p1

    return-object p1
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getForceFormulaRecalculation()Z

    move-result v0

    return v0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    return-object p1
.end method

.method public getNameAt(I)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    return-object p1
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getNumCellStyles()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumCellStyles()I

    move-result v0

    return v0
.end method

.method public getNumberOfFonts()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfFonts()S

    move-result v0

    return v0
.end method

.method public getNumberOfNames()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfNames()I

    move-result v0

    return v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    move-result v0

    return v0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPrintArea(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRandomAccessWindowSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    return v0
.end method

.method public getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-object p1
.end method

.method public getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object v0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheetAt(I)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFSheet(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p1

    return p1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object p1

    return-object p1
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method public getXSSFSheet(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p1
.end method

.method public getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object v0
.end method

.method public injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-interface {p1, v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetFromZipEntryName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v3, v1, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorksheetXMLInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->copyStreamAndInjectWorksheet(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p2

    :cond_0
    invoke-static {v2, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V

    return-void

    :catchall_2
    move-exception p2

    goto :goto_3

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V

    throw p2
.end method

.method public isCompressTempFiles()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    return v0
.end method

.method public isDate1904()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
        value = "XSSFWorkbook#isHidden is not implemented"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isSheetHidden(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isSheetHidden(I)Z

    move-result p1

    return p1
.end method

.method public isSheetVeryHidden(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isSheetVeryHidden(I)Z

    move-result p1

    return p1
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

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NotImplemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerSheetMapping(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeName(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(I)V

    return-void
.end method

.method public removeName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Ljava/lang/String;)V

    return-void
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    return-void
.end method

.method public removePrintArea(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removePrintArea(I)V

    return-void
.end method

.method public removeSheetAt(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeSheetAt(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->deregisterSheetMapping(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->dispose()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setActiveSheet(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    return-void
.end method

.method public setCompressTempFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setFirstVisibleTab(I)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setForceFormulaRecalculation(Z)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
        value = "XSSFWorkbook#setHidden is not implemented"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setHidden(Z)V

    return-void
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V

    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(IIIII)V

    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    return-void
.end method

.method public setSelectedTab(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSelectedTab(I)V

    return-void
.end method

.method public setSheetHidden(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetHidden(II)V

    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetHidden(IZ)V

    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetName(ILjava/lang/String;)V

    return-void
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetOrder(Ljava/lang/String;I)V

    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

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

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->flushSheets()V

    .line 2
    .line 3
    .line 4
    const-string v0, "poi-sxssf-template"

    .line 5
    .line 6
    const-string v1, ".xlsx"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lorg/apache/poi/POIXMLDocument;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;

    .line 26
    .line 27
    new-instance v2, Ljava/util/zip/ZipFile;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;-><init>(Ljava/util/zip/ZipFile;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 46
    .line 47
    const-string v1, "Could not delete temporary file after processing: "

    .line 48
    .line 49
    invoke-static {v0, v1}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_0

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 61
    .line 62
    .line 63
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    .line 66
    .line 67
    throw p1
.end method
