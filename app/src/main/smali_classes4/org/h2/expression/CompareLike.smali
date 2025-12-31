.class public Lorg/h2/expression/CompareLike;
.super Lorg/h2/expression/Condition;
.source "SourceFile"


# static fields
.field private static final ANY:I = 0x2

.field private static final MATCH:I = 0x0

.field private static final ONE:I = 0x1


# instance fields
.field private final compareMode:Lorg/h2/value/CompareMode;

.field private final defaultEscape:Ljava/lang/String;

.field private escape:Lorg/h2/expression/Expression;

.field private fastCompare:Z

.field private ignoreCase:Z

.field private invalidPattern:Z

.field private isInit:Z

.field private left:Lorg/h2/expression/Expression;

.field private patternChars:[C

.field private patternLength:I

.field private patternRegexp:Ljava/util/regex/Pattern;

.field private patternString:Ljava/lang/String;

.field private patternTypes:[I

.field private final regexp:Z

.field private right:Lorg/h2/expression/Expression;

.field private shortcutToContains:Z

.field private shortcutToEndsWith:Z

.field private shortcutToStartsWith:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-object v2, p1, Lorg/h2/engine/DbSettings;->defaultEscape:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/value/CompareMode;Ljava/lang/String;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/h2/value/CompareMode;Ljava/lang/String;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    iput-object p2, p0, Lorg/h2/expression/CompareLike;->defaultEscape:Ljava/lang/String;

    iput-boolean p6, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    iput-object p3, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    iput-object p4, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    iput-object p5, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    return-void
.end method

.method private compare([CLjava/lang/String;II)Z
    .locals 6

    aget-char p1, p1, p3

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->fastCompare:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    move v2, p3

    move-object v3, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/h2/value/CompareMode;->equalsChars(Ljava/lang/String;ILjava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private compareAt(Ljava/lang/String;III[C[I)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v0, p2

    move/from16 v1, p3

    :goto_0
    iget v2, v7, Lorg/h2/expression/CompareLike;->patternLength:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v0, v2, :cond_8

    aget v3, p6, v0

    if-eqz v3, :cond_6

    if-eq v3, v12, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p6, v0

    .line 1
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v0, 0x1

    if-lt v13, v2, :cond_1

    return v12

    :cond_1
    move v14, v1

    :goto_1
    if-ge v14, v9, :cond_3

    .line 2
    invoke-direct {p0, v10, v8, v13, v14}, Lorg/h2/expression/CompareLike;->compare([CLjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/h2/expression/CompareLike;->compareAt(Ljava/lang/String;III[C[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v12

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    return v11

    :cond_4
    add-int/lit8 v2, v1, 0x1

    if-lt v1, v9, :cond_5

    return v11

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    if-ge v1, v9, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v10, v8, v0, v1}, Lorg/h2/expression/CompareLike;->compare([CLjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return v11

    :cond_8
    if-ne v1, v9, :cond_9

    const/4 v11, 0x1

    :cond_9
    return v11
.end method

.method private static containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    return v7

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    move v11, v0

    :goto_0
    if-ltz v11, :cond_3

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_1

    if-eq v0, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, v11

    move-object v3, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v7

    :cond_2
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_3
    return v8
.end method

.method private static getEscapeChar(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getEscapeChar(Lorg/h2/value/Value;)Ljava/lang/Character;
    .locals 2

    .line 2
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->defaultEscape:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/expression/CompareLike;->getEscapeChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->defaultEscape:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/expression/CompareLike;->getEscapeChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    const/16 v0, 0x5609

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private initPattern(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 11

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {v0}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/h2/expression/CompareLike;->fastCompare:Z

    :cond_0
    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    iput-object p1, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    :try_start_0
    iget-boolean p2, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    if-eqz p2, :cond_1

    invoke-static {p1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/h2/expression/CompareLike;->patternRegexp:Ljava/util/regex/Pattern;

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    const/16 v0, 0x5609

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    iput-object p1, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v5, v4, [C

    iput-object v5, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    new-array v5, v4, [I

    iput-object v5, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v4, :cond_9

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-ne v8, v7, :cond_6

    add-int/lit8 v6, v4, -0x1

    if-lt v5, v6, :cond_4

    iput-boolean v2, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    return-void

    :cond_4
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :cond_5
    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    const/16 v8, 0x25

    if-ne v7, v8, :cond_8

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    const/4 v6, 0x1

    const/4 v8, 0x2

    goto :goto_4

    :cond_8
    const/16 v8, 0x5f

    if-ne v7, v8, :cond_5

    const/4 v8, 0x1

    :goto_4
    iget-object v9, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    iget v10, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    aput v8, v9, v10

    iget-object v8, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    add-int/lit8 v9, v10, 0x1

    iput v9, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    aput-char v7, v8, v10

    :goto_5
    add-int/2addr v5, v2

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_6
    iget p2, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    add-int/lit8 v4, p2, -0x1

    if-ge p1, v4, :cond_b

    iget-object p2, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget v4, p2, p1

    if-ne v4, v3, :cond_a

    add-int/lit8 v4, p1, 0x1

    aget v5, p2, v4

    if-ne v5, v2, :cond_a

    aput v2, p2, p1

    aput v3, p2, v4

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    invoke-direct {p1, v4, v0, p2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-le p1, v2, :cond_d

    const/4 p1, 0x0

    :goto_7
    iget p2, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-ge p1, p2, :cond_c

    iget-object v4, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget v4, v4, p1

    if-nez v4, :cond_c

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v4, p2, -0x1

    if-ne p1, v4, :cond_d

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    sub-int/2addr p2, v2

    aget p1, p1, p2

    if-ne p1, v3, :cond_d

    iput-boolean v2, p0, Lorg/h2/expression/CompareLike;->shortcutToStartsWith:Z

    return-void

    :cond_d
    iget-object p1, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-le p1, v2, :cond_f

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_f

    const/4 p1, 0x1

    :goto_8
    iget p2, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-ge p1, p2, :cond_e

    iget-object v4, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget v4, v4, p1

    if-nez v4, :cond_e

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_e
    if-ne p1, p2, :cond_f

    iput-boolean v2, p0, Lorg/h2/expression/CompareLike;->shortcutToEndsWith:Z

    return-void

    :cond_f
    iget-object p1, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget p1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-le p1, v3, :cond_11

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_11

    const/4 p1, 0x1

    :goto_9
    iget p2, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-ge p1, p2, :cond_10

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget v0, v0, p1

    if-nez v0, :cond_10

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    sub-int/2addr p2, v2

    aget p1, p1, p2

    if-ne p1, v3, :cond_11

    iput-boolean v2, p0, Lorg/h2/expression/CompareLike;->shortcutToContains:Z

    :cond_11
    return-void
.end method

.method private isFullMatch()Z
    .locals 5

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 8

    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    instance-of v1, v0, Lorg/h2/expression/ExpressionColumn;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v1

    if-eq p2, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->INDEPENDENT_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/h2/expression/CompareLike;->isInit:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-nez v2, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    :goto_0
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v2, :cond_6

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_6
    invoke-direct {p0, p1}, Lorg/h2/expression/CompareLike;->getEscapeChar(Lorg/h2/value/Value;)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/h2/expression/CompareLike;->initPattern(Ljava/lang/String;Ljava/lang/Character;)V

    :cond_7
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    if-eqz p1, :cond_8

    return-void

    :cond_8
    iget p1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-lez p1, :cond_e

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    if-eqz p1, :cond_9

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result p1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_a

    const/16 v2, 0xe

    if-eq p1, v2, :cond_a

    const/16 v2, 0x15

    if-eq p1, v2, :cond_a

    return-void

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget v3, v3, v2

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    add-int/lit8 v4, v2, 0x1

    aget-char v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v3, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-ne v2, v3, :cond_c

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    :goto_2
    invoke-static {v1, v0, p1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v0, v2}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x1

    :goto_3
    const/16 v5, 0x7d0

    if-ge v4, v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v2, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    iget-boolean v7, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    invoke-virtual {v6, p1, v5, v7}, Lorg/h2/value/CompareMode;->compareString(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_d

    invoke-static {v5}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    const/4 v1, 0x4

    goto :goto_2

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    return-void
.end method

.method public getCost()I
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public bridge synthetic getDisplaySize()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " REGEXP "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    .line 44
    .line 45
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " LIKE "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    .line 58
    .line 59
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    const-string v1, " ESCAPE "

    .line 75
    .line 76
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    .line 81
    .line 82
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :cond_1
    :goto_0
    const-string v1, "("

    .line 94
    .line 95
    const-string v2, ")"

    .line 96
    .line 97
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method

.method public bridge synthetic getScale()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getScale()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-boolean v2, p0, Lorg/h2/expression/CompareLike;->isInit:Z

    .line 13
    .line 14
    if-nez v2, :cond_4

    .line 15
    .line 16
    iget-object v2, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-ne v2, v1, :cond_1

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    if-ne p1, v1, :cond_3

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_3
    invoke-direct {p0, p1}, Lorg/h2/expression/CompareLike;->getEscapeChar(Lorg/h2/value/Value;)Ljava/lang/Character;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, v2, p1}, Lorg/h2/expression/CompareLike;->initPattern(Ljava/lang/String;Ljava/lang/Character;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_5
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternRegexp:Ljava/util/regex/Pattern;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_2

    .line 73
    :cond_6
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->shortcutToStartsWith:Z

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    .line 79
    .line 80
    iget-object v5, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    .line 81
    .line 82
    iget v1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    .line 83
    .line 84
    add-int/lit8 v7, v1, -0x1

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    :goto_1
    move-object v2, v3

    .line 89
    move v3, p1

    .line 90
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    goto :goto_2

    .line 95
    :cond_7
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->shortcutToEndsWith:Z

    .line 96
    .line 97
    if-eqz p1, :cond_8

    .line 98
    .line 99
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iget v2, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    .line 106
    .line 107
    sub-int/2addr v1, v2

    .line 108
    add-int/lit8 v4, v1, 0x1

    .line 109
    .line 110
    iget-object v5, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    .line 111
    .line 112
    const/4 v6, 0x1

    .line 113
    add-int/lit8 v7, v2, -0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->shortcutToContains:Z

    .line 117
    .line 118
    if-eqz p1, :cond_a

    .line 119
    .line 120
    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {p1, v0, v0}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    .line 127
    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    invoke-static {v3, p1}, Lorg/h2/expression/CompareLike;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    goto :goto_2

    .line 135
    :cond_9
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    goto :goto_2

    .line 140
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    iget-object v7, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    .line 145
    .line 146
    iget-object v8, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    const/4 v5, 0x0

    .line 150
    move-object v2, p0

    .line 151
    invoke-direct/range {v2 .. v8}, Lorg/h2/expression/CompareLike;->compareAt(Ljava/lang/String;III[C[I)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    :goto_2
    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 5

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    :cond_2
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/h2/expression/CompareLike;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_5

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v3, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    const/4 v4, 0x0

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_0

    :cond_6
    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    :goto_0
    if-ne v3, v1, :cond_7

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/h2/expression/CompareLike;->getEscapeChar(Lorg/h2/value/Value;)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/h2/expression/CompareLike;->initPattern(Ljava/lang/String;Ljava/lang/Character;)V

    iget-boolean v1, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "%"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/h2/expression/Comparison;

    const/4 v1, 0x7

    iget-object v2, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-direct {v0, p1, v1, v2, v4}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    invoke-virtual {v0, p1}, Lorg/h2/expression/Comparison;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-direct {p0}, Lorg/h2/expression/CompareLike;->isFullMatch()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    new-instance v1, Lorg/h2/expression/Comparison;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-direct {v1, p1, v2, v3, v0}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    invoke-virtual {v1, p1}, Lorg/h2/expression/Comparison;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :cond_a
    iput-boolean v2, p0, Lorg/h2/expression/CompareLike;->isInit:Z

    :cond_b
    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    return-void
.end method

.method public test(Ljava/lang/String;Ljava/lang/String;C)Z
    .locals 7

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/h2/expression/CompareLike;->initPattern(Ljava/lang/String;Ljava/lang/Character;)V

    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    iget-object v6, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/h2/expression/CompareLike;->compareAt(Ljava/lang/String;III[C[I)Z

    move-result p1

    return p1
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method
