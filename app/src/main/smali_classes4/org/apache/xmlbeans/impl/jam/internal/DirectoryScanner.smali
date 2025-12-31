.class public Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCaseSensitive:Z

.field private mDirsIncluded:Ljava/util/Vector;

.field private mExcludeList:Ljava/util/List;

.field private mExcludes:[Ljava/lang/String;

.field private mFilesIncluded:Ljava/util/Vector;

.field private mIncludeList:Ljava/util/List;

.field private mIncludedFilesCache:[Ljava/lang/String;

.field private mIncludes:[Ljava/lang/String;

.field private mIsDirty:Z

.field private mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

.field private mRoot:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mCaseSensitive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludeList:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludeList:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIsDirty:Z

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludedFilesCache:[Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mRoot:Ljava/io/File;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null logger"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private couldHoldIncluded(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mCaseSensitive:Z

    invoke-static {v2, p1, v3}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isExcluded(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mCaseSensitive:Z

    invoke-static {v2, p1, v3}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isIncluded(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mCaseSensitive:Z

    invoke-static {v2, p1, v3}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    array-length v4, v1

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v0

    const/16 v8, 0x3f

    if-ge v6, v7, :cond_19

    aget-char v7, v0, v6

    const/16 v9, 0x2a

    if-ne v7, v9, :cond_18

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    aget-char v10, v0, v6

    if-eq v10, v9, :cond_3

    if-gt v7, v4, :cond_3

    if-eq v10, v8, :cond_2

    if-eqz p2, :cond_1

    aget-char v11, v1, v7

    if-eq v10, v11, :cond_1

    return v5

    :cond_1
    if-nez p2, :cond_2

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aget-char v11, v1, v7

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    if-eq v10, v11, :cond_2

    return v5

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-le v7, v4, :cond_6

    :goto_2
    if-gt v6, v2, :cond_5

    aget-char v1, v0, v6

    if-eq v1, v9, :cond_4

    return v5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return v3

    :cond_6
    :goto_3
    aget-char v10, v0, v2

    if-eq v10, v9, :cond_9

    if-gt v7, v4, :cond_9

    if-eq v10, v8, :cond_8

    if-eqz p2, :cond_7

    aget-char v11, v1, v4

    if-eq v10, v11, :cond_7

    return v5

    :cond_7
    if-nez p2, :cond_8

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aget-char v11, v1, v4

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    if-eq v10, v11, :cond_8

    return v5

    :cond_8
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_9
    if-le v7, v4, :cond_c

    :goto_4
    if-gt v6, v2, :cond_b

    aget-char v1, v0, v6

    if-eq v1, v9, :cond_a

    return v5

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    return v3

    :cond_c
    :goto_5
    if-eq v6, v2, :cond_15

    if-gt v7, v4, :cond_15

    add-int/lit8 v10, v6, 0x1

    move v11, v10

    :goto_6
    const/4 v12, -0x1

    if-gt v11, v2, :cond_e

    aget-char v13, v0, v11

    if-ne v13, v9, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_e
    const/4 v11, -0x1

    :goto_7
    if-ne v11, v10, :cond_f

    move v6, v10

    goto :goto_5

    :cond_f
    sub-int v10, v11, v6

    sub-int/2addr v10, v3

    sub-int v13, v4, v7

    add-int/2addr v13, v3

    const/4 v14, 0x0

    :goto_8
    sub-int v15, v13, v10

    if-gt v14, v15, :cond_13

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v10, :cond_12

    add-int v16, v6, v15

    add-int/lit8 v16, v16, 0x1

    aget-char v3, v0, v16

    if-eq v3, v8, :cond_11

    if-eqz p2, :cond_10

    add-int v16, v7, v14

    add-int v16, v16, v15

    aget-char v8, v1, v16

    if-eq v3, v8, :cond_10

    goto :goto_a

    :cond_10
    if-nez p2, :cond_11

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    add-int v8, v7, v14

    add-int/2addr v8, v15

    aget-char v8, v1, v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v3, v8, :cond_11

    :goto_a
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    const/16 v8, 0x3f

    goto :goto_8

    :cond_11
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    const/16 v8, 0x3f

    goto :goto_9

    :cond_12
    add-int/2addr v7, v14

    goto :goto_b

    :cond_13
    const/4 v7, -0x1

    :goto_b
    if-ne v7, v12, :cond_14

    return v5

    :cond_14
    add-int/2addr v7, v10

    move v6, v11

    const/4 v3, 0x1

    const/16 v8, 0x3f

    goto :goto_5

    :cond_15
    :goto_c
    if-gt v6, v2, :cond_17

    aget-char v1, v0, v6

    if-eq v1, v9, :cond_16

    return v5

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_17
    const/4 v1, 0x1

    return v1

    :cond_18
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_19
    if-eq v2, v4, :cond_1a

    return v5

    :cond_1a
    const/4 v3, 0x0

    :goto_d
    if-gt v3, v2, :cond_1d

    aget-char v4, v0, v3

    const/16 v6, 0x3f

    if-eq v4, v6, :cond_1c

    if-eqz p2, :cond_1b

    aget-char v7, v1, v3

    if-eq v4, v7, :cond_1b

    return v5

    :cond_1b
    if-nez p2, :cond_1c

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aget-char v7, v1, v3

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    if-eq v4, v7, :cond_1c

    return v5

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    const/4 v3, 0x1

    return v3
.end method

.method private static matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 17

    move/from16 v0, p2

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eq v3, v1, :cond_0

    return v5

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->tokenizePath(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->tokenizePath(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-string v9, "**"

    if-gt v7, v3, :cond_3

    if-gt v8, v6, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v10, v9, v0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_2

    return v5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-le v8, v6, :cond_6

    :goto_2
    if-gt v7, v3, :cond_5

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    return v4

    :cond_6
    if-le v7, v3, :cond_7

    return v5

    :cond_7
    :goto_3
    if-gt v7, v3, :cond_a

    if-gt v8, v6, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11, v0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_9

    return v5

    :cond_9
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-le v8, v6, :cond_d

    :goto_5
    if-gt v7, v3, :cond_c

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v5

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    return v4

    :cond_d
    :goto_6
    if-eq v7, v3, :cond_15

    if-gt v8, v6, :cond_15

    add-int/lit8 v10, v7, 0x1

    move v11, v10

    :goto_7
    const/4 v12, -0x1

    if-gt v11, v3, :cond_f

    invoke-virtual {v1, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_f
    const/4 v11, -0x1

    :goto_8
    if-ne v11, v10, :cond_10

    move v7, v10

    goto :goto_6

    :cond_10
    sub-int v10, v11, v7

    sub-int/2addr v10, v4

    sub-int v13, v6, v8

    add-int/2addr v13, v4

    const/4 v14, 0x0

    :goto_9
    sub-int v15, v13, v10

    if-gt v14, v15, :cond_13

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v10, :cond_12

    add-int v16, v7, v15

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int v16, v8, v14

    add-int v4, v16, v15

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4, v0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_11

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_9

    :cond_11
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_a

    :cond_12
    add-int/2addr v8, v14

    goto :goto_b

    :cond_13
    const/4 v8, -0x1

    :goto_b
    const/4 v4, 0x0

    if-ne v8, v12, :cond_14

    return v4

    :cond_14
    add-int/2addr v8, v10

    move v7, v11

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_6

    :cond_15
    const/4 v4, 0x0

    :goto_c
    if-gt v7, v3, :cond_17

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v4

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private static matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->tokenizePath(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->tokenizePath(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v4, v0, :cond_3

    if-gt v5, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "**"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7, p2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-le v5, v3, :cond_4

    return v1

    :cond_4
    if-le v4, v0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method private scan()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludes:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludes:[Ljava/lang/String;

    const-string v3, "**"

    aput-object v3, v0, v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludes:[Ljava/lang/String;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludes:[Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mFilesIncluded:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mDirsIncluded:Ljava/util/Vector;

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->isIncluded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->isExcluded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mDirsIncluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mRoot:Ljava/io/File;

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method private scandir(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    const-string v2, "[DirectoryScanner] scanning dir "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    const-string v2, " for \'"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    const-string v2, "\'"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_7

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    array-length v2, v0

    .line 49
    if-ge v1, v2, :cond_6

    .line 50
    .line 51
    invoke-static {p2}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    aget-object v3, v0, v1

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Ljava/io/File;

    .line 65
    .line 66
    aget-object v4, v0, v1

    .line 67
    .line 68
    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->isIncluded(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->isExcluded(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_2

    .line 88
    .line 89
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mDirsIncluded:Ljava/util/Vector;

    .line 90
    .line 91
    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 95
    .line 96
    invoke-interface {v4, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 103
    .line 104
    new-instance v5, Ljava/lang/StringBuffer;

    .line 105
    .line 106
    const-string v6, "...including dir "

    .line 107
    .line 108
    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_1
    invoke-static {v2}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-direct {p0, v3, v2, p3}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->couldHoldIncluded(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->isIncluded(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_5

    .line 156
    .line 157
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->isExcluded(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    const-string v4, " under \'"

    .line 162
    .line 163
    if-nez v3, :cond_4

    .line 164
    .line 165
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mFilesIncluded:Ljava/util/Vector;

    .line 166
    .line 167
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 171
    .line 172
    invoke-interface {v3, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 179
    .line 180
    new-instance v5, Ljava/lang/StringBuffer;

    .line 181
    .line 182
    const-string v6, "...including "

    .line 183
    .line 184
    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-interface {v3, v2}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_4
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 205
    .line 206
    invoke-interface {v3, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_5

    .line 211
    .line 212
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mLogger:Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 213
    .line 214
    new-instance v5, Ljava/lang/StringBuffer;

    .line 215
    .line 216
    const-string v6, "...EXCLUDING "

    .line 217
    .line 218
    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_6
    return-void

    .line 227
    :cond_7
    new-instance p2, Ljava/io/IOException;

    .line 228
    .line 229
    new-instance p3, Ljava/lang/StringBuffer;

    .line 230
    .line 231
    const-string v0, "IO error scanning directory "

    .line 232
    .line 233
    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw p2
.end method

.method private setExcludes([Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludes:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludes:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x5c

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludes:[Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private setIncludes([Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludes:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludes:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x5c

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludes:[Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static tokenizePath(Ljava/lang/String;)Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public exclude(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludeList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludeList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIsDirty:Z

    return-void
.end method

.method public getIncludedFiles()[Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIsDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludedFilesCache:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludeList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->setIncludes([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->setIncludes([Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludeList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mExcludeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->setExcludes([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->setExcludes([Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->scan()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mFilesIncluded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludedFilesCache:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mFilesIncluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludedFilesCache:[Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mRoot:Ljava/io/File;

    return-object v0
.end method

.method public include(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludeList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludeList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIncludeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIsDirty:Z

    return-void
.end method

.method public setDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->mIsDirty:Z

    return-void
.end method
