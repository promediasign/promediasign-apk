.class public Lorg/apache/poi/ss/format/CellNumberFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellNumberFormatter$Special;,
        Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

.field private final afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final decimalFmt:Ljava/text/DecimalFormat;

.field private final decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final denominatorFmt:Ljava/lang/String;

.field private final denominatorSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final desc:Ljava/lang/String;

.field private final exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final exponentDigitSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final exponentSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final fractionalSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final improperFraction:Z

.field private final integerSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final maxDenominator:I

.field private final numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final numeratorFmt:Ljava/lang/String;

.field private final numeratorSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final printfFmt:Ljava/lang/String;

.field private final scale:D

.field private final showGroupingSeparator:Z

.field private final slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

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
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 22

    .line 2
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;

    iget-object v4, v0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8}, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;-><init>(Ljava/util/Locale;Lorg/apache/poi/ss/format/CellNumberFormatter$1;)V

    iput-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    new-instance v3, Lorg/apache/poi/ss/format/CellNumberPartHandler;

    invoke-direct {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;-><init>()V

    sget-object v4, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    move-object/from16 v5, p2

    invoke-static {v5, v4, v3}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getExponent()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSpecials()Ljava/util/List;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isImproperFraction()Z

    move-result v4

    iput-boolean v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getExponent()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSlash()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSlash()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getNumerator()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    invoke-static {v4, v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretPrecision(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/util/List;)I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v5

    if-nez v6, :cond_2

    invoke-interface {v9, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_1

    :cond_2
    iput-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_1
    move/from16 v17, v4

    goto :goto_2

    :cond_3
    iput-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    const/16 v17, 0x0

    :goto_2
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_4

    :goto_3
    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    iput-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    iput-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_4
    if-eqz v7, :cond_7

    iput-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_5

    :cond_7
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_8

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_5

    :cond_8
    iput-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_5
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getScale()D

    move-result-wide v3

    new-array v5, v2, [D

    aput-wide v3, v5, v1

    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v18

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v19

    move-object/from16 v3, v16

    move-object/from16 v20, v4

    move-object v4, v9

    move-object/from16 v21, v5

    move-object/from16 v5, v20

    move v2, v6

    move/from16 v6, v18

    move-object v1, v7

    move/from16 v7, v19

    move-object/from16 p1, v10

    move-object v10, v8

    move-object/from16 v8, v21

    invoke-static/range {v3 .. v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretIntegerCommas(Ljava/lang/StringBuffer;Ljava/util/List;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;II[D)Z

    move-result v3

    iput-boolean v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    if-nez v1, :cond_9

    const/4 v3, 0x0

    aget-wide v4, v21, v3

    iput-wide v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    goto :goto_6

    :cond_9
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    :goto_6
    if-eqz v2, :cond_a

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v9, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v4

    invoke-interface {v9, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    const/4 v3, 0x2

    if-eqz v1, :cond_b

    invoke-interface {v9, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v0, v4, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v4, v3

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_e

    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_c

    invoke-interface {v9, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v9, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v12}, Ljava/util/List;->clear()V

    :goto_7
    iput v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    iput-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    iput-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    goto :goto_8

    :cond_d
    invoke-static {v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxValue(Ljava/util/List;)I

    move-result v4

    iput v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    invoke-static {v12}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    invoke-static {v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    goto :goto_8

    :cond_e
    const/4 v5, 0x1

    goto :goto_7

    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v9, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v4, 0x2e

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "%0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->calculateIntegerPartWidth()I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    iput-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    goto/16 :goto_d

    :cond_f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/16 v7, 0x30

    const/4 v8, 0x1

    if-ne v2, v8, :cond_10

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    goto :goto_b

    :cond_10
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v8, :cond_12

    const/16 v6, 0x23

    goto :goto_a

    :cond_12
    const/16 v6, 0x30

    :goto_a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    goto :goto_9

    :cond_13
    :goto_b
    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_14

    if-nez v8, :cond_15

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_15
    const/4 v8, 0x0

    goto :goto_c

    :cond_16
    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    iput-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    :goto_d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    return-void
.end method

.method private calculateIntegerPartWidth()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V

    return-object v0
.end method

.method private fractionalEnd()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private static varargs hasChar(C[Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char v4, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v4, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method private integerEnd()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static interpretIntegerCommas(Ljava/lang/StringBuffer;Ljava/util/List;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;II[D)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            "II[D)Z"
        }
    .end annotation

    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    const-wide v5, 0x408f400000000000L    # 1000.0

    const/16 v7, 0x2c

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char v4, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v4, v7, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    aget-wide v7, p5, v1

    div-double/2addr v7, v5

    aput-wide v7, p5, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    invoke-interface {p1, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char p3, p3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq p3, v7, :cond_3

    goto :goto_2

    :cond_3
    aget-wide p3, p5, v1

    div-double/2addr p3, v5

    aput-wide p3, p5, v1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget p3, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr p3, v1

    iput p3, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget-char p3, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne p3, v7, :cond_5

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    iget p2, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    return v3
.end method

.method private static interpretPrecision(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {p1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
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

.method private static lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 7
    .line 8
    return-object p0
.end method

.method private localiseFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "."

    const/16 v3, 0x2e

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    const/16 v4, 0x2c

    if-eq v1, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "\\."

    const-string v2, "[DECIMAL_SEPARATOR]"

    invoke-static {p1, v1, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static maxValue(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private static placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static replaceLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "(?s)(.*)"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "$1"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private static replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 7

    new-instance v6, Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)V

    return-object v6
.end method

.method private static singleNumberFormat(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private specialsFor(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private specialsFor(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int/2addr p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v1, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v1

    if-le v4, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int/2addr p2, v3

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    move-object/from16 v0, p7

    const/4 v10, 0x2

    const/4 v11, 0x0

    iget-boolean v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    if-nez v1, :cond_a

    const/16 v15, 0x20

    const/16 v6, 0x3f

    const/16 v1, 0x30

    cmpl-double v2, v8, v12

    if-nez v2, :cond_1

    iget-object v3, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    new-array v4, v14, [Ljava/util/List;

    aput-object v3, v4, v11

    invoke-static {v1, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    const/16 v9, 0x3f

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    iget-object v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    iget-object v3, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/util/List;

    aput-object v3, v6, v11

    aput-object v4, v6, v14

    aput-object v5, v6, v10

    invoke-static {v9, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v11, v2, v14, v15}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v1, v11, v2, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    const/16 v3, 0x3f

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    new-array v5, v14, [Ljava/util/List;

    aput-object v4, v5, v11

    invoke-static {v1, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v4

    xor-int/2addr v4, v14

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    new-array v6, v14, [Ljava/util/List;

    aput-object v5, v6, v11

    invoke-static {v1, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v1

    xor-int/2addr v1, v14

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v14, :cond_2

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    new-array v6, v14, [Ljava/util/List;

    aput-object v5, v6, v11

    const/16 v5, 0x23

    invoke-static {v5, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-nez v2, :cond_5

    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    cmpl-double v2, p1, v12

    if-nez v2, :cond_9

    if-nez v4, :cond_7

    if-eqz v1, :cond_9

    :cond_7
    iget-object v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    new-array v5, v10, [Ljava/util/List;

    aput-object v2, v5, v11

    aput-object v4, v5, v14

    invoke-static {v3, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1, v14, v2, v11, v15}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v1

    goto :goto_6

    :cond_8
    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1, v14, v2, v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v1

    :goto_6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    :cond_a
    :goto_7
    cmpl-double v1, v8, v12

    if-eqz v1, :cond_c

    :try_start_0
    iget-boolean v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v1, :cond_b

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    rem-double v1, v8, v1

    cmpl-double v3, v1, v12

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    iget v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    invoke-static {v8, v9, v1}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v1

    move v8, v1

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_c
    :goto_8
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v8, 0x1

    :goto_9
    iget-boolean v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v1, :cond_d

    int-to-long v1, v2

    int-to-double v3, v8

    mul-double v3, v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v2, v1

    :cond_d
    move v3, v2

    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    move-object/from16 v1, p0

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V

    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    move-object/from16 v1, p0

    move v3, v8

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :goto_a
    sget-object v1, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "error while fraction evaluation"

    aput-object v3, v2, v11

    aput-object v0, v2, v14

    const/4 v0, 0x7

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_b
    return-void
.end method

.method private writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_0

    const-string v1, "e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_0

    :goto_1
    const/16 v2, 0x30

    if-le v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_3

    iget-char v6, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v6, v2, :cond_3

    if-ge v0, v1, :cond_2

    goto :goto_4

    :cond_2
    const/16 v5, 0x3f

    if-ne v6, v5, :cond_4

    iget v4, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    const/16 v5, 0x20

    :goto_3
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_5

    :cond_3
    :goto_4
    iget v4, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-gez v5, :cond_1

    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    if-ne v2, v5, :cond_0

    const-string v5, "E"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    :goto_0
    sub-int/2addr v5, v7

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x30

    if-ge v9, v5, :cond_3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_2

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v12

    if-eq v11, v12, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_c

    if-ltz v5, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    goto :goto_5

    :cond_4
    const/16 v12, 0x30

    :goto_5
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz p5, :cond_5

    if-lez v11, :cond_5

    rem-int/lit8 v14, v11, 0x3

    if-nez v14, :cond_5

    const/4 v14, 0x1

    goto :goto_6

    :cond_5
    const/4 v14, 0x0

    :goto_6
    const/16 v15, 0x3f

    if-ne v12, v10, :cond_7

    iget-char v8, v13, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v8, v10, :cond_7

    if-eq v8, v15, :cond_7

    if-lt v5, v9, :cond_6

    goto :goto_7

    :cond_6
    move-object/from16 v15, p2

    move-object v8, v4

    const/4 v4, 0x0

    goto :goto_9

    :cond_7
    :goto_7
    iget-char v4, v13, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v4, v15, :cond_8

    if-ge v5, v9, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    iget v8, v13, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    if-eqz v4, :cond_9

    const/16 v12, 0x20

    :cond_9
    move-object/from16 v15, p2

    invoke-virtual {v15, v8, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object v8, v13

    :goto_9
    if-eqz v14, :cond_b

    if-eqz v4, :cond_a

    const-string v4, " "

    goto :goto_a

    :cond_a
    move-object v4, v6

    :goto_a
    const/4 v12, 0x2

    invoke-static {v13, v4, v12}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v4, v8

    goto :goto_4

    :cond_c
    if-ltz v5, :cond_f

    add-int/2addr v5, v7

    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_e

    :goto_b
    if-lez v5, :cond_e

    if-lez v11, :cond_d

    rem-int/lit8 v1, v11, 0x3

    if-nez v1, :cond_d

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    :cond_e
    invoke-static {v4, v2, v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/text/FieldPosition;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/text/FieldPosition;-><init>(I)V

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, v6, v7}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-boolean v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    move-object v0, p0

    move-object v1, v6

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    invoke-direct {p0, v6, p3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    invoke-virtual {v6, p2, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    const/16 v0, 0x2b

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    invoke-interface {p2, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char v3, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v0, v2, :cond_2

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, v8, p2, v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object p2

    :goto_0
    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p2, v8, p2, v8, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object p2

    goto :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    return-void
.end method

.method private writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, p1, v3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    throw p1
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-wide v3, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    mul-double v1, v1, v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    neg-double v1, v1

    :cond_1
    iget-object v5, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v5, :cond_3

    iget-boolean v5, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v5, :cond_2

    move-wide v5, v1

    move-wide v2, v3

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    rem-double v3, v1, v3

    double-to-long v1, v1

    long-to-double v1, v1

    :cond_3
    move-wide v5, v3

    move-wide v2, v1

    :goto_1
    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    invoke-direct {v9, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->localiseFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_4

    invoke-direct {v9, v2, v3, v14, v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V

    goto :goto_2

    :cond_4
    iget-boolean v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v1, :cond_6

    const/4 v4, 0x0

    :cond_5
    move-object/from16 v1, p0

    move-object v7, v14

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/util/Formatter;

    iget-object v7, v9, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v1, v4, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    :try_start_0
    iget-object v7, v9, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    iget-object v8, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v15, v0, v10

    invoke-virtual {v1, v7, v8, v0}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    iget-object v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_5

    invoke-direct {v9, v4, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    iget-object v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-boolean v6, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v14

    move-object v4, v0

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberStringMod;

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iget-object v5, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v8, v7, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int v13, v8, v6

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v15, 0x23

    if-ne v8, v15, :cond_8

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, -0x1

    iget v8, v7, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    :cond_8
    :goto_5
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getSpecial()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v8

    if-ne v7, v8, :cond_14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    iget v13, v7, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int/2addr v13, v6

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getOp()I

    move-result v15

    if-eq v15, v11, :cond_12

    const/4 v3, 0x2

    if-eq v15, v3, :cond_10

    const/4 v3, 0x3

    if-ne v15, v3, :cond_f

    iget v3, v7, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->isStartInclusive()Z

    move-result v15

    if-nez v15, :cond_9

    :goto_6
    add-int/2addr v3, v11

    add-int/2addr v13, v11

    :cond_9
    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getEnd()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v15

    iget v15, v15, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->isEndInclusive()Z

    move-result v16

    if-eqz v16, :cond_b

    add-int/2addr v15, v11

    :cond_b
    add-int v11, v15, v6

    if-ge v13, v11, :cond_e

    const-string v10, ""

    move-object/from16 v17, v5

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v14, v13, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :goto_7
    if-ge v13, v11, :cond_d

    invoke-virtual {v14, v13, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/4 v10, 0x1

    add-int/2addr v13, v10

    goto :goto_7

    :cond_d
    :goto_8
    invoke-virtual {v4, v3, v15}, Ljava/util/BitSet;->set(II)V

    :goto_9
    const/4 v3, 0x1

    goto :goto_b

    :cond_e
    move-object/from16 v17, v5

    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown op: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getOp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v7, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_9

    :cond_11
    const/4 v3, 0x1

    add-int/2addr v13, v3

    :goto_a
    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v14, v13, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_12
    move-object/from16 v17, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_a

    :goto_b
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/2addr v6, v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberStringMod;

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    :goto_c
    move-object/from16 v5, v17

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_14
    move-object/from16 v17, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v5, v17

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_15
    if-eqz v12, :cond_16

    const/16 v0, 0x2d

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_16
    move-object/from16 v1, p1

    :goto_d
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    throw v0
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method
