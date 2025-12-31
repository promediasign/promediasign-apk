.class public Lcom/scand/svg/parser/FloatSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final pow10:[D


# instance fields
.field private ch:C

.field private n:I

.field public pos:I

.field private s:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x80

    new-array v0, v0, [D

    sput-object v0, Lcom/scand/svg/parser/FloatSequence;->pow10:[D

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/scand/svg/parser/FloatSequence;->pow10:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/FloatSequence;->s:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/scand/svg/parser/FloatSequence;->pos:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/scand/svg/parser/FloatSequence;->n:I

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/scand/svg/parser/FloatSequence;->ch:C

    return-void
.end method

.method private getc()C
    .locals 1

    iget-char v0, p0, Lcom/scand/svg/parser/FloatSequence;->ch:C

    return v0
.end method

.method private parseNumber()F
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->getc()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v0, v0, v2

    add-int/lit8 v1, v1, -0x30

    rem-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->advance()V

    goto :goto_0

    :cond_0
    return v0
.end method

.method private read()C
    .locals 2

    iget v0, p0, Lcom/scand/svg/parser/FloatSequence;->pos:I

    iget v1, p0, Lcom/scand/svg/parser/FloatSequence;->n:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scand/svg/parser/FloatSequence;->pos:I

    :cond_0
    iget v0, p0, Lcom/scand/svg/parser/FloatSequence;->pos:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/scand/svg/parser/FloatSequence;->s:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method


# virtual methods
.method public advance()V
    .locals 1

    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->read()C

    move-result v0

    iput-char v0, p0, Lcom/scand/svg/parser/FloatSequence;->ch:C

    return-void
.end method

.method public nextFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->parseFloat()F

    move-result v0

    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->skipNumberSeparator()V

    return v0
.end method

.method public parseFloat()F
    .locals 13

    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->getc()C

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->advance()V

    :cond_2
    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->parseNumber()F

    move-result v0

    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->getc()C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->advance()V

    iget v6, p0, Lcom/scand/svg/parser/FloatSequence;->pos:I

    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->parseNumber()F

    move-result v7

    iget v8, p0, Lcom/scand/svg/parser/FloatSequence;->pos:I

    if-eq v6, v8, :cond_3

    float-to-double v9, v0

    float-to-double v11, v7

    sget-object v0, Lcom/scand/svg/parser/FloatSequence;->pow10:[D

    sub-int/2addr v8, v6

    aget-wide v6, v0, v8

    div-double/2addr v11, v6

    add-double/2addr v11, v9

    double-to-float v0, v11

    :cond_3
    if-nez v4, :cond_4

    neg-float v0, v0

    :cond_4
    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->getc()C

    move-result v4

    const/16 v6, 0x65

    if-eq v4, v6, :cond_5

    const/16 v6, 0x45

    if-ne v4, v6, :cond_f

    :cond_5
    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->advance()V

    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->getc()C

    move-result v4

    if-ne v4, v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    :goto_1
    if-eq v4, v3, :cond_7

    if-ne v4, v5, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->advance()V

    :cond_8
    invoke-direct {p0}, Lcom/scand/svg/parser/FloatSequence;->parseNumber()F

    move-result v2

    float-to-int v2, v2

    if-nez v1, :cond_9

    neg-int v2, v2

    :cond_9
    const/16 v1, -0x7d

    const/4 v3, 0x0

    if-lt v2, v1, :cond_10

    cmpl-float v1, v0, v3

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    const/16 v3, 0x80

    if-lt v2, v3, :cond_c

    if-lez v1, :cond_b

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_2

    :cond_b
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_2
    return v0

    :cond_c
    if-nez v2, :cond_d

    return v0

    :cond_d
    float-to-double v0, v0

    sget-object v3, Lcom/scand/svg/parser/FloatSequence;->pow10:[D

    if-lez v2, :cond_e

    aget-wide v2, v3, v2

    mul-double v0, v0, v2

    goto :goto_3

    :cond_e
    neg-int v2, v2

    aget-wide v2, v3, v2

    div-double/2addr v0, v2

    :goto_3
    double-to-float v0, v0

    :cond_f
    return v0

    :cond_10
    :goto_4
    return v3
.end method

.method public skipNumberSeparator()V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/scand/svg/parser/FloatSequence;->pos:I

    iget v1, p0, Lcom/scand/svg/parser/FloatSequence;->n:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/scand/svg/parser/FloatSequence;->s:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->advance()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public skipWhitespace()V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/scand/svg/parser/FloatSequence;->pos:I

    iget v1, p0, Lcom/scand/svg/parser/FloatSequence;->n:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/scand/svg/parser/FloatSequence;->s:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/scand/svg/parser/FloatSequence;->advance()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
