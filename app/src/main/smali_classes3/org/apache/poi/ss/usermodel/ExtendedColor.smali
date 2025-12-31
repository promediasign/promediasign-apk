.class public abstract Lorg/apache/poi/ss/usermodel/ExtendedColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Color;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyTint(ID)B
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-lez v4, :cond_0

    int-to-double v2, p0

    sub-double/2addr v0, p1

    mul-double v2, v2, v0

    const-wide p0, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, p0

    sub-double/2addr p0, v0

    add-double/2addr p0, v2

    double-to-int p0, p0

    :goto_0
    int-to-byte p0, p0

    return p0

    :cond_0
    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    int-to-double v2, p0

    add-double/2addr p1, v0

    mul-double p1, p1, v2

    double-to-int p0, p1

    goto :goto_0

    :cond_1
    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public abstract getARGB()[B
.end method

.method public getARGBHex()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getARGB()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIndex()S
.end method

.method public abstract getIndexedRGB()[B
.end method

.method public abstract getRGB()[B
.end method

.method public getRGBOrARGB()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getIndex()S

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getIndexedRGB()[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getStoredRBG()[B

    move-result-object v0

    return-object v0
.end method

.method public getRGBWithTint()[B
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getStoredRBG()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    new-array v2, v1, [B

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getTint()D

    move-result-wide v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4, v1, v2}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->applyTint(ID)B

    move-result v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public abstract getStoredRBG()[B
.end method

.method public abstract getTheme()I
.end method

.method public abstract getTint()D
.end method

.method public abstract isAuto()Z
.end method

.method public abstract isIndexed()Z
.end method

.method public abstract isRGB()Z
.end method

.method public abstract isThemed()Z
.end method

.method public setARGBHex(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be of the form 112233 or FFEEDDCC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v5, v4, 0x2

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    move v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->setRGB([B)V

    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 4

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    const/4 v0, 0x2

    aput-byte p1, v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->setRGB([B)V

    return-void
.end method

.method public abstract setRGB([B)V
.end method

.method public abstract setTint(D)V
.end method
