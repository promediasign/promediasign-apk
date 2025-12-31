.class public Lcom/scand/svg/parser/support/ColorSVG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isNone:Z

.field public mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ColorSVG;->isNone:Z

    iput p1, p0, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ColorSVG;->isNone:Z

    const/16 v0, 0xff

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ColorSVG;->isNone:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v1, 0xff

    invoke-static {v1, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static createNoneColor()Lcom/scand/svg/parser/support/ColorSVG;
    .locals 2

    new-instance v0, Lcom/scand/svg/parser/support/ColorSVG;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/scand/svg/parser/support/ColorSVG;->isNone:Z

    return-object v0
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    return v0
.end method

.method public getRGB()I
    .locals 1

    iget v0, p0, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    return v0
.end method
