.class public abstract Lcom/hivemq/client/internal/util/Pow2Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static roundToPowerOf2Bits(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0
.end method
