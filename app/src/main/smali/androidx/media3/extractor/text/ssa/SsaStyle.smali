.class final Landroidx/media3/extractor/text/ssa/SsaStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/ssa/SsaStyle$Format;,
        Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;
    }
.end annotation


# instance fields
.field public final alignment:I

.field public final bold:Z

.field public final borderStyle:I

.field public final fontSize:F

.field public final italic:Z

.field public final name:Ljava/lang/String;

.field public final outlineColor:Ljava/lang/Integer;

.field public final primaryColor:Ljava/lang/Integer;

.field public final strikeout:Z

.field public final underline:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->alignment:I

    iput-object p3, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    iput-object p4, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    iput p5, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->fontSize:F

    iput-boolean p6, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->bold:Z

    iput-boolean p7, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->italic:Z

    iput-boolean p8, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->underline:Z

    iput-boolean p9, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->strikeout:Z

    iput p10, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->borderStyle:I

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static fromStyleLine(Ljava/lang/String;Landroidx/media3/extractor/text/ssa/SsaStyle$Format;)Landroidx/media3/extractor/text/ssa/SsaStyle;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Style:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    const-string v7, "SsaStyle"

    const/4 v8, 0x0

    if-eq v5, v6, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v4, v5, v2

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v0, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    invoke-static {v0, v5}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_0
    :try_start_0
    new-instance v5, Landroidx/media3/extractor/text/ssa/SsaStyle;

    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v6

    move v11, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    const/4 v11, -0x1

    :goto_0
    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    if-eq v6, v9, :cond_2

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v12, v6

    goto :goto_1

    :cond_2
    move-object v12, v8

    :goto_1
    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    if-eq v6, v9, :cond_3

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v13, v6

    goto :goto_2

    :cond_3
    move-object v13, v8

    :goto_2
    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    if-eq v6, v9, :cond_4

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseFontSize(Ljava/lang/String;)F

    move-result v6

    move v14, v6

    goto :goto_3

    :cond_4
    const v6, -0x800001

    const v14, -0x800001

    :goto_3
    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    if-eq v6, v9, :cond_5

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    if-eq v6, v9, :cond_6

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v16, 0x1

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    if-eq v6, v9, :cond_7

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v17, 0x1

    goto :goto_6

    :cond_7
    const/16 v17, 0x0

    :goto_6
    iget v6, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    if-eq v6, v9, :cond_8

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v18, 0x1

    goto :goto_7

    :cond_8
    const/16 v18, 0x0

    :goto_7
    iget v0, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    if-eq v0, v9, :cond_9

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBorderStyle(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    goto :goto_8

    :cond_9
    const/16 v19, -0x1

    :goto_8
    move-object v9, v5

    invoke-direct/range {v9 .. v19}, Landroidx/media3/extractor/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping malformed \'Style:\' line: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v8
.end method

.method private static isValidAlignment(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidBorderStyle(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static parseAlignment(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->isValidAlignment(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :catch_0
    :cond_0
    const-string v0, "Ignoring unknown alignment: "

    .line 17
    .line 18
    const-string v1, "SsaStyle"

    .line 19
    .line 20
    invoke-static {v0, p0, v1}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, -0x1

    .line 24
    return p0
.end method

.method private static parseBooleanValue(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse boolean value: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SsaStyle"

    invoke-static {v2, p0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static parseBorderStyle(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->isValidBorderStyle(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :catch_0
    :cond_0
    const-string v0, "Ignoring unknown BorderStyle: "

    .line 17
    .line 18
    const-string v1, "SsaStyle"

    .line 19
    .line 20
    invoke-static {v0, p0, v1}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, -0x1

    .line 24
    return p0
.end method

.method public static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    :try_start_0
    const-string v0, "&H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x18

    shr-long v4, v2, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    shr-long v0, v2, v1

    and-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    const/16 v1, 0x8

    shr-long v4, v2, v1

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse color expression: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFontSize(Ljava/lang/String;)F
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse font size: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p0, -0x800001

    return p0
.end method
