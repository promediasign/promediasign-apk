.class public Lorg/apache/poi/ss/util/SheetUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

.field private static final fontRenderContext:Ljava/awt/font/FontRenderContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/util/SheetUtil$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/SheetUtil$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    new-instance v0, Ljava/awt/font/FontRenderContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canComputeColumnWidth(Lorg/apache/poi/ss/usermodel/Font;)Z
    .locals 5

    new-instance v0, Ljava/text/AttributedString;

    const-string v1, "1w"

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    new-instance p0, Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {p0, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p0}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpl-double p0, v0, v3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result p0

    return p0
.end method

.method private static copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V
    .locals 2

    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    sget-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getFontHeightInPoints()S

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getBold()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getItalic()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getUnderline()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    sget-object p0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-virtual {p1, p0, v0, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public static getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCellWidth(IILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D
    .locals 7

    .line 1
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {p5}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p5

    sget-object v1, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v0, p5, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result p5

    if-eqz p5, :cond_0

    new-instance p5, Ljava/awt/geom/AffineTransform;

    invoke-direct {p5}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v5

    const-wide v5, 0x4076800000000000L    # 360.0

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v0, p5}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object p5

    invoke-interface {p5}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p5

    :goto_0
    invoke-virtual {p5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual {p5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result p0

    int-to-double p0, p0

    add-double/2addr v0, p0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D
    .locals 12

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v11, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p3, :cond_1

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    :cond_1
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p0

    invoke-interface {v2, p0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v5

    sub-int v11, v6, v5

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p3

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v2, :cond_3

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_3
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    if-ne v0, v2, :cond_4

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "\\n"

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_7

    aget-object v2, p0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/text/AttributedString;

    invoke-direct {v10, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v10, v3, v2}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    move v5, p1

    move v6, v11

    move-object v7, p3

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(IILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D

    move-result-wide v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v2, :cond_5

    :try_start_0
    sget-object v0, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    invoke-virtual {p2, p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, p2, :cond_6

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_7

    const-string p2, "0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v10, Ljava/text/AttributedString;

    invoke-direct {v10, p0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v1, v10, v3, p0}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    move v5, p1

    move v6, v11

    move-object v7, p3

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(IILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D

    move-result-wide v8

    :cond_7
    return-wide v8
.end method

.method public static getCellWithMerges(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 3

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v2

    invoke-interface {p0, v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p0

    invoke-interface {v2, p0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getFirstRowNum()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getLastRowNum()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZII)D
    .locals 6

    .line 2
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/SheetUtil;->getDefaultCharWidth(Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result v1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    if-gt p3, p4, :cond_1

    invoke-interface {p0, p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4, p1, v1, v0, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidthForRow(Lorg/apache/poi/ss/usermodel/Row;IILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static getColumnWidthForRow(Lorg/apache/poi/ss/usermodel/Row;IILorg/apache/poi/ss/usermodel/DataFormatter;Z)D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    invoke-static {p0, p2, p3, p4}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDefaultCharWidth(Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object p0

    new-instance v1, Ljava/text/AttributedString;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    new-instance p0, Ljava/awt/font/TextLayout;

    invoke-virtual {v1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {p0, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
