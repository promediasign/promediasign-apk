.class public Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;


# instance fields
.field private final border:Lorg/apache/poi/ss/usermodel/BorderFormatting;

.field private final colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private final fill:Lorg/apache/poi/ss/usermodel/PatternFormatting;

.field private final font:Lorg/apache/poi/ss/usermodel/FontFormatting;

.field private final number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

.field private final stripeSize:I


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->stripeSize:I

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->border:Lorg/apache/poi/ss/usermodel/BorderFormatting;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->font:Lorg/apache/poi/ss/usermodel/FontFormatting;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    :cond_0
    :goto_0
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->fill:Lorg/apache/poi/ss/usermodel/PatternFormatting;

    goto :goto_4

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetBorder()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->border:Lorg/apache/poi/ss/usermodel/BorderFormatting;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFont()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    goto :goto_2

    :cond_3
    move-object v0, p2

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->font:Lorg/apache/poi/ss/usermodel/FontFormatting;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetNumFmt()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getNumFmtId()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    goto :goto_3

    :cond_4
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    :goto_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFill()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    goto :goto_0

    :goto_4
    return-void
.end method


# virtual methods
.method public getBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->border:Lorg/apache/poi/ss/usermodel/BorderFormatting;

    return-object v0
.end method

.method public getFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->font:Lorg/apache/poi/ss/usermodel/FontFormatting;

    return-object v0
.end method

.method public getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    return-object v0
.end method

.method public getPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->fill:Lorg/apache/poi/ss/usermodel/PatternFormatting;

    return-object v0
.end method

.method public getStripeSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->stripeSize:I

    return v0
.end method
