.class public final Lorg/apache/poi/hssf/model/InternalWorkbook;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field public static final OLD_WORKBOOK_DIR_ENTRY_NAME:Ljava/lang/String; = "Book"

.field public static final WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;


# instance fields
.field private final boundsheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final commentRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/record/NameCommentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

.field private escherBSERecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherBSERecord;",
            ">;"
        }
    .end annotation
.end field

.field private fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

.field private final formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/HyperlinkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private linkTable:Lorg/apache/poi/hssf/model/LinkTable;

.field private maxformatid:I

.field private numfonts:I

.field private numxfs:I

.field private final records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

.field protected sst:Lorg/apache/poi/hssf/record/SSTRecord;

.field private uses1904datewindowing:Z

.field private windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

.field private writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

.field private writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "WORKBOOK"

    const-string v1, "BOOK"

    const-string v2, "Workbook"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    const-class v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    iput-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    return-void
.end method

.method private checkSheets(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sheet number out of bounds!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static createBOF()Lorg/apache/poi/hssf/record/BOFRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>()V

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setVersion(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setType(I)V

    const/16 v1, 0x10d3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuild(I)V

    const/16 v1, 0x7cc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuildYear(I)V

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setHistoryBitMask(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setRequiredVersion(I)V

    return-object v0
.end method

.method private static createBackup()Lorg/apache/poi/hssf/record/BackupRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/BackupRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BackupRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BackupRecord;->setBackup(S)V

    return-object v0
.end method

.method private static createBookBool()Lorg/apache/poi/hssf/record/BookBoolRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/BookBoolRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BookBoolRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BookBoolRecord;->setSaveLinkValues(S)V

    return-object v0
.end method

.method private static createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sheet"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createCodepage()Lorg/apache/poi/hssf/record/CodepageRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>()V

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CodepageRecord;->setCodepage(S)V

    return-object v0
.end method

.method private static createCountry()Lorg/apache/poi/hssf/record/CountryRecord;
    .locals 4

    new-instance v0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CountryRecord;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CountryRecord;->setDefaultCountry(S)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ru_RU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CountryRecord;->setCurrentCountry(S)V

    return-object v0
.end method

.method private static createDSF()Lorg/apache/poi/hssf/record/DSFRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/DSFRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createDateWindow1904()Lorg/apache/poi/hssf/record/DateWindow1904Record;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DateWindow1904Record;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DateWindow1904Record;->setWindowing(S)V

    return-object v0
.end method

.method private static createExtendedFormat()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    const/16 v1, 0x20c0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLACK:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setTopBorderPaletteIdx(S)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBottomBorderPaletteIdx(S)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLeftBorderPaletteIdx(S)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRightBorderPaletteIdx(S)V

    return-object v0
.end method

.method private static createExtendedFormat(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/16 v2, -0xc00

    const/16 v3, 0x5c00

    const/16 v4, -0x800

    const/16 v5, -0xb

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized format id: "

    .line 2
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v1, v0, v6, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v7, v0, v6, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p0, 0x31

    invoke-static {v7, p0, v6, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {v1, v7, v6, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/4 p0, 0x5

    const/16 v0, 0x800

    invoke-static {p0, v7, v6, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/16 p0, 0x9

    invoke-static {v6, p0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_6
    const/16 p0, 0x2a

    invoke-static {v6, p0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/16 p0, 0x2c

    invoke-static {v6, p0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_8
    const/16 p0, 0x29

    invoke-static {v6, p0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_9
    const/16 p0, 0x2b

    invoke-static {v6, p0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {v7, v7, v6, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {v7, v7, v5, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_c
    const/4 p0, 0x2

    invoke-static {p0, v7, v5, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {v6, v7, v5, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {v7, v7, v5, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 1

    .line 8
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>()V

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    int-to-short p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    int-to-short p0, p2

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    int-to-short p0, p3

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    const/16 p0, 0x20c0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    return-object v0
.end method

.method private static createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setNumStringsPerBucket(S)V

    return-object v0
.end method

.method private static createFnGroupCount()Lorg/apache/poi/hssf/record/FnGroupCountRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;->setCount(S)V

    return-object v0
.end method

.method private static createFont()Lorg/apache/poi/hssf/record/FontRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FontRecord;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontHeight(S)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setAttributes(S)V

    const/16 v1, 0x7fff

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setColorPaletteIndex(S)V

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setBoldWeight(S)V

    const-string v1, "Arial"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontName(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createFormat(I)Lorg/apache/poi/hssf/record/FormatRecord;
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    aget p0, v1, p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected id "

    .line 2
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x2a
        0x29
        0x2c
        0x2b
    .end array-data
.end method

.method private static createHideObj()Lorg/apache/poi/hssf/record/HideObjRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/HideObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HideObjRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HideObjRecord;->setHideObj(S)V

    return-object v0
.end method

.method private static createMMS()Lorg/apache/poi/hssf/record/MMSRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/MMSRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/MMSRecord;->setAddMenuCount(B)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/MMSRecord;->setDelMenuCount(B)V

    return-object v0
.end method

.method private static createPalette()Lorg/apache/poi/hssf/record/PaletteRecord;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PaletteRecord;-><init>()V

    return-object v0
.end method

.method private static createPassword()Lorg/apache/poi/hssf/record/PasswordRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(I)V

    return-object v0
.end method

.method private static createPasswordRev4()Lorg/apache/poi/hssf/record/PasswordRev4Record;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/PasswordRev4Record;-><init>(I)V

    return-object v0
.end method

.method private static createPrecision()Lorg/apache/poi/hssf/record/PrecisionRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/PrecisionRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrecisionRecord;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrecisionRecord;->setFullPrecision(Z)V

    return-object v0
.end method

.method private static createProtect()Lorg/apache/poi/hssf/record/ProtectRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createProtectionRev4()Lorg/apache/poi/hssf/record/ProtectionRev4Record;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(Z)V

    return-object v0
.end method

.method private static createRefreshAll()Lorg/apache/poi/hssf/record/RefreshAllRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RefreshAllRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createStyle(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    new-array v2, v0, [[I

    .line 4
    .line 5
    const/16 v3, 0x10

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    filled-new-array {v3, v4}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    aput-object v3, v2, v1

    .line 13
    .line 14
    const/16 v3, 0x11

    .line 15
    .line 16
    filled-new-array {v3, v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 22
    .line 23
    const/16 v3, 0x12

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    filled-new-array {v3, v6}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v7, 0x2

    .line 31
    aput-object v3, v2, v7

    .line 32
    .line 33
    const/16 v3, 0x13

    .line 34
    .line 35
    const/4 v7, 0x7

    .line 36
    filled-new-array {v3, v7}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    aput-object v3, v2, v4

    .line 41
    .line 42
    filled-new-array {v1, v1}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    aput-object v3, v2, v6

    .line 47
    .line 48
    const/16 v3, 0x14

    .line 49
    .line 50
    const/4 v4, 0x5

    .line 51
    filled-new-array {v3, v4}, [I

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    aput-object v3, v2, v4

    .line 56
    .line 57
    if-ltz p0, :cond_0

    .line 58
    .line 59
    if-ge p0, v0, :cond_0

    .line 60
    .line 61
    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    .line 62
    .line 63
    invoke-direct {v0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v3, -0x1

    .line 67
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/StyleRecord;->setOutlineStyleLevel(I)V

    .line 68
    .line 69
    .line 70
    aget-object v3, v2, p0

    .line 71
    .line 72
    aget v1, v3, v1

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 75
    .line 76
    .line 77
    aget-object p0, v2, p0

    .line 78
    .line 79
    aget p0, p0, v5

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/StyleRecord;->setBuiltinStyle(I)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string v1, "Unexpected style id "

    .line 88
    .line 89
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method private static createTabId()Lorg/apache/poi/hssf/record/TabIdRecord;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TabIdRecord;-><init>()V

    return-object v0
.end method

.method private static createUseSelFS()Lorg/apache/poi/hssf/record/UseSelFSRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>()V

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHorizontalHold(S)V

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setVerticalHold(S)V

    const/16 v1, 0x3a5c

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setWidth(S)V

    const/16 v1, 0x23be

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHeight(S)V

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setOptions(S)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setActiveSheetIndex(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setFirstVisibleTab(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setTabWidthRatio(S)V

    return-object v0
.end method

.method private static createWindowProtect()Lorg/apache/poi/hssf/record/WindowProtectRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(Z)V

    return-object v0
.end method

.method public static createWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 9

    .line 1
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "creating new workbook from scratch"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setRecords(Ljava/util/List;)V

    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBOF()Lorg/apache/poi/hssf/record/BOFRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    const/16 v6, 0x4b0

    invoke-direct {v5, v6}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createMMS()Lorg/apache/poi/hssf/record/MMSRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->instance:Lorg/apache/poi/hssf/record/InterfaceEndRecord;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCodepage()Lorg/apache/poi/hssf/record/CodepageRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDSF()Lorg/apache/poi/hssf/record/DSFRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createTabId()Lorg/apache/poi/hssf/record/TabIdRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFnGroupCount()Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowProtect()Lorg/apache/poi/hssf/record/WindowProtectRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createProtect()Lorg/apache/poi/hssf/record/ProtectRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPassword()Lorg/apache/poi/hssf/record/PasswordRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createProtectionRev4()Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPasswordRev4()Lorg/apache/poi/hssf/record/PasswordRev4Record;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBackup()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createHideObj()Lorg/apache/poi/hssf/record/HideObjRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDateWindow1904()Lorg/apache/poi/hssf/record/DateWindow1904Record;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPrecision()Lorg/apache/poi/hssf/record/PrecisionRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createRefreshAll()Lorg/apache/poi/hssf/record/RefreshAllRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBookBool()Lorg/apache/poi/hssf/record/BookBoolRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    const/4 v5, 0x4

    iput v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x7

    if-gt v5, v6, :cond_1

    invoke-static {v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(I)Lorg/apache/poi/hssf/record/FormatRecord;

    move-result-object v6

    iget v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v8

    if-lt v7, v8, :cond_0

    iget v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v7

    :goto_1
    iput v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_2
    const/16 v5, 0x15

    if-ge v3, v5, :cond_2

    invoke-static {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/2addr v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x6

    if-ge v3, v5, :cond_3

    invoke-static {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createStyle(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v1

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createUseSelFS()Lorg/apache/poi/hssf/record/UseSelFSRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCountry()Lorg/apache/poi/hssf/record/CountryRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    new-instance v3, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>()V

    iput-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "exit create new workbook from scratch"

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)",
            "Lorg/apache/poi/hssf/model/InternalWorkbook;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Workbook (readfile) created with reclen="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setRecords(Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v7

    sparse-switch v7, :sswitch_data_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(sid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    :sswitch_0
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/NameCommentRecord;

    iget-object v8, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "NameComment"

    goto/16 :goto_3

    :sswitch_1
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/FormatRecord;

    iget-object v8, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v9

    if-lt v8, v9, :cond_0

    iget v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v7

    :goto_1
    iput v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    const-string v7, "format"

    goto/16 :goto_3

    :sswitch_2
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    move-object v8, v6

    check-cast v8, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "Hyperlink"

    goto/16 :goto_3

    :sswitch_3
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v7, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    const-string v7, "tabid"

    goto/16 :goto_3

    :sswitch_4
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/SSTRecord;

    iput-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    const-string v7, "sst"

    goto/16 :goto_3

    :sswitch_5
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v7, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    iget v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    const-string v7, "XF"

    goto/16 :goto_3

    :sswitch_6
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v7, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    const-string v7, "palette"

    goto/16 :goto_3

    :sswitch_7
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    iput-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    const-string v7, "WriteProtect"

    goto/16 :goto_3

    :sswitch_8
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    move-object v8, v6

    check-cast v8, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v7, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    const-string v7, "boundsheet"

    goto/16 :goto_3

    :sswitch_9
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    iput-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    const-string v7, "WriteAccess"

    goto :goto_3

    :sswitch_a
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/FileSharingRecord;

    iput-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    const-string v7, "FileSharing"

    goto :goto_3

    :sswitch_b
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v7, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    const-string v7, "backup"

    goto :goto_3

    :sswitch_c
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/WindowOneRecord;

    iput-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    const-string v7, "WindowOneRecord"

    goto :goto_3

    :sswitch_d
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v7, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    iget v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    const-string v7, "font"

    goto :goto_3

    :sswitch_e
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/DateWindow1904Record;->getWindowing()S

    move-result v7

    if-ne v7, v3, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    const-string v7, "datewindow1904"

    goto :goto_3

    :sswitch_f
    sget-object v6, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const-string v7, "found SupBook record at "

    .line 2
    invoke-static {v2, v7}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-virtual {v6, v3, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v6, Lorg/apache/poi/hssf/model/LinkTable;

    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v8, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-direct {v6, p0, v2, v7, v8}, Lorg/apache/poi/hssf/model/LinkTable;-><init>(Ljava/util/List;ILorg/apache/poi/hssf/model/WorkbookRecordList;Ljava/util/Map;)V

    iput-object v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/LinkTable;->getRecordCount()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/2addr v2, v6

    goto :goto_4

    :sswitch_10
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Extern sheet is part of LinkTable"

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_11
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v7, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    const-string v7, "protect"

    goto :goto_3

    :sswitch_12
    const-string v7, "workbook eof"

    :goto_3
    if-nez v5, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v8, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "found "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " record at "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v4

    invoke-virtual {v8, v3, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    const/4 v5, 0x1

    :cond_3
    :goto_4
    add-int/2addr v2, v3

    goto/16 :goto_0

    :cond_4
    iget-object p0, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    if-nez p0, :cond_5

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    :cond_5
    sget-object p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "exit create workbook from existing file function"

    aput-object v2, v1, v4

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_12
        0x12 -> :sswitch_11
        0x17 -> :sswitch_10
        0x18 -> :sswitch_f
        0x22 -> :sswitch_e
        0x31 -> :sswitch_d
        0x3d -> :sswitch_c
        0x40 -> :sswitch_b
        0x5b -> :sswitch_a
        0x5c -> :sswitch_9
        0x85 -> :sswitch_8
        0x86 -> :sswitch_7
        0x92 -> :sswitch_6
        0xe0 -> :sswitch_5
        0xfc -> :sswitch_4
        0x13d -> :sswitch_3
        0x1ae -> :sswitch_f
        0x1b8 -> :sswitch_2
        0x41e -> :sswitch_1
        0x894 -> :sswitch_0
    .end sparse-switch
.end method

.method private static createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;
    .locals 7

    new-instance v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;-><init>()V

    const-string v1, "POI"

    :try_start_0
    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "can\'t determine user.name"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static findDrawingManager(Lorg/apache/poi/hssf/record/DrawingGroupRecord;Ljava/util/List;)Lorg/apache/poi/hssf/model/DrawingManager2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/record/DrawingGroupRecord;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherBSERecord;",
            ">;)",
            "Lorg/apache/poi/hssf/model/DrawingManager2;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    move-object v2, v1

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v4, v3, Lorg/apache/poi/ddf/EscherDggRecord;

    if-eqz v4, :cond_3

    move-object v1, v3

    check-cast v1, Lorg/apache/poi/ddf/EscherDggRecord;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v4

    const/16 v5, -0xfff

    if-ne v4, v5, :cond_2

    move-object v2, v3

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    return-object v0

    :cond_5
    new-instance p0, Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/model/DrawingManager2;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v2, v1, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object p0
.end method

.method private findSheetNameFromIndex(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fixTabIdRecord()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [S

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aput-short v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/TabIdRecord;->setTabIdArray([S)V

    return-void
.end method

.method private getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    return-object p1
.end method

.method private getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumSheets()I

    move-result v1

    int-to-short v1, v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/model/LinkTable;-><init>(ILorg/apache/poi/hssf/model/WorkbookRecordList;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    return-object v0
.end method


# virtual methods
.method public addBSERecord(Lorg/apache/poi/ddf/EscherBSERecord;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xeb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecord(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    const/16 v3, -0xfff

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->setChildRecords(Ljava/util/List;)V

    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0xf

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->addName(Lorg/apache/poi/hssf/record/NameRecord;)V

    return-object p1
.end method

.method public addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 4

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "insert to sst string=\'"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->insertSST()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SSTRecord;->addString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result p1

    return p1
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkExternSheet(I)S
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public checkExternSheet(II)S
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(II)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public cloneDrawings(Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x2694

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/DrawingManager2;->getDgg()Lorg/apache/poi/ddf/EscherDggRecord;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/DrawingManager2;->findNewDrawingGroupId()S

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v3, v1, Lorg/apache/poi/ddf/EscherDgRecord;

    if-eqz v3, :cond_4

    check-cast v1, Lorg/apache/poi/ddf/EscherDgRecord;

    shl-int/lit8 v0, v2, 0x4

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    instance-of v3, v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v3, :cond_3

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherRecord;

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v5

    const/16 v6, -0xff6

    if-ne v5, v6, :cond_8

    if-eqz v0, :cond_7

    check-cast v4, Lorg/apache/poi/ddf/EscherSpRecord;

    iget-object v5, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-virtual {v5, v0}, Lorg/apache/poi/hssf/model/DrawingManager2;->allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;)I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    goto :goto_1

    :cond_7
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "EscherDgRecord wasn\'t set/processed before."

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const/16 v6, -0xff5

    if-ne v5, v6, :cond_6

    check-cast v4, Lorg/apache/poi/ddf/EscherOptRecord;

    const/16 v5, 0x104

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    goto :goto_1

    :cond_9
    return-void
.end method

.method public cloneFilter(II)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    aput-object v2, p1, v1

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    aput-object v2, p1, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/hssf/record/NameRecord;->setHidden(Z)V

    return-object p2
.end method

.method public createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 4

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    add-int/lit8 v0, p2, 0x1

    .line 4
    .line 5
    const/16 v1, 0x7fff

    .line 6
    .line 7
    if-gt v0, v1, :cond_1

    .line 8
    .line 9
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hssf/record/NameRecord;-><init>(BI)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/LinkTable;->nameAlreadyExists(Lorg/apache/poi/hssf/record/NameRecord;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string v1, "Builtin ("

    .line 29
    .line 30
    const-string v2, ") already exists for sheet ("

    .line 31
    .line 32
    const-string v3, ")"

    .line 33
    .line 34
    invoke-static {v1, p1, v2, p2, v3}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v0, "Sheet number ["

    .line 45
    .line 46
    const-string v1, "]is not valid "

    .line 47
    .line 48
    invoke-static {p2, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 3

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    return-object v0
.end method

.method public createDrawingGroup()V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    new-instance v1, Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherDggRecord;-><init>()V

    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    new-instance v3, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;-><init>()V

    const/16 v4, -0x1000

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const/16 v5, -0xffa

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const/16 v6, 0x400

    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherDggRecord;->setShapeIdMax(I)V

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setNumShapesSaved(I)V

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    new-array v5, v5, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setFileIdClusters([Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V

    new-instance v5, Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-direct {v5, v1}, Lorg/apache/poi/hssf/model/DrawingManager2;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    iput-object v5, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    iget-object v5, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    const/16 v6, -0xfff

    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-short v4, v4

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :cond_1
    const/16 v4, -0xff5

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    const/16 v4, 0x33

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v6, 0xbf

    const v7, 0x80008

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v6, 0x181

    const v7, 0x8000041

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v6, 0x1c0

    const v7, 0x8000040

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    const/16 v4, -0xee2

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const v4, 0x800000d

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor1(I)V

    const v4, 0x800000c

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor2(I)V

    const v4, 0x8000017

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor3(I)V

    const v4, 0x100000f7

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor4(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    :cond_2
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    const/16 v1, 0xeb

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->addEscherRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>()V

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->addEscherRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public createFormat(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    const/16 v1, 0xa4

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :cond_0
    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x41e

    if-eq v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    return p1
.end method

.method public createName()Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public createNewFont()Lorg/apache/poi/hssf/record/FontRecord;
    .locals 3

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    return-object v0
.end method

.method public createStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 5

    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    if-ne v2, v1, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-nez v4, :cond_1

    instance-of v3, v3, Lorg/apache/poi/hssf/record/StyleRecord;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-eq v2, v1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {p1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No XF Records found!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doesContainsSheetName(Ljava/lang/String;I)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    add-int/lit8 v5, v3, 0x1

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    move v3, v5

    goto :goto_0

    :cond_4
    return v1
.end method

.method public findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->processChildRecords()V

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingManager(Lorg/apache/poi/hssf/record/DrawingGroupRecord;Ljava/util/List;)Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-eqz v1, :cond_1

    return-object v1

    :cond_3
    const/16 v0, 0xeb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingManager(Lorg/apache/poi/hssf/record/DrawingGroupRecord;Ljava/util/List;)Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    return-object v0
.end method

.method public findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFirstRecordLocBySid(S)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public findNextRecordBySid(SI)Lorg/apache/poi/hssf/record/Record;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v3, v1, 0x1

    if-ne v1, p2, :cond_1

    return-object v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findSheetFirstNameFromExternSheet(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getFirstInternalSheetIndexForExtIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetNameFromIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findSheetLastNameFromExternSheet(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getLastInternalSheetIndexForExtIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetNameFromIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ddf/EscherBSERecord;

    return-object p1
.end method

.method public getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBackuppos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/BackupRecord;

    return-object v0
.end method

.method public getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InternalError: Expected PaletteRecord but got a \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    :goto_0
    return-object v0
.end method

.method public getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    return-object v0
.end method

.method public getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    return-object p1
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXText(IILorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXIx(II)I

    move-result p1

    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    invoke-direct {v1, v0, p2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;-><init>(Ljava/lang/String;II)V

    return-object v1
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalBookAndSheetName(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    aget-object v2, p1, v2

    aget-object p1, p1, v1

    invoke-direct {v0, v2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    aget-object v2, p1, v2

    aget-object v1, p1, v1

    aget-object p1, p1, v3

    invoke-direct {v0, v2, v1, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    return-object v0
.end method

.method public getFirstSheetIndexFromExternSheetIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getFirstInternalSheetIndexForExtIndex(I)I

    move-result p1

    return p1
.end method

.method public getFontIndex(Lorg/apache/poi/hssf/record/FontRecord;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FontRecord;

    if-ne v1, p1, :cond_1

    const/4 p1, 0x3

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not find that font!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    add-int/lit8 v0, p1, -0x1

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v0, p1

    .line 8
    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    if-gt v0, v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 21
    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    add-int/2addr v1, v0

    .line 26
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lorg/apache/poi/hssf/record/FontRecord;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "There are only "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 43
    .line 44
    const-string v3, " font records, you asked for "

    .line 45
    .line 46
    invoke-static {v1, v2, p1, v3}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public getFormat(Ljava/lang/String;Z)S
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result p1

    :goto_0
    int-to-short p1, p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    return-object v0
.end method

.method public getHyperlinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/HyperlinkRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    return-object v0
.end method

.method public getLastSheetIndexFromExternSheetIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getLastInternalSheetIndexForExtIndex(I)I

    move-result p1

    return p1
.end method

.method public getNameCommentRecord(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameCommentRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/NameCommentRecord;

    return-object p1
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    return-object p1
.end method

.method public getNameXPtg(Ljava/lang/String;ILorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getNameXPtg(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-interface {p3, p1}, Lorg/apache/poi/ss/formula/udf/UDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->addNameXPtg(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 1

    .line 2
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameXPtg(Ljava/lang/String;ILorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object p1

    return-object p1
.end method

.method public getNumExFormats()I
    .locals 5

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getXF="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    return v0
.end method

.method public getNumNames()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v0

    return v0
.end method

.method public getNumRecords()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v0

    return v0
.end method

.method public getNumSheets()I
    .locals 5

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getNumSheets="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfFontRecords()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    return v0
.end method

.method public getRecalcId()Lorg/apache/poi/hssf/record/RecalcIdRecord;
    .locals 3

    const/16 v0, 0x1c1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;-><init>()V

    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    :cond_0
    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->insertSST()V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/SSTRecord;->getString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Returning SST for index="

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p1, v3, v0

    const-string p1, " String= "

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 p1, 0x3

    aput-object v1, v3, p1

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isVeryHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p1
.end method

.method public getSize()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    instance-of v4, v3, Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Lorg/apache/poi/hssf/record/SSTRecord;

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/SSTRecord;->calcExtSSTRecordSize()I

    move-result v3

    :goto_1
    add-int/2addr v3, v1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result v3

    goto :goto_1

    :cond_2
    return v1
.end method

.method public getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    return-object p1
.end method

.method public getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/hssf/record/StyleRecord;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/StyleRecord;->getXFIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    return-object v0
.end method

.method public getWorkbookRecordList()Lorg/apache/poi/hssf/model/WorkbookRecordList;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    return-object v0
.end method

.method public getWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    const/16 v0, 0xe2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    return-object v0
.end method

.method public getWriteProtect()Lorg/apache/poi/hssf/record/WriteProtectRecord;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WriteProtectRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    const/16 v0, 0x809

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    return-object v0
.end method

.method public insertSST()V
    .locals 5

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "creating new SST via insertSST!"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    return-void
.end method

.method public isSheetHidden(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isHidden()Z

    move-result p1

    return p1
.end method

.method public isSheetVeryHidden(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isVeryHidden()Z

    move-result p1

    return p1
.end method

.method public isUsing1904DateWindowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    return v0
.end method

.method public isWriteProtected()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result p1

    return p1
.end method

.method public preSerialize()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    iget-object v0, v0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()V

    :cond_0
    return-void
.end method

.method public removeBuiltinRecord(BI)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->removeBuiltinRecord(BI)V

    return-void
.end method

.method public removeExFormatRecord(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    iget p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    return-void
.end method

.method public removeExFormatRecord(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    iget p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    return-void
.end method

.method public removeFontRecord(Lorg/apache/poi/hssf/record/FontRecord;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    iget p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    return-void
.end method

.method public removeName(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v0

    if-le v0, p1, :cond_0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->removeName(I)V

    :cond_0
    return-void
.end method

.method public removeSheet(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()V

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v4

    if-ne v4, v0, :cond_1

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v4

    if-le v4, v0, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->removeSheet(I)V

    :cond_4
    return-void
.end method

.method public resolveNameXText(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXText(IILorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serialize(I[B)I
    .locals 10

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Serializing Workbook with offsets"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/record/Record;

    instance-of v8, v7, Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v8, :cond_0

    move-object v2, v7

    check-cast v2, Lorg/apache/poi/hssf/record/SSTRecord;

    move v5, v3

    :cond_0
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_1

    if-eqz v2, :cond_1

    add-int v7, v5, p1

    invoke-virtual {v2, v7}, Lorg/apache/poi/hssf/record/SSTRecord;->createExtSSTRecord(I)Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v7

    :cond_1
    instance-of v8, v7, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    if-eqz v8, :cond_4

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    add-int v9, v3, p1

    add-int/2addr v9, v7

    invoke-virtual {v8, v9, p2}, Lorg/apache/poi/hssf/record/StandardRecord;->serialize(I[B)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    add-int v8, v3, p1

    invoke-virtual {v7, v8, p2}, Lorg/apache/poi/hssf/record/RecordBase;->serialize(I[B)I

    move-result v7

    :goto_2
    add-int/2addr v3, v7

    goto :goto_0

    :cond_5
    sget-object p1, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Exiting serialize workbook"

    aput-object v0, p2, v4

    invoke-virtual {p1, v1, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return v3
.end method

.method public setSheetBof(II)V
    .locals 6

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "setting bof for sheetnum ="

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, " at pos="

    const/4 v5, 0x2

    aput-object v1, v3, v5

    const/4 v1, 0x3

    aput-object v2, v3, v1

    invoke-virtual {v0, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkSheets(I)V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setPositionOfBof(I)V

    return-void
.end method

.method public setSheetHidden(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setHidden(Z)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setVeryHidden(Z)V

    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 0

    .line 2
    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetHidden(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkSheets(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setSheetname(Ljava/lang/String;)V

    return-void
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v1, v0, v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/2addr v1, p2

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    return-void
.end method

.method public unwriteProtectWorkbook()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    return-void
.end method

.method public updateNameCommentRecordCache(Lorg/apache/poi/hssf/record/NameCommentRecord;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWriteProtect()Lorg/apache/poi/hssf/record/WriteProtectRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setReadOnly(S)V

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setPassword(S)V

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    return-void
.end method
