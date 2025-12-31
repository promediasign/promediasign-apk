.class Lorg/apache/poi/sl/draw/PathGradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Paint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;
    }
.end annotation


# instance fields
.field protected final capStyle:I

.field protected final colors:[Ljava/awt/Color;

.field protected final fractions:[F

.field protected final joinStyle:I

.field protected final transparency:I


# direct methods
.method public constructor <init>([Ljava/awt/Color;[F)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/sl/draw/PathGradientPaint;-><init>([Ljava/awt/Color;[FII)V

    return-void
.end method

.method public constructor <init>([Ljava/awt/Color;[FII)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Ljava/awt/Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->colors:[Ljava/awt/Color;

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->fractions:[F

    iput p3, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->capStyle:I

    iput p4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->joinStyle:I

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/awt/Color;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x3

    :goto_2
    iput p3, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->transparency:I

    return-void
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 8

    new-instance v7, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;-><init>(Lorg/apache/poi/sl/draw/PathGradientPaint;Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V

    return-object v7
.end method

.method public getTransparency()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->transparency:I

    return v0
.end method
