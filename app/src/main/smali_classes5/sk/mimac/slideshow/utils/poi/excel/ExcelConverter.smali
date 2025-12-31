.class public Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALIGN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/HorizontalAlignment;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BORDER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/BorderStyle;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERTICAL_ALIGN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/VerticalAlignment;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private endColumn:I

.field private firstColumn:I

.field private final formulaEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

.field private gotBounds:Z

.field private final helper:Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;

.field private mergedRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/util/Formatter;

.field private final wb:Lorg/apache/poi/ss/usermodel/Workbook;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->LEFT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "left"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const-string v5, "center"

    const/4 v7, 0x3

    aput-object v5, v1, v7

    sget-object v8, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->RIGHT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/4 v9, 0x4

    aput-object v8, v1, v9

    const-string v8, "right"

    const/4 v10, 0x5

    aput-object v8, v1, v10

    sget-object v8, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->FILL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/4 v11, 0x6

    aput-object v8, v1, v11

    const/4 v8, 0x7

    aput-object v2, v1, v8

    sget-object v12, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/16 v13, 0x8

    aput-object v12, v1, v13

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->CENTER_SELECTION:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/16 v14, 0xa

    aput-object v2, v1, v14

    const/16 v2, 0xb

    aput-object v5, v1, v2

    sget-object v15, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->DISTRIBUTED:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/16 v16, 0xc

    aput-object v15, v1, v16

    const/16 v15, 0xd

    aput-object v5, v1, v15

    invoke-static {v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mapFor([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->ALIGN:Ljava/util/Map;

    new-array v1, v14, [Ljava/lang/Object;

    sget-object v5, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v5, v1, v3

    const-string v5, "bottom"

    aput-object v5, v1, v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v5, v1, v6

    const-string v5, "middle"

    aput-object v5, v1, v7

    sget-object v17, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->DISTRIBUTED:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v17, v1, v9

    aput-object v5, v1, v10

    sget-object v17, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v17, v1, v11

    aput-object v5, v1, v8

    sget-object v5, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v5, v1, v13

    const-string v5, "top"

    aput-object v5, v1, v12

    invoke-static {v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mapFor([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->VERTICAL_ALIGN:Ljava/util/Map;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v5, v1, v3

    const-string v3, "solid 1pt"

    aput-object v3, v1, v4

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASH_DOT_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v6

    const-string v4, "dashed 1pt"

    aput-object v4, v1, v7

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v9

    aput-object v3, v1, v10

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->DOTTED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v11

    aput-object v3, v1, v8

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->DOUBLE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v13

    const-string v4, "double 1pt"

    aput-object v4, v1, v12

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->HAIR:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v14

    const-string v4, "solid 1px"

    aput-object v4, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v16

    aput-object v3, v1, v15

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v0

    const/16 v0, 0xf

    aput-object v3, v1, v0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASH_DOT_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "dashedn 1pt"

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v0, 0x13

    aput-object v3, v1, v0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "none"

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->SLANTED_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v0, 0x17

    aput-object v3, v1, v0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->THICK:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "solid 2pt"

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v0, 0x1b

    aput-object v3, v1, v0

    invoke-static {v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mapFor([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->BORDER:Ljava/util/Map;

    const-string v0, "org.apache.poi.javax.xml.stream.XMLInputFactory"

    const-string v1, "com.fasterxml.aalto.stax.InputFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.poi.javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.fasterxml.aalto.stax.OutputFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.poi.javax.xml.stream.XMLEventFactory"

    const-string v1, "com.fasterxml.aalto.stax.EventFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    :goto_0
    iput-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->helper:Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz v0, :cond_1

    new-instance v0, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;

    invoke-direct {v0}, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->formulaEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown workbook type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "wb"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private borderStyles(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->BORDER:Ljava/util/Map;

    const-string v2, "border-left"

    invoke-direct {p0, v2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v0, "border-right"

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v0, "border-top"

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v0, "border-bottom"

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method private ensureColumnBounds(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 3

    iget-boolean v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->gotBounds:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->rowIterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    iput v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getFirstCellNum()S

    move-result v1

    if-ltz v1, :cond_2

    iget v2, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    iget v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getLastCellNum()S

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->gotBounds:Z

    return-void
.end method

.method public static excelToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;

    .line 16
    .line 17
    invoke-direct {v3, v2, v0}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/StringBuilder;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printPage()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    :goto_1
    new-instance v1, Ljava/io/IOException;

    .line 44
    .line 45
    const-string v2, "Can\'t process excel file \'"

    .line 46
    .line 47
    const-string v3, "\'"

    .line 48
    .line 49
    invoke-static {v2, p0, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v1
.end method

.method private fontStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Font;->getBold()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v2, "font-weight: bold;%n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Font;->getItalic()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v0, "font-style: italic;%n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_1
    return-void
.end method

.method private getCellData(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const-string p1, "?"

    return-object p1

    :cond_0
    const-string p1, "&nbsp;"

    return-object p1

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->formulaEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getColSpan(II)I
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v2

    return p1

    :cond_1
    return v2
.end method

.method private static varargs mapFor([Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private printCols(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 3

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->ensureColumnBounds(Lorg/apache/poi/ss/usermodel/Sheet;)V

    iget p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    :goto_0
    iget v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "<col/>%n"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printPage()V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "<!DOCTYPE html>%n<html>%n<head>%n<meta charset=\'utf-8\'/>%n"

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v2, "<style type=\"text/css\">%n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "html, body {  width: 100%;  height: 100%;  max-width: 100%;  margin: 0;  padding: 0;}body {  background-color: white;}.excelDefaults {  color: black;  text-decoration: none;  direction: ltr;  text-transform: none;  text-indent: 0;  letter-spacing: 0;  word-spacing: 0;  white-space: normal;  unicode-bidi: normal;  vertical-align: 0;  text-shadow: none;  list-style-image: none;  list-style-type: none;  padding: 0;  margin: 0;  border-collapse: collapse;  vertical-align: bottom;  font-style: normal;  font-family: sans-serif;  font-variant: normal;  font-weight: normal;  font-size: 1em;  text-align: right;  max-width: 100%;}.excelDefaults td {  padding: 1px 5px;}"

    aput-object v4, v3, v1

    const-string v4, "%s%n"

    invoke-virtual {v0, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-direct {p0}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printStyles()V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->XLS_BODY_STYLE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v3, "</style>%n</head>%n<body style=\'%s\'>%n"

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-direct {p0}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printSheets()V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v2, "</body>%n</html>%n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method private printSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "excelDefaults"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "<table class=\'%s\'>%n"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printCols(Lorg/apache/poi/ss/usermodel/Sheet;)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printSheetContent(Lorg/apache/poi/ss/usermodel/Sheet;)V

    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "</table>%n"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method private printSheetContent(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "<tbody>%n"

    invoke-virtual {v1, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->rowIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    iget-object v3, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v4, "<tr>%n"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget v3, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    :goto_1
    iget v4, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    if-ge v3, v4, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getFirstCellNum()S

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getLastCellNum()S

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->tagStyle(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->getCellData(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    const-string v4, "&nbsp;"

    const-string v6, ""

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v7

    invoke-direct {p0, v3, v7}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->getColSpan(II)I

    move-result v7

    iget-object v8, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    invoke-direct {p0, v5}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleName(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v2

    aput-object v6, v10, v0

    const/4 v5, 0x2

    aput-object v9, v10, v5

    const/4 v5, 0x3

    aput-object v4, v10, v5

    const-string v4, "<td class=%s %s colspan=\"%d\">%s</td>%n"

    invoke-virtual {v8, v4, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    sub-int/2addr v7, v0

    add-int/2addr v7, v3

    add-int/lit8 v3, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v3, "</tr>%n"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v0, "</tbody>%n"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method private printSheets()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mergedRegions:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mergedRegions:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method

.method private printStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleName(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "excelDefaults"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, ".%s .%s {%n"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleContents(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "}%n"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method private printStyles()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private styleContents(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->ALIGN:Ljava/util/Map;

    const-string v2, "text-align"

    invoke-direct {p0, v2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getVerticalAlignmentEnum()Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->VERTICAL_ALIGN:Ljava/util/Map;

    const-string v2, "vertical-align"

    invoke-direct {p0, v2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->fontStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->borderStyles(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->helper:Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;

    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    invoke-interface {v0, p1, v1}, Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;->colorStyles(Lorg/apache/poi/ss/usermodel/CellStyle;Ljava/util/Formatter;)V

    return-void
.end method

.method private styleName(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "_%02x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v0, " %s: %s;%n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p3, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_0
    return-void
.end method

.method private tagStyle(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;
    .locals 1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    if-ne p2, v0, :cond_2

    sget-object p2, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-static {p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->ultimateCellType(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "style=\"text-align: center;\""

    return-object p1

    :cond_1
    const-string p1, "style=\"text-align: left;\""

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private static ultimateCellType(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    return-object v0
.end method
