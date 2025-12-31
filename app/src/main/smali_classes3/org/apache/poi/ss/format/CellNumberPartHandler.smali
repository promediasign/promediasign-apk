.class public Lorg/apache/poi/ss/format/CellNumberPartHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private improperFraction:Z

.field private insertSignForExponent:C

.field private numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private scale:D

.field private slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final specials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->scale:D

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    return-void
.end method

.method private static firstDigit(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v0}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z
    .locals 1

    iget-char p0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private previousNumber()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v3, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getExponent()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getNumerator()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->scale:D

    return-wide v0
.end method

.method public getSlash()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getSpecials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    return-object v0
.end method

.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    const/16 v1, 0x25

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x45

    const/16 v2, 0x2e

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object p4, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez p4, :cond_5

    iget-object p4, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_5

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->previousNumber()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->improperFraction:Z

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->firstDigit(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    if-ne p4, v1, :cond_0

    const/4 p3, 0x1

    :cond_0
    or-int/2addr p3, v0

    iput-boolean p3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->improperFraction:Z

    new-instance p3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {p3, v2, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    iput-object p3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    iget-object p3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez p3, :cond_5

    iget-object p3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_5

    new-instance p3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {p3, v2, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    iput-object p3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez p4, :cond_5

    iget-object p4, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_5

    new-instance p4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {p4, v2, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    iput-object p4, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-wide p3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->scale:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p3, p3, v0

    iput-wide p3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->scale:D

    goto :goto_2

    :cond_3
    :pswitch_2
    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v2, v0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iput-char p3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    add-int/lit8 p1, p1, 0x1

    :cond_4
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p3, p4, :cond_5

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    add-int v2, p1, p3

    invoke-direct {v1, p4, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isImproperFraction()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->improperFraction:Z

    return v0
.end method
