.class public Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;
.super Lorg/apache/poi/ss/usermodel/ExtendedColor;
.source "SourceFile"


# instance fields
.field private color:Lorg/apache/poi/hssf/record/common/ExtendedColor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method


# virtual methods
.method public getARGB()[B
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getRGBA()[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, v1, v4

    aput-byte v1, v0, v3

    return-object v0
.end method

.method public getExtendedColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object v0
.end method

.method public getIndex()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getColorIndex()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getIndexedRGB()[B
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->isIndexed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getIndex()S

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getIndex()S

    move-result v3

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/util/HSSFColor;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v4

    aget-short v4, v4, v2

    int-to-byte v4, v4

    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v5

    aget-short v5, v5, v1

    int-to-byte v5, v5

    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v3

    aget-short v3, v3, v0

    int-to-byte v3, v3

    const/4 v6, 0x3

    new-array v6, v6, [B

    aput-byte v4, v6, v2

    aput-byte v5, v6, v1

    aput-byte v3, v6, v0

    return-object v6

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRGB()[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getRGBA()[B

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getStoredRBG()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getARGB()[B

    move-result-object v0

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getThemeIndex()I

    move-result v0

    return v0
.end method

.method public getTint()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getTint()D

    move-result-wide v0

    return-wide v0
.end method

.method public isAuto()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndexed()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRGB()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThemed()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setRGB([B)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, -0x1

    aput-byte p1, v0, v3

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v2

    const/4 v4, 0x1

    aget-byte v5, p1, v4

    aput-byte v5, p1, v2

    aget-byte v2, p1, v1

    aput-byte v2, p1, v4

    aget-byte v2, p1, v3

    aput-byte v2, p1, v1

    aput-byte v0, p1, v3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setRGBA([B)V

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setType(I)V

    return-void
.end method

.method public setTint(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setTint(D)V

    return-void
.end method
