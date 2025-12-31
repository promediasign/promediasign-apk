.class public final Landroidx/core/text/PrecomputedTextCompat$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/PrecomputedTextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    }
.end annotation


# instance fields
.field private final mBreakStrategy:I

.field private final mHyphenationFrequency:I

.field private final mPaint:Landroid/text/TextPaint;

.field private final mTextDir:Landroid/text/TextDirectionHeuristic;

.field final mWrapped:Landroid/text/PrecomputedText$Params;


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LV/a;->o(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-static {p1}, LV/a;->n(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-static {p1}, LV/a;->b(Landroid/text/PrecomputedText$Params;)I

    move-result v0

    iput v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-static {p1}, LV/a;->x(Landroid/text/PrecomputedText$Params;)I

    move-result v0

    iput v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    return-void
.end method

.method public constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, LV/a;->j(Landroid/text/TextPaint;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-static {v0, p3}, LV/a;->h(Landroid/text/PrecomputedText$Params$Builder;I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-static {v0, p4}, LV/a;->z(Landroid/text/PrecomputedText$Params$Builder;I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-static {v0, p2}, LV/a;->i(Landroid/text/PrecomputedText$Params$Builder;Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-static {v0}, LV/a;->k(Landroid/text/PrecomputedText$Params$Builder;)Landroid/text/PrecomputedText$Params;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iput p3, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    iput p4, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/core/text/PrecomputedTextCompat$Params;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/core/text/PrecomputedTextCompat$Params;

    invoke-virtual {p0, p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object p1

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v3

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v1

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v1

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lio/netty/handler/ssl/a;->c(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/ssl/a;->c(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    :cond_8
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    :cond_9
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_b

    return v2

    :cond_a
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public getBreakStrategy()I
    .locals 1

    iget v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    iget v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    return v0
.end method

.method public getTextDirection()Landroid/text/TextDirectionHeuristic;
    .locals 1

    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public hashCode()I
    .locals 16

    move-object/from16 v0, p0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xb

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x18

    if-lt v13, v14, :cond_0

    iget-object v13, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget-object v14, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v15, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    iget-object v1, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lio/netty/handler/ssl/a;->c(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    move-result-object v3

    iget-object v4, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    iget-object v5, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v13, v12, v11

    aput-object v14, v12, v10

    aput-object v15, v12, v9

    const/4 v9, 0x3

    aput-object v1, v12, v9

    const/4 v1, 0x4

    aput-object v2, v12, v1

    const/4 v1, 0x5

    aput-object v3, v12, v1

    const/4 v1, 0x6

    aput-object v4, v12, v1

    const/4 v1, 0x7

    aput-object v5, v12, v1

    const/16 v1, 0x8

    aput-object v6, v12, v1

    const/16 v1, 0x9

    aput-object v7, v12, v1

    const/16 v1, 0xa

    aput-object v8, v12, v1

    invoke-static {v12}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v6

    iget-object v7, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    iget-object v8, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v13, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v14, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v1, v12, v11

    aput-object v2, v12, v10

    aput-object v3, v12, v9

    const/4 v1, 0x3

    aput-object v4, v12, v1

    const/4 v1, 0x4

    aput-object v5, v12, v1

    const/4 v1, 0x5

    aput-object v6, v12, v1

    const/4 v1, 0x6

    aput-object v7, v12, v1

    const/4 v1, 0x7

    aput-object v8, v12, v1

    const/16 v1, 0x8

    aput-object v13, v12, v1

    const/16 v1, 0x9

    aput-object v14, v12, v1

    const/16 v1, 0xa

    aput-object v15, v12, v1

    invoke-static {v12}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "textSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", textScaleX="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", textSkewX="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", letterSpacing="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", elegantTextHeight="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    const-string v3, ", textLocale="

    if-lt v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lio/netty/handler/ssl/a;->c(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v3

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", typeface="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", variationSettings="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lf/a;->i(Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", textDir="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", breakStrategy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", hyphenationFrequency="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
