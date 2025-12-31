.class public Lorg/apache/poi/xslf/usermodel/XSLFColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _color:Ljava/awt/Color;

.field private _phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

.field private _xmlObject:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->LOGGER:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_color:Ljava/awt/Color;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFColor;)Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_color:Ljava/awt/Color;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getRawValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getPercentageValue(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getRawValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit16 p1, p1, 0x3e8

    :goto_0
    return p1
.end method

.method private getRawValue(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' $this//a:"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    .line 8
    .line 9
    const-string v1, "val"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v4, v0

    .line 20
    if-ne v4, v3, :cond_0

    .line 21
    .line 22
    aget-object v0, v0, v2

    .line 23
    .line 24
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    .line 48
    .line 49
    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    array-length v0, p1

    .line 54
    if-ne v0, v3, :cond_1

    .line 55
    .line 56
    aget-object p1, p1, v2

    .line 57
    .line 58
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 p1, -0x1

    .line 78
    return p1
.end method

.method private static isInt(F)Z
    .locals 4

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p0, p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getColor()Ljava/awt/Color;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFColor;)V

    return-object v0
.end method

.method public getShade()I
    .locals 1

    const-string v0, "shade"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTint()I
    .locals 1

    const-string v0, "tint"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 11
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    instance-of v5, v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    if-nez v5, :cond_0

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFColor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "XSLFColor.setColor currently only supports CTSolidColorFillProperties"

    aput-object v1, v0, v2

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSrgbClr()V

    :cond_1
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetScrgbClr()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetScrgbClr()V

    :cond_2
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetHslClr()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetHslClr()V

    :cond_3
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetPrstClr()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetPrstClr()V

    :cond_4
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSchemeClr()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSchemeClr()V

    :cond_5
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSysClr()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSysClr()V

    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/awt/Color;->getRGBComponents([F)[F

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    aget v7, v6, v1

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    :goto_0
    aget v8, v6, v2

    invoke-static {v8}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v8

    if-eqz v8, :cond_8

    aget v8, v6, v3

    invoke-static {v8}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v8

    if-eqz v8, :cond_8

    aget v8, v6, v0

    invoke-static {v8}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v4

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    new-array v10, v1, [B

    aput-byte v8, v10, v2

    aput-byte v9, v10, v3

    aput-byte p1, v10, v0

    invoke-interface {v4, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    if-eqz v7, :cond_9

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->addNewAlpha()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object v5

    goto :goto_1

    :cond_8
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    move-result-object p1

    aget v2, v6, v2

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawPaint;->srgb2lin(F)I

    move-result v2

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setR(I)V

    aget v2, v6, v3

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawPaint;->srgb2lin(F)I

    move-result v2

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setG(I)V

    aget v0, v6, v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->srgb2lin(F)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setB(I)V

    if-eqz v7, :cond_9

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->addNewAlpha()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object v5

    :cond_9
    :goto_1
    if-eqz v5, :cond_a

    const p1, 0x47c35000    # 100000.0f

    aget v0, v6, v1

    mul-float v0, v0, p1

    float-to-int p1, v0

    invoke-interface {v5, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;->setVal(I)V

    :cond_a
    return-void
.end method

.method public toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "*"

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_c

    aget-object v7, v1, v5

    instance-of v8, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    if-eqz v8, :cond_1

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->getHue2()I

    move-result v6

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->getSat2()I

    move-result v8

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->getLum2()I

    move-result v7

    int-to-double v9, v6

    const-wide v11, 0x40ed4c0000000000L    # 60000.0

    div-double v13, v9, v11

    int-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v15, v8, v10

    int-to-double v6, v7

    div-double v17, v6, v10

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v13 .. v20}, Lorg/apache/poi/sl/draw/DrawPaint;->HSL2RGB(DDDD)Ljava/awt/Color;

    move-result-object v6

    :cond_0
    :goto_1
    move-object/from16 v8, p2

    goto/16 :goto_3

    :cond_1
    instance-of v8, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    if-eqz v8, :cond_2

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/sl/usermodel/PresetColor;->valueOfOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PresetColor;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v6, v7, Lorg/apache/poi/sl/usermodel/PresetColor;->color:Ljava/awt/Color;

    goto :goto_1

    :cond_2
    instance-of v8, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    if-eqz v8, :cond_4

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_3
    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getCTColor(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, v7, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;

    move-result-object v6

    goto/16 :goto_3

    :cond_4
    move-object/from16 v8, p2

    instance-of v9, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    if-eqz v9, :cond_5

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    new-instance v6, Ljava/awt/Color;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->getR()I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/sl/draw/DrawPaint;->lin2srgb(I)F

    move-result v9

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->getG()I

    move-result v10

    invoke-static {v10}, Lorg/apache/poi/sl/draw/DrawPaint;->lin2srgb(I)F

    move-result v10

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->getB()I

    move-result v7

    invoke-static {v7}, Lorg/apache/poi/sl/draw/DrawPaint;->lin2srgb(I)F

    move-result v7

    invoke-direct {v6, v9, v10, v7}, Ljava/awt/Color;-><init>(FFF)V

    goto :goto_3

    :cond_5
    instance-of v9, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_6

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object v6

    new-instance v7, Ljava/awt/Color;

    aget-byte v9, v6, v4

    and-int/lit16 v9, v9, 0xff

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v7, v9, v11, v6}, Ljava/awt/Color;-><init>(III)V

    :goto_2
    move-object v6, v7

    goto :goto_3

    :cond_6
    instance-of v9, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    if-eqz v9, :cond_9

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->isSetLastClr()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getLastClr()[B

    move-result-object v6

    new-instance v7, Ljava/awt/Color;

    aget-byte v9, v6, v4

    and-int/lit16 v9, v9, 0xff

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v7, v9, v11, v6}, Ljava/awt/Color;-><init>(III)V

    goto :goto_2

    :cond_7
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/sl/usermodel/PresetColor;->valueOfOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PresetColor;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v6, v7, Lorg/apache/poi/sl/usermodel/PresetColor;->color:Ljava/awt/Color;

    :cond_8
    if-nez v6, :cond_a

    sget-object v6, Ljava/awt/Color;->black:Ljava/awt/Color;

    goto :goto_3

    :cond_9
    instance-of v9, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    if-eqz v9, :cond_b

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected color choice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    return-object v6
.end method
