.class public Lsk/mimac/slideshow/utils/SuffixEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private final firstLineBounds:Landroid/graphics/Rect;

.field private suffix:Ljava/lang/String;

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->firstLineBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->firstLineBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    iget-object v0, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->suffix:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->firstLineBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->suffix:Ljava/lang/String;

    iget-object v3, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->suffix:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/SuffixEditText;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
