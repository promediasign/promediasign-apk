.class public Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private styleColor(Ljava/util/Formatter;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isAuto()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getRGBWithTint()[B

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getRGB()[B

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    aget-byte p3, v3, v2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aget-byte v4, v3, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aget-byte v3, v3, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    aput-object v4, v5, v0

    const/4 p2, 0x3

    aput-object v3, v5, p2

    const-string p2, "  %s: #%02x%02x%02x;%n"

    invoke-virtual {p1, p2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public colorStyles(Lorg/apache/poi/ss/usermodel/CellStyle;Ljava/util/Formatter;)V
    .locals 2

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFillForegroundXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    const-string v1, "background-color"

    invoke-direct {p0, p2, v1, v0}, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    const-string v1, "color"

    invoke-direct {p0, p2, v1, v0}, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    const-string v0, "border-left-color"

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getLeftBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    const-string v0, "border-right-color"

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getRightBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    const-string v0, "border-top-color"

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getTopBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    const-string v0, "border-bottom-color"

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getBottomBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;->styleColor(Ljava/util/Formatter;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    return-void
.end method
