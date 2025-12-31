.class public abstract Lcom/fasterxml/aalto/util/TextUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isAllWhitespace(Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    if-eqz p1, :cond_0

    const/16 v4, 0x85

    if-eq v3, v4, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllWhitespace([CIIZ)Z
    .locals 2

    .line 2
    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_2

    aget-char v0, p0, p1

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    if-eqz p3, :cond_0

    const/16 v1, 0x85

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
