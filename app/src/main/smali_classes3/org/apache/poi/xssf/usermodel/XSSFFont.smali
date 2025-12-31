.class public Lorg/apache/poi/xssf/usermodel/XSSFFont;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Font;


# static fields
.field public static final DEFAULT_FONT_COLOR:S

.field public static final DEFAULT_FONT_NAME:Ljava/lang/String; = "Calibri"

.field public static final DEFAULT_FONT_SIZE:S = 0xbs


# instance fields
.field private _ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

.field private _index:S

.field private _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private _themes:Lorg/apache/poi/xssf/model/ThemesTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v0

    sput-short v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const-string v0, "Calibri"

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontName(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4026000000000000L    # 11.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeight(D)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 p1, 0x0

    iput-short p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_index:S

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    int-to-short p1, p2

    iput-short p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_index:S

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method private getFontHeightRaw()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSzArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->getVal()D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x4026000000000000L    # 11.0

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBold()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfBArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    return-object v0
.end method

.method public getCharSet()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfCharsetArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getCharsetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->ANSI:Lorg/apache/poi/ss/usermodel/FontCharset;

    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FontCharset;->getValue()I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->getVal()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FontCharset;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontCharset;

    move-result-object v0

    goto :goto_1

    :goto_2
    return v0
.end method

.method public getColor()S
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v0

    return v0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v0

    sget-short v2, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    sget-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v0

    return v0

    :cond_2
    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v0

    return v0

    :cond_3
    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getFamily()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfFamilyArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getFamilyArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->NOT_APPLICABLE:Lorg/apache/poi/ss/usermodel/FontFamily;

    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FontFamily;->getValue()I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->getVal()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FontFamily;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontFamily;

    move-result-object v0

    goto :goto_1

    :goto_2
    return v0
.end method

.method public getFontHeight()S
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontHeightRaw()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getFontHeightInPoints()S
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontHeightRaw()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfNameArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Calibri"

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->getVal()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_index:S

    return v0
.end method

.method public getItalic()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfIArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getScheme()Lorg/apache/poi/ss/usermodel/FontScheme;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSchemeArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSchemeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/FontScheme;->NONE:Lorg/apache/poi/ss/usermodel/FontScheme;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FontScheme;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontScheme;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getStrikeout()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfStrikeArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getStrikeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getThemeColor()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTheme()J

    move-result-wide v0

    :goto_1
    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getTypeOffset()S
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfVertAlignArray()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getVertAlignArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v0, v2, :cond_4

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    if-ne v0, v2, :cond_2

    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    new-instance v1, Lorg/apache/poi/POIXMLException;

    .line 40
    .line 41
    const-string v2, "Wrong offset value "

    .line 42
    .line 43
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_3
    return v2

    .line 52
    :cond_4
    return v1
.end method

.method public getUnderline()B
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FontUnderline;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontUnderline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FontUnderline;->getByteValue()B

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_themes:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/ThemesTable;->inheritFromThemeAsRequired(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public registerTo(Lorg/apache/poi/xssf/model/StylesTable;)J
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/model/StylesTable;->getTheme()Lorg/apache/poi/xssf/model/ThemesTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_themes:Lorg/apache/poi/xssf/model/ThemesTable;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;Z)I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_index:S

    int-to-long v0, p1

    return-wide v0
.end method

.method public setBold(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfBArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setBArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    :goto_1
    return-void
.end method

.method public setCharSet(B)V
    .locals 0

    .line 1
    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setCharSet(I)V

    return-void
.end method

.method public setCharSet(I)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FontCharset;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontCharset;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setCharSet(Lorg/apache/poi/ss/usermodel/FontCharset;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "Attention: an attempt to set a type of unknow charset and charset"

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCharSet(Lorg/apache/poi/ss/usermodel/FontCharset;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfCharsetArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewCharset()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getCharsetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontCharset;->getValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->setVal(I)V

    return-void
.end method

.method public setColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setColorArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->unsetIndexed()V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getRGB()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    :goto_1
    return-void
.end method

.method public setColor(S)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    :goto_0
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7fff

    if-eq p1, v1, :cond_1

    :goto_1
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    goto :goto_2

    :cond_1
    sget-short p1, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/apache/poi/ss/usermodel/IndexedColors;->RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method public setFamily(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfFamilyArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewFamily()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getFamilyArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->setVal(I)V

    return-void
.end method

.method public setFamily(Lorg/apache/poi/ss/usermodel/FontFamily;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontFamily;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFamily(I)V

    return-void
.end method

.method public setFontHeight(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSzArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewSz()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->setVal(D)V

    return-void
.end method

.method public setFontHeight(S)V
    .locals 4

    .line 2
    int-to-double v0, p1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeight(D)V

    return-void
.end method

.method public setFontHeightInPoints(S)V
    .locals 2

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeight(D)V

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfNameArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "Calibri"

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->setVal(Ljava/lang/String;)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfIArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewI()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setIArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    :goto_1
    return-void
.end method

.method public setScheme(Lorg/apache/poi/ss/usermodel/FontScheme;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSchemeArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewScheme()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSchemeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontScheme;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;)V

    return-void
.end method

.method public setStrikeout(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setStrikeArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfStrikeArray()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewStrike()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getStrikeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    :goto_1
    return-void
.end method

.method public setThemeColor(S)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    :goto_0
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTheme(J)V

    return-void
.end method

.method public setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_themes:Lorg/apache/poi/xssf/model/ThemesTable;

    return-void
.end method

.method public setTypeOffset(S)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setVertAlignArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;)V

    .line 7
    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfVertAlignArray()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 19
    .line 20
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewVertAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getVertAlignArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    if-eqz p1, :cond_4

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-eq p1, v1, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun;->SUBSCRIPT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v1, "Invalid type offset: "

    .line 49
    .line 50
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_3
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun;->SUPERSCRIPT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    .line 59
    .line 60
    :goto_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun;->BASELINE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :goto_2
    return-void
.end method

.method public setUnderline(B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->valueOf(B)Lorg/apache/poi/ss/usermodel/FontUnderline;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setUnderline(Lorg/apache/poi/ss/usermodel/FontUnderline;)V

    return-void
.end method

.method public setUnderline(Lorg/apache/poi/ss/usermodel/FontUnderline;)V
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->NONE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setUArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewU()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;)V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
