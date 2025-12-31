.class public Lorg/apache/poi/xssf/usermodel/XSSFColor;
.super Lorg/apache/poi/ss/usermodel/ExtendedColor;
.source "SourceFile"


# instance fields
.field private final ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

.field private final indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->setColor(Ljava/awt/Color;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/IndexedColors;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 2

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    iget-short p1, p1, Lorg/apache/poi/ss/usermodel/IndexedColors;->index:S

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method public constructor <init>([BLorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 1

    .line 6
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    return-void
.end method

.method private sameARGB(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getARGB()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getARGB()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private sameAuto(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isAuto()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isAuto()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sameIndexed(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method private sameTheme(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTheme()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTheme()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method private sameTint(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTint()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTint()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public static toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only XSSFColor objects are supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameARGB(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameTheme(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameIndexed(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameTint(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameAuto(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getARGB()[B
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getRGBOrARGB()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    const/4 v3, 0x1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    return-object v0
.end method

.method public getIndex()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getIndexed()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result v0

    return v0
.end method

.method public getIndexedRGB()[B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/xssf/usermodel/IndexedColorMap;->getRGB(I)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;->getDefaultRGB(I)[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRGB()[B
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getRGBOrARGB()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    new-array v2, v1, [B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public getStoredRBG()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object v0

    return-object v0
.end method

.method public getTheme()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTheme()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getTint()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTint()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasAlpha()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasTint()Z
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTint()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTint()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAuto()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getAuto()Z

    move-result v0

    return v0
.end method

.method public isIndexed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v0

    return v0
.end method

.method public isRGB()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v0

    return v0
.end method

.method public isThemed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTheme()Z

    move-result v0

    return v0
.end method

.method public setAuto(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setAuto(Z)V

    return-void
.end method

.method public setIndexed(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    return-void
.end method

.method public setRGB([B)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    return-void
.end method

.method public setTheme(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTheme(J)V

    return-void
.end method

.method public setTint(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTint(D)V

    return-void
.end method
