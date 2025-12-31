.class public Lcom/illposed/osc/argument/OSCColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/illposed/osc/argument/OSCColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final alpha:B

.field private final blue:B

.field private final green:B

.field private final red:B


# direct methods
.method public constructor <init>(BBBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/illposed/osc/argument/OSCColor;->red:B

    iput-byte p2, p0, Lcom/illposed/osc/argument/OSCColor;->green:B

    iput-byte p3, p0, Lcom/illposed/osc/argument/OSCColor;->blue:B

    iput-byte p4, p0, Lcom/illposed/osc/argument/OSCColor;->alpha:B

    return-void
.end method


# virtual methods
.method public clone()Lcom/illposed/osc/argument/OSCColor;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/OSCColor;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->clone()Lcom/illposed/osc/argument/OSCColor;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/illposed/osc/argument/OSCColor;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCColor;->hashCode()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/illposed/osc/argument/OSCColor;

    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/OSCColor;->compareTo(Lcom/illposed/osc/argument/OSCColor;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/illposed/osc/argument/OSCColor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/illposed/osc/argument/OSCColor;

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->getRed()B

    move-result v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCColor;->getRed()B

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->getGreen()B

    move-result v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCColor;->getGreen()B

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->getBlue()B

    move-result v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCColor;->getBlue()B

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->getAlpha()B

    move-result v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCColor;->getAlpha()B

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAlpha()B
    .locals 1

    iget-byte v0, p0, Lcom/illposed/osc/argument/OSCColor;->alpha:B

    return v0
.end method

.method public getBlue()B
    .locals 1

    iget-byte v0, p0, Lcom/illposed/osc/argument/OSCColor;->blue:B

    return v0
.end method

.method public getGreen()B
    .locals 1

    iget-byte v0, p0, Lcom/illposed/osc/argument/OSCColor;->green:B

    return v0
.end method

.method public getRed()B
    .locals 1

    iget-byte v0, p0, Lcom/illposed/osc/argument/OSCColor;->red:B

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->getRed()B

    move-result v0

    add-int/lit16 v0, v0, 0x2a7

    mul-int/lit8 v0, v0, 0x61

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->getGreen()B

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->getBlue()B

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCColor;->getAlpha()B

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
