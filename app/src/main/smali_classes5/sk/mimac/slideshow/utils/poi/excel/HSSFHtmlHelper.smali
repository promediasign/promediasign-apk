.class public Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;


# static fields
.field private static final HSSF_AUTO:Lorg/apache/poi/hssf/util/HSSFColor;


# instance fields
.field private final colors:Lorg/apache/poi/hssf/usermodel/HSSFPalette;

.field private final wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->HSSF_AUTO:Lorg/apache/poi/hssf/util/HSSFColor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->colors:Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    return-void
.end method

.method private styleColor(Ljava/util/Formatter;Ljava/lang/String;S)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->colors:Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    invoke-virtual {v3, p3}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->HSSF_AUTO:Lorg/apache/poi/hssf/util/HSSFColor;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v4

    if-eq p3, v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object p3

    aget-short v3, p3, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aget-short v4, p3, v1

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aget-short p3, p3, v0

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v2

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    const/4 p2, 0x3

    aput-object p3, v5, p2

    const-string p2, "  %s: #%02x%02x%02x;%n"

    invoke-virtual {p1, p2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_0
    return-void
.end method


# virtual methods
.method public colorStyles(Lorg/apache/poi/ss/usermodel/CellStyle;Ljava/util/Formatter;)V
    .locals 2

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillForegroundColor()S

    move-result v0

    const-string v1, "background-color"

    invoke-direct {p0, p2, v1, v0}, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;S)V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFont(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getColor()S

    move-result v0

    const-string v1, "color"

    invoke-direct {p0, p2, v1, v0}, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;S)V

    const-string v0, "border-left-color"

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getLeftBorderColor()S

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;S)V

    const-string v0, "border-right-color"

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getRightBorderColor()S

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;S)V

    const-string v0, "border-top-color"

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getTopBorderColor()S

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;S)V

    const-string v0, "border-bottom-color"

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getBottomBorderColor()S

    move-result p1

    invoke-direct {p0, p2, v0, p1}, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;S)V

    return-void
.end method
