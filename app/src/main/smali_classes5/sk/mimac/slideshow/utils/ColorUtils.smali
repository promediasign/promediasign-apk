.class public abstract Lsk/mimac/slideshow/utils/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getBackgroundComplementaryColor(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    rsub-int p0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v0, v2

    const/high16 v2, 0x44000000    # 512.0f

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static parseColorRGBA(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/32 v2, -0x1000000

    or-long/2addr v0, v2

    :goto_0
    long-to-int p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown color: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
