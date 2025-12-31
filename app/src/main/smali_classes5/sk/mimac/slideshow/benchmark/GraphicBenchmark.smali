.class public Lsk/mimac/slideshow/benchmark/GraphicBenchmark;
.super Lsk/mimac/slideshow/benchmark/AbstractBenchmark;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;-><init>()V

    return-void
.end method


# virtual methods
.method public doCalculations()V
    .locals 16

    const/16 v0, 0x8

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0x15e

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v6, 0xfa

    invoke-static {v6, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v4, -0xffff01

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v10, 0x433e0000    # 190.0f

    const/high16 v11, 0x43910000    # 290.0f

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x42480000    # 50.0f

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v4, 0x3b6

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v7, 0x6a4

    invoke-static {v7, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_0
    const/16 v8, 0x1c

    if-ge v14, v8, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    mul-int/lit8 v9, v14, 0x2

    int-to-float v10, v9

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    rem-int/lit8 v10, v14, 0x2

    if-nez v10, :cond_0

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_0
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    add-int/2addr v9, v3

    const/16 v10, 0x32

    invoke-static {v10, v10, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v14

    const/4 v11, 0x0

    const-string v12, "Text 123456 how are you?"

    invoke-virtual {v5, v12, v9, v11, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v14, 0xa

    const/16 v9, 0x69f

    const/16 v11, 0x3b1

    invoke-virtual {v5, v8, v3, v9, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v9, 0x3f000000    # 0.5f

    const v11, 0x3f99999a    # 1.2f

    invoke-virtual {v8, v9, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    mul-int/lit8 v8, v14, 0x5

    const/16 v9, 0x28

    invoke-static {v9, v8, v10, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v9, 0x41280000    # 10.5f

    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v13, v8

    const/high16 v11, 0x42480000    # 50.0f

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v10, 0x41a00000    # 20.0f

    move-object v8, v5

    move v9, v13

    move v3, v13

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    const v10, 0x44d34000    # 1690.0f

    const v11, 0x446d8000    # 950.0f

    const/high16 v12, 0x43480000    # 200.0f

    const/high16 v13, 0x437a0000    # 250.0f

    invoke-direct {v9, v12, v13, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v10, v0, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v5, v8, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v8, Landroid/graphics/RectF;

    const/high16 v9, 0x43c80000    # 400.0f

    const/high16 v10, 0x43e10000    # 450.0f

    invoke-direct {v8, v9, v9, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v8, v3, v1, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v3, v14, 0x8

    int-to-float v3, v3

    invoke-virtual {v5, v12, v12, v3, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    add-int/2addr v14, v2

    const/16 v3, 0xa

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {v4, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v7, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bitmap width doesn\'t match (expected=1700, actual="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x41000000    # 8.0f
        0x40e00000    # 7.0f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Graphic processing"

    return-object v0
.end method
