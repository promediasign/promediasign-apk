.class Lcom/scand/svg/parser/Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field attributes:Lorg/xml/sax/Attributes;

.field style:Lcom/scand/svg/css/InlineRule;


# direct methods
.method public constructor <init>(Lorg/xml/sax/Attributes;Lcom/scand/svg/css/InlineRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    iput-object p2, p0, Lcom/scand/svg/parser/Properties;->style:Lcom/scand/svg/css/InlineRule;

    return-void
.end method

.method public static getNamedColor(Ljava/lang/String;)Lcom/scand/svg/parser/support/ColorSVG;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "rgb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/scand/svg/parser/support/ColorSVG;

    invoke-direct {v2, p0, v0, v1}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(III)V

    return-object v2

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/scand/svg/parser/Colors;->getColor(Ljava/lang/String;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getColor(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;
    .locals 9

    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/scand/svg/parser/PaintData;->fillOpacity:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz p2, :cond_1

    iget-object v4, p2, Lcom/scand/svg/parser/PaintData;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const-string v5, "fill-"

    goto :goto_2

    :cond_2
    move-object v5, v2

    move-object v1, v3

    move-object v4, v1

    :goto_2
    const-string v6, "stroke"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/scand/svg/parser/PaintData;->strokeOpacity:Ljava/lang/Float;

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    if-eqz p2, :cond_4

    iget-object v4, p2, Lcom/scand/svg/parser/PaintData;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    goto :goto_4

    :cond_4
    move-object v4, v3

    :goto_4
    const-string v5, "stroke-"

    :cond_5
    const-string v6, "stop"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, "stop-"

    :cond_6
    const-string v6, "opacity"

    invoke-virtual {p0, v6}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    if-nez v7, :cond_7

    if-eqz p2, :cond_7

    iget-object v7, p2, Lcom/scand/svg/parser/PaintData;->opacity:Ljava/lang/Float;

    :cond_7
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p2, :cond_a

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz v7, :cond_9

    :goto_5
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_9
    mul-float p2, p2, v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz v7, :cond_9

    goto :goto_5

    :goto_6
    const/4 p2, 0x0

    if-eqz v7, :cond_b

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float v5, v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/scand/svg/parser/support/ColorSVG;->createNoneColor()Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 v6, 0x1

    if-eqz v5, :cond_11

    const-string v8, "#"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_8

    :cond_d
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    invoke-virtual {v5, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    :cond_e
    const/16 p1, 0x10

    invoke-static {v5, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz v7, :cond_f

    new-instance p2, Lcom/scand/svg/parser/support/ColorSVG;

    or-int/2addr p1, v1

    invoke-direct {p2, p1, v6}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(IZ)V

    return-object p2

    :cond_f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    new-instance v0, Lcom/scand/svg/parser/support/ColorSVG;

    invoke-direct {v0, p1, p2}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(IZ)V

    return-object v0

    :cond_10
    new-instance p2, Lcom/scand/svg/parser/support/ColorSVG;

    invoke-direct {p2, p1}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    invoke-static {v5}, Lcom/scand/svg/parser/Properties;->getNamedColor(Ljava/lang/String;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object p1

    return-object p1

    :cond_11
    :goto_8
    if-eqz v7, :cond_16

    if-nez v5, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {v5}, Lcom/scand/svg/parser/Properties;->getNamedColor(Ljava/lang/String;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v4

    :goto_9
    if-nez v4, :cond_14

    if-eqz v1, :cond_13

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Lcom/scand/svg/parser/support/ColorSVG;

    invoke-direct {p1, v1, v6}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(IZ)V

    return-object p1

    :cond_13
    return-object v3

    :cond_14
    iget-boolean p1, v4, Lcom/scand/svg/parser/support/ColorSVG;->isNone:Z

    if-nez p1, :cond_15

    invoke-virtual {v4}, Lcom/scand/svg/parser/support/ColorSVG;->getRGB()I

    move-result p1

    const p2, 0xffffff

    and-int/2addr p1, p2

    new-instance p2, Lcom/scand/svg/parser/support/ColorSVG;

    or-int/2addr p1, v1

    invoke-direct {p2, p1, v6}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(IZ)V

    return-object p2

    :cond_15
    return-object v4

    :cond_16
    if-nez v5, :cond_17

    return-object v4

    :cond_17
    invoke-static {v5}, Lcom/scand/svg/parser/Properties;->getNamedColor(Ljava/lang/String;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p2, "in"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x42c00000    # 96.0f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    :goto_0
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_2
    const-string v2, "pt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const p2, 0x3fa66666    # 1.3f

    .line 7
    :cond_3
    const-string v2, "cm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const p2, 0x420dbb77

    .line 9
    :cond_4
    const-string v2, "mm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const p2, 0x4062c58b

    .line 11
    :cond_5
    const-string v2, "em"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x41800000    # 16.0f

    .line 13
    :cond_6
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p2, 0x1

    .line 14
    invoke-static {p1, p2, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const p2, 0x3c23d70a    # 0.01f

    .line 15
    :cond_7
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    new-instance v0, Ljava/lang/Float;

    mul-float p1, p1, p2

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 5

    iget-object v0, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "in"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x42c00000    # 96.0f

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    :goto_0
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_3
    const-string v2, "pt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const p2, 0x3fa66666    # 1.3f

    .line 7
    :cond_4
    const-string v2, "cm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const p2, 0x420dbb77

    .line 9
    :cond_5
    const-string v2, "mm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const p2, 0x4062c58b

    .line 11
    :cond_6
    const-string v2, "em"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 12
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x41800000    # 16.0f

    .line 13
    :cond_7
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p2, 0x1

    .line 14
    invoke-static {p1, p2, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const p2, 0x3c23d70a    # 0.01f

    :cond_8
    const/16 v0, 0x20

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_9
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-ltz v3, :cond_b

    if-lez v0, :cond_a

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_a
    move v4, v3

    const/4 v0, -0x1

    const/4 v3, -0x1

    :cond_b
    if-ltz v0, :cond_c

    if-lez v3, :cond_d

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_c
    move v0, v4

    :cond_d
    :goto_1
    if-lez v0, :cond_e

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    :goto_2
    new-instance v0, Ljava/lang/Float;

    mul-float p1, p1, p2

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    :cond_e
    throw v2
.end method

.method public getNumberParseAttr(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/scand/svg/parser/Numbers;->parseNumbers(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOpacityColorForGradient(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;
    .locals 4

    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/scand/svg/parser/PaintData;->fillOpacity:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "fill-"

    goto :goto_1

    :cond_1
    const-string v2, ""

    move-object v0, v1

    :goto_1
    const-string v3, "stroke"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/scand/svg/parser/PaintData;->strokeOpacity:Ljava/lang/Float;

    :cond_2
    const-string v2, "stroke-"

    move-object v0, v1

    :cond_3
    const-string v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "stop-"

    :cond_4
    const-string v1, "opacity"

    invoke-virtual {p0, v1}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_5

    iget-object v3, p2, Lcom/scand/svg/parser/PaintData;->opacity:Ljava/lang/Float;

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_8

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_7
    mul-float p2, p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz v3, :cond_7

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_9

    const/high16 p2, 0x437f0000    # 255.0f

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_4

    :cond_9
    const/16 p2, 0xff

    :goto_4
    shl-int/lit8 p2, p2, 0x18

    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lcom/scand/svg/parser/support/ColorSVG;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(IZ)V

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/Properties;->style:Lcom/scand/svg/css/InlineRule;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/BaseRule;->get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/scand/svg/css/CSSValue;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p2

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_1
    const-string v0, "in"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-static {p1, v1, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/high16 v0, 0x42c00000    # 96.0f

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    :goto_0
    const-string v3, "px"

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-static {p1, v1, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_3
    const-string v3, "pt"

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-static {p1, v1, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 57
    .line 58
    :cond_4
    const-string v3, "cm"

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    invoke-static {p1, v1, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const v0, 0x420dbb77

    .line 71
    .line 72
    .line 73
    :cond_5
    const-string v3, "mm"

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    invoke-static {p1, v1, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const v0, 0x4062c58b

    .line 86
    .line 87
    .line 88
    :cond_6
    const-string v3, "em"

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    invoke-static {p1, v1, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/high16 v0, 0x41800000    # 16.0f

    .line 101
    .line 102
    :cond_7
    const-string v1, "%"

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_8

    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    invoke-static {p1, v0, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v0, Ljava/lang/Float;

    .line 116
    .line 117
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const v1, 0x3c23d70a    # 0.01f

    .line 122
    .line 123
    .line 124
    mul-float p1, p1, v1

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    mul-float p2, p2, p1

    .line 131
    .line 132
    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_8
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 137
    .line 138
    .line 139
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_2

    .line 141
    :catch_0
    move-exception p2

    .line 142
    const/16 v1, 0x2c

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    const/16 v3, 0x20

    .line 149
    .line 150
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    const/4 v4, -0x1

    .line 155
    if-ltz v1, :cond_a

    .line 156
    .line 157
    if-lez v3, :cond_9

    .line 158
    .line 159
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    :cond_9
    move v4, v1

    .line 164
    const/4 v1, -0x1

    .line 165
    const/4 v3, -0x1

    .line 166
    :cond_a
    if-ltz v3, :cond_b

    .line 167
    .line 168
    if-lez v1, :cond_c

    .line 169
    .line 170
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    goto :goto_1

    .line 175
    :cond_b
    move v3, v4

    .line 176
    :cond_c
    :goto_1
    if-lez v3, :cond_d

    .line 177
    .line 178
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    :goto_2
    new-instance p2, Ljava/lang/Float;

    .line 187
    .line 188
    mul-float p1, p1, v0

    .line 189
    .line 190
    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    .line 191
    .line 192
    .line 193
    return-object p2

    .line 194
    :cond_d
    throw p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    .line 5
    .line 6
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    .line 17
    .line 18
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "="

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    .line 31
    .line 32
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/scand/svg/parser/Properties;->attributes:Lorg/xml/sax/Attributes;

    .line 44
    .line 45
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/lit8 v2, v2, -0x1

    .line 50
    .line 51
    if-ge v1, v2, :cond_0

    .line 52
    .line 53
    const-string v2, ", "

    .line 54
    .line 55
    invoke-static {v0, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method
