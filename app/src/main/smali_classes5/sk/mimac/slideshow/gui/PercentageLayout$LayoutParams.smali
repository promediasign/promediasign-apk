.class public Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/PercentageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private final heightPercentage:F

.field private final widthPercentage:F

.field private xPercentage:F

.field private yPercentage:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput p3, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->widthPercentage:F

    iput p4, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->heightPercentage:F

    iput p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->xPercentage:F

    iput p2, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->yPercentage:F

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->heightPercentage:F

    return p0
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->widthPercentage:F

    return p0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->xPercentage:F

    return p0
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->yPercentage:F

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    iget v2, p1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->xPercentage:F

    iget v3, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->xPercentage:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->yPercentage:F

    iget v3, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->yPercentage:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->widthPercentage:F

    iget v3, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->widthPercentage:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p1, p1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->heightPercentage:F

    iget v2, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->heightPercentage:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getHeightPercentage()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->heightPercentage:F

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->widthPercentage:F

    return v0
.end method

.method public getxPercentage()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->xPercentage:F

    return v0
.end method

.method public getyPercentage()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->yPercentage:F

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->xPercentage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->yPercentage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->widthPercentage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->heightPercentage:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setxPercentage(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->xPercentage:F

    return-void
.end method

.method public setyPercentage(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->yPercentage:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutParams{xPercentage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->xPercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->yPercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", widthPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->widthPercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", heightPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->heightPercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
