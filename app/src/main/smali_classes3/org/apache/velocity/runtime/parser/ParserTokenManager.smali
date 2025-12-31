.class public Lorg/apache/velocity/runtime/parser/ParserTokenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/parser/ParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;
    }
.end annotation


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec2:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugPrint:Z

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private fileDepth:I

.field private image:Ljava/lang/StringBuilder;

.field private inComment:Z

.field private inReference:Z

.field public inSet:Z

.field protected input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I

.field private lparen:I

.field private rparen:I

.field stateStack:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 75

    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjbitVec0:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjbitVec2:[J

    const/16 v0, 0xf5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnextStates:[I

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    filled-new-array/range {v1 .. v74}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const-string v13, "IN_SINGLE_LINE_COMMENT"

    const-string v14, "PRE_DIRECTIVE"

    const-string v1, "REFERENCE"

    const-string v2, "REFMODIFIER"

    const-string v3, "REFMOD3"

    const-string v4, "REFINDEX"

    const-string v5, "DIRECTIVE"

    const-string v6, "REFMOD2"

    const-string v7, "DEFAULT"

    const-string v8, "PRE_REFERENCE"

    const-string v9, "REFMOD"

    const-string v10, "IN_TEXTBLOCK"

    const-string v11, "IN_MULTI_LINE_COMMENT"

    const-string v12, "IN_FORMAL_COMMENT"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x4a

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewLexState:[I

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjtoToken:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjtoSkip:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjtoSpecial:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x56
        0x58
        0x59
        0x5a
        0x5f
        0x60
        0x56
        0x59
        0x38
        0x5f
        0x1b
        0x1d
        0x1e
        0x21
        0x9
        0xb
        0xc
        0xd
        0x9
        0x10
        0xb
        0xc
        0xd
        0x18
        0x19
        0x1f
        0x20
        0x41
        0x42
        0x44
        0x45
        0x46
        0x47
        0x52
        0x54
        0x4f
        0x50
        0x4c
        0x4d
        0xe
        0xf
        0x11
        0x13
        0x18
        0x19
        0x3b
        0x3c
        0x48
        0x49
        0x5d
        0x5e
        0x61
        0x62
        0x3d
        0x3f
        0x40
        0x41
        0x46
        0x47
        0x4
        0x5
        0x7
        0x3d
        0x40
        0xa
        0x46
        0x13
        0x14
        0x2c
        0x2f
        0x36
        0x3b
        0x16
        0x17
        0x18
        0x19
        0x1f
        0x24
        0x27
        0xd
        0xe
        0x1a
        0x1b
        0x44
        0x45
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0x14
        0x16
        0x31
        0x4
        0x32
        0x27
        0x2c
        0x2f
        0x4
        0x5
        0x6
        0xa
        0xc
        0xd
        0xf
        0x10
        0x5
        0x6
        0xa
        0x7
        0x6
        0x9
        0x24
        0x25
        0x12
        0x13
        0x1b
        0x1c
        0x1d
        0x1e
        0x50
        0x52
        0x53
        0x54
        0x59
        0x5a
        0x50
        0x53
        0x38
        0x59
        0x4c
        0x4e
        0x49
        0x4a
        0x46
        0x47
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x57
        0x58
        0x5b
        0x5c
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xf
        0x14
        0x17
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x0
        0x1
        0x3
        0x19
        0x1e
        0x21
        0x7
        0x8
        0xa
        0xb
        0x16
        0x17
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x57
        0x59
        0x5a
        0x5b
        0x65
        0x66
        0x57
        0x5a
        0x60
        0x65
        0x43
        0x48
        0x4b
        0x17
        0x19
        0x1a
        0x1d
        0x5
        0x7
        0x8
        0x9
        0x5
        0xc
        0x7
        0x8
        0x9
        0x14
        0x15
        0x1b
        0x1c
        0x40
        0x41
        0x37
        0x38
        0x39
        0x3a
        0x53
        0x55
        0x50
        0x51
        0x4d
        0x4e
        0xa
        0xb
        0xd
        0xf
        0x14
        0x15
        0x5e
        0x5f
        0x63
        0x64
        0x67
        0x68
        0x11
        0x16
        0x19
        0xe
        0xf
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 8
        -0x672000000c1f8001L
        0x3e7
    .end array-data

    :array_5
    .array-data 8
        0x4000000
        0x18
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x18
    .end array-data

    :array_7
    .array-data 8
        0x81f8000
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/CharStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->fileDepth:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->rparen:I

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStack:Ljava/util/List;

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x6c

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjrounds:[I

    const/16 v0, 0xd8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/CharStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;-><init>(Lorg/apache/velocity/runtime/parser/CharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private RPARENHandler()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    iget v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    if-lez v2, :cond_3

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->rparen:I

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->rparen:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    const/16 v0, 0x6c

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjbitVec0:[J

    aget-wide p1, p0, p1

    and-long p0, p1, p3

    cmp-long p2, p0, v2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    sget-object p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjbitVec2:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p2, p0, v2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private jjCheckNAdd(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .locals 1

    :goto_0
    sget-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 29

    move-object/from16 v0, p0

    const/16 v1, 0x18

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7fffffff

    :goto_0
    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/4 v8, 0x4

    const/16 v12, 0xd

    const/16 v13, 0xc

    const/4 v14, 0x6

    const/16 v15, 0x40

    const/4 v3, 0x7

    const/16 v1, 0x16

    const-wide/16 v16, 0x1

    if-ge v7, v15, :cond_f

    shl-long v20, v16, v7

    :goto_1
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v11, v7, v5

    const/16 v15, 0x8

    const/16 v10, 0x24

    const/16 v9, 0xf

    if-eqz v11, :cond_a

    if-eq v11, v8, :cond_9

    if-eq v11, v14, :cond_8

    if-eq v11, v9, :cond_7

    if-eq v11, v13, :cond_6

    if-eq v11, v12, :cond_5

    const/16 v8, 0x15

    if-eq v11, v8, :cond_4

    if-eq v11, v1, :cond_3

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x23

    if-ne v7, v8, :cond_d

    :goto_2
    const/16 v7, 0x99

    const/16 v8, 0x9b

    :goto_3
    invoke-direct {v0, v7, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :pswitch_1
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v7, v10, :cond_1

    goto/16 :goto_6

    :cond_1
    if-le v6, v9, :cond_2

    :goto_4
    const/16 v6, 0xf

    :cond_2
    :goto_5
    invoke-direct {v0, v3, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :pswitch_2
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x21

    if-ne v7, v8, :cond_d

    const/16 v7, 0x10

    if-le v6, v7, :cond_d

    const/16 v6, 0x10

    goto/16 :goto_6

    :cond_3
    const-wide v7, -0x800000001L

    and-long v7, v20, v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_d

    const/16 v7, 0x12

    if-le v6, v7, :cond_d

    const/16 v6, 0x12

    goto/16 :goto_6

    :cond_4
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_d

    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v1, v7, v8

    goto :goto_6

    :cond_5
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x28

    if-ne v7, v8, :cond_d

    const/16 v7, 0xe

    if-le v6, v7, :cond_d

    const/16 v6, 0xe

    goto :goto_6

    :cond_6
    const-wide v7, 0x100000200L

    and-long v7, v20, v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_d

    const/16 v7, 0x97

    const/16 v8, 0x98

    goto :goto_3

    :cond_7
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_d

    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x15

    aput v9, v7, v8

    goto :goto_6

    :cond_8
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_d

    goto :goto_5

    :cond_9
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_d

    if-le v6, v9, :cond_d

    const/16 v6, 0xf

    goto :goto_6

    :cond_a
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x23

    if-ne v8, v11, :cond_b

    goto/16 :goto_2

    :cond_b
    if-ne v8, v10, :cond_c

    if-le v6, v9, :cond_2

    goto/16 :goto_4

    :cond_c
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_d

    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x1

    aput v9, v7, v8

    :cond_d
    :goto_6
    if-ne v5, v4, :cond_e

    :goto_7
    const v14, 0x7fffffff

    goto/16 :goto_11

    :cond_e
    const/4 v8, 0x4

    goto/16 :goto_1

    :cond_f
    const/16 v8, 0x80

    if-ge v7, v8, :cond_21

    and-int/lit8 v7, v7, 0x3f

    shl-long v8, v16, v7

    :goto_8
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v10, v7, v5

    const/16 v11, 0x5c

    if-eqz v10, :cond_1e

    const/4 v15, 0x1

    if-eq v10, v15, :cond_1c

    const/4 v15, 0x3

    if-eq v10, v15, :cond_1a

    const/4 v15, 0x5

    if-eq v10, v15, :cond_19

    if-eq v10, v3, :cond_18

    const/16 v11, 0xb

    if-eq v10, v11, :cond_17

    if-eq v10, v1, :cond_15

    packed-switch v10, :pswitch_data_1

    :cond_10
    :goto_9
    const/16 v7, 0x40

    const/4 v10, 0x4

    const/16 v15, 0x10

    :goto_a
    const-wide/16 v18, 0x0

    const/16 v21, 0xe

    goto/16 :goto_f

    :pswitch_3
    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x7b

    if-ne v10, v11, :cond_10

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x13

    aput v11, v7, v10

    goto :goto_9

    :pswitch_4
    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x73

    if-ne v10, v11, :cond_10

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x12

    aput v11, v7, v10

    goto :goto_9

    :pswitch_5
    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x65

    if-ne v10, v11, :cond_10

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x11

    aput v11, v7, v10

    goto :goto_9

    :pswitch_6
    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x74

    if-ne v10, v11, :cond_12

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v15, 0x10

    aput v15, v7, v10

    :cond_11
    :goto_b
    const/16 v7, 0x40

    const/4 v10, 0x4

    goto :goto_a

    :cond_12
    const/16 v15, 0x10

    goto :goto_b

    :pswitch_7
    const/16 v15, 0x10

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x7d

    if-ne v7, v10, :cond_11

    invoke-direct {v0, v13, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_b

    :pswitch_8
    const/16 v15, 0x10

    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x7b

    if-ne v10, v11, :cond_13

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x13

    aput v11, v7, v10

    goto :goto_b

    :cond_13
    const/16 v11, 0x73

    if-ne v10, v11, :cond_14

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v21, 0xe

    aput v21, v7, v10

    goto :goto_c

    :cond_14
    const/16 v21, 0xe

    goto :goto_c

    :pswitch_9
    const/16 v15, 0x10

    const/16 v21, 0xe

    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x65

    if-ne v10, v11, :cond_16

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0xb

    aput v11, v7, v10

    goto :goto_c

    :cond_15
    const/16 v7, 0x12

    const/16 v15, 0x10

    const/16 v21, 0xe

    if-le v6, v7, :cond_16

    const/16 v6, 0x12

    :cond_16
    :goto_c
    const/16 v7, 0x40

    const/4 v10, 0x4

    :goto_d
    const-wide/16 v18, 0x0

    goto/16 :goto_f

    :cond_17
    const/16 v15, 0x10

    const/16 v21, 0xe

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x74

    if-ne v7, v10, :cond_16

    invoke-direct {v0, v13, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_c

    :cond_18
    const/16 v15, 0x10

    const/16 v21, 0xe

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v11, :cond_16

    const/16 v7, 0xa0

    const/16 v10, 0xa1

    invoke-direct {v0, v7, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_c

    :cond_19
    const/16 v15, 0x10

    const/16 v21, 0xe

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v11, :cond_16

    const/4 v7, 0x5

    invoke-direct {v0, v7, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_c

    :cond_1a
    const/16 v15, 0x10

    const/16 v21, 0xe

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v11, :cond_1b

    const/4 v7, 0x3

    const/4 v10, 0x4

    invoke-direct {v0, v7, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :goto_e
    const/16 v7, 0x40

    goto :goto_d

    :cond_1b
    const/4 v10, 0x4

    goto :goto_e

    :cond_1c
    const/4 v10, 0x4

    const/16 v15, 0x10

    const/16 v21, 0xe

    const-wide v16, 0x7fffffe87fffffeL

    and-long v16, v8, v16

    const-wide/16 v18, 0x0

    cmp-long v7, v16, v18

    if-eqz v7, :cond_1d

    const/16 v7, 0x40

    if-le v6, v7, :cond_1f

    const/16 v6, 0x40

    goto :goto_f

    :cond_1d
    const/16 v7, 0x40

    goto :goto_f

    :cond_1e
    const/16 v7, 0x40

    const/4 v10, 0x4

    const/16 v15, 0x10

    const-wide/16 v18, 0x0

    const/16 v21, 0xe

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v11, :cond_1f

    const/16 v3, 0x9c

    const/16 v11, 0x9f

    invoke-direct {v0, v3, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :cond_1f
    :goto_f
    if-ne v5, v4, :cond_20

    goto/16 :goto_7

    :cond_20
    const/4 v3, 0x7

    const/16 v15, 0x40

    goto/16 :goto_8

    :cond_21
    shr-int/lit8 v3, v7, 0x8

    shr-int/lit8 v8, v7, 0xe

    and-int/lit8 v9, v3, 0x3f

    shl-long v9, v16, v9

    and-int/lit16 v11, v7, 0xff

    shr-int/2addr v11, v14

    and-int/lit8 v7, v7, 0x3f

    shl-long v12, v16, v7

    :cond_22
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eq v7, v1, :cond_24

    :cond_23
    const/16 v7, 0x12

    goto :goto_10

    :cond_24
    move/from16 v22, v3

    move/from16 v23, v8

    move/from16 v24, v11

    move-wide/from16 v25, v9

    move-wide/from16 v27, v12

    invoke-static/range {v22 .. v28}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_23

    const/16 v7, 0x12

    if-le v6, v7, :cond_25

    const/16 v6, 0x12

    :cond_25
    :goto_10
    if-ne v5, v4, :cond_22

    goto/16 :goto_7

    :goto_11
    if-eq v6, v14, :cond_26

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_26
    add-int/lit8 v2, v2, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x18

    if-ne v5, v4, :cond_27

    return v2

    :cond_27
    :try_start_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v3, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private jjMoveNfa_1(II)I
    .locals 30

    move-object/from16 v0, p0

    const/16 v1, 0x1a

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7fffffff

    :goto_0
    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x8

    const/4 v11, 0x6

    const/16 v12, 0x40

    const/16 v13, 0x9

    const/16 v14, 0x18

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x0

    const/16 v3, 0xe

    const/16 v8, 0xf

    if-ge v7, v12, :cond_13

    shl-long v20, v15, v7

    :cond_1
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v12, v7, v5

    const/16 v15, 0xa

    const/16 v9, 0x24

    if-eqz v12, :cond_f

    if-eq v12, v1, :cond_c

    const/4 v1, 0x2

    if-eq v12, v1, :cond_b

    if-eq v12, v11, :cond_a

    if-eq v12, v10, :cond_9

    const/16 v1, 0x11

    if-eq v12, v1, :cond_8

    if-eq v12, v3, :cond_7

    if-eq v12, v8, :cond_6

    const/16 v1, 0x17

    if-eq v12, v1, :cond_5

    if-eq v12, v14, :cond_4

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x23

    if-ne v1, v7, :cond_12

    :goto_1
    const/16 v1, 0xf0

    const/16 v7, 0xf2

    :goto_2
    invoke-direct {v0, v1, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5

    :pswitch_1
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v1, v9, :cond_2

    goto/16 :goto_5

    :cond_2
    if-le v6, v8, :cond_3

    :goto_3
    const/16 v6, 0xf

    :cond_3
    :goto_4
    invoke-direct {v0, v13, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_2
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v1, v7, :cond_12

    const/16 v1, 0x10

    if-le v6, v1, :cond_12

    const/16 v6, 0x10

    goto/16 :goto_5

    :cond_4
    const-wide v15, -0x800000001L

    and-long v15, v20, v15

    cmp-long v1, v15, v17

    if-eqz v1, :cond_12

    const/16 v1, 0x12

    if-le v6, v1, :cond_12

    const/16 v6, 0x12

    goto/16 :goto_5

    :cond_5
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x2a

    if-ne v1, v9, :cond_12

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v1, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v14, v7, v1

    goto/16 :goto_5

    :cond_6
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x28

    if-ne v1, v7, :cond_12

    if-le v6, v3, :cond_12

    const/16 v6, 0xe

    goto/16 :goto_5

    :cond_7
    const-wide v15, 0x100000200L

    and-long v15, v20, v15

    cmp-long v1, v15, v17

    if-eqz v1, :cond_12

    const/16 v1, 0xf3

    const/16 v7, 0xf4

    goto :goto_2

    :cond_8
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x2a

    if-ne v1, v9, :cond_12

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v1, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x17

    aput v9, v7, v1

    goto :goto_5

    :cond_9
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v9, :cond_12

    goto :goto_4

    :cond_a
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v9, :cond_12

    if-le v6, v8, :cond_12

    const/16 v6, 0xf

    goto :goto_5

    :cond_b
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x2e

    if-ne v1, v9, :cond_12

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v1, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    aput v9, v7, v1

    goto :goto_5

    :cond_c
    const-wide/high16 v15, 0x3ff000000000000L

    and-long v15, v20, v15

    cmp-long v1, v15, v17

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    const/16 v1, 0x3f

    if-le v6, v1, :cond_e

    const/16 v6, 0x3f

    :cond_e
    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v1, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x1

    aput v9, v7, v1

    goto :goto_5

    :cond_f
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v12, 0x23

    if-ne v1, v12, :cond_10

    goto/16 :goto_1

    :cond_10
    if-ne v1, v9, :cond_11

    if-le v6, v8, :cond_3

    goto/16 :goto_3

    :cond_11
    const/16 v9, 0x2e

    if-ne v1, v9, :cond_12

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v1, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    aput v9, v7, v1

    :cond_12
    :goto_5
    const/4 v1, 0x1

    if-ne v5, v4, :cond_1

    :goto_6
    const v15, 0x7fffffff

    goto/16 :goto_e

    :cond_13
    const/16 v1, 0x80

    if-ge v7, v1, :cond_27

    and-int/lit8 v1, v7, 0x3f

    shl-long v20, v15, v1

    :goto_7
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v1, v5

    const-wide v15, 0x7fffffe87fffffeL

    const/16 v9, 0x5c

    if-eqz v7, :cond_22

    const/4 v12, 0x1

    if-eq v7, v12, :cond_1f

    const/4 v12, 0x3

    if-eq v7, v12, :cond_1e

    const/4 v15, 0x4

    if-eq v7, v15, :cond_1d

    const/4 v15, 0x5

    if-eq v7, v15, :cond_1c

    const/4 v15, 0x7

    if-eq v7, v15, :cond_1b

    if-eq v7, v13, :cond_1a

    const/16 v9, 0xd

    if-eq v7, v9, :cond_19

    if-eq v7, v14, :cond_18

    packed-switch v7, :pswitch_data_1

    :cond_14
    :goto_8
    const/4 v1, 0x1

    const/16 v7, 0x3f

    const/16 v22, 0x10

    goto/16 :goto_b

    :pswitch_3
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x7b

    if-ne v7, v9, :cond_14

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x15

    aput v9, v1, v7

    goto :goto_8

    :pswitch_4
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x73

    if-ne v7, v9, :cond_14

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x14

    aput v9, v1, v7

    goto :goto_8

    :pswitch_5
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x65

    if-ne v7, v9, :cond_14

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x13

    aput v9, v1, v7

    goto :goto_8

    :pswitch_6
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x74

    if-ne v7, v9, :cond_14

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x12

    aput v9, v1, v7

    goto :goto_8

    :pswitch_7
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7d

    if-ne v1, v7, :cond_14

    invoke-direct {v0, v3, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_8

    :pswitch_8
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x7b

    if-ne v7, v9, :cond_15

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x15

    aput v9, v1, v7

    goto :goto_8

    :cond_15
    const/16 v9, 0x73

    if-ne v7, v9, :cond_17

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v22, 0x10

    aput v22, v1, v7

    :cond_16
    :goto_9
    const/4 v1, 0x1

    goto :goto_a

    :cond_17
    const/16 v22, 0x10

    goto :goto_9

    :pswitch_9
    const/16 v22, 0x10

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x65

    if-ne v7, v9, :cond_16

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0xd

    aput v9, v1, v7

    goto :goto_9

    :cond_18
    const/16 v1, 0x12

    const/16 v22, 0x10

    if-le v6, v1, :cond_16

    const/4 v1, 0x1

    const/16 v6, 0x12

    :goto_a
    const/16 v7, 0x3f

    goto/16 :goto_b

    :cond_19
    const/16 v22, 0x10

    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x74

    if-ne v1, v7, :cond_16

    invoke-direct {v0, v3, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_9

    :cond_1a
    const/16 v22, 0x10

    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v9, :cond_16

    const/16 v1, 0x59

    const/16 v7, 0x5a

    invoke-direct {v0, v1, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_9

    :cond_1b
    const/16 v22, 0x10

    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v9, :cond_16

    const/4 v1, 0x7

    invoke-direct {v0, v1, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_9

    :cond_1c
    const/16 v22, 0x10

    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v9, :cond_16

    const/4 v1, 0x5

    invoke-direct {v0, v1, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_9

    :cond_1d
    const/16 v22, 0x10

    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v9, :cond_16

    const/16 v1, 0x55

    const/16 v7, 0x58

    invoke-direct {v0, v1, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_9

    :cond_1e
    const/16 v22, 0x10

    and-long v15, v20, v15

    cmp-long v1, v15, v17

    if-eqz v1, :cond_16

    const/16 v1, 0x40

    if-le v6, v1, :cond_16

    const/4 v1, 0x1

    const/16 v6, 0x40

    goto :goto_a

    :cond_1f
    const/16 v1, 0x40

    const/4 v12, 0x3

    const/16 v22, 0x10

    and-long v15, v20, v15

    cmp-long v7, v15, v17

    if-nez v7, :cond_20

    goto :goto_9

    :cond_20
    const/16 v7, 0x3f

    if-le v6, v7, :cond_21

    const/16 v6, 0x3f

    :cond_21
    const/4 v9, 0x1

    invoke-direct {v0, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v1, 0x1

    goto :goto_b

    :cond_22
    const/4 v1, 0x1

    const/16 v7, 0x3f

    const/4 v12, 0x3

    const/16 v22, 0x10

    and-long v15, v20, v15

    cmp-long v19, v15, v17

    if-eqz v19, :cond_24

    if-le v6, v7, :cond_23

    const/16 v6, 0x3f

    :cond_23
    invoke-direct {v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_b

    :cond_24
    iget-char v15, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v15, v9, :cond_25

    const/16 v9, 0x55

    const/16 v15, 0x58

    invoke-direct {v0, v9, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :cond_25
    :goto_b
    if-ne v5, v4, :cond_26

    :goto_c
    goto/16 :goto_6

    :cond_26
    const/16 v12, 0x40

    goto/16 :goto_7

    :cond_27
    const/4 v1, 0x1

    shr-int/lit8 v3, v7, 0x8

    shr-int/lit8 v8, v7, 0xe

    and-int/lit8 v9, v3, 0x3f

    shl-long v9, v15, v9

    and-int/lit16 v12, v7, 0xff

    shr-int/lit8 v11, v12, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long v12, v15, v7

    :cond_28
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eq v7, v14, :cond_2a

    :cond_29
    const/16 v7, 0x12

    goto :goto_d

    :cond_2a
    move/from16 v23, v3

    move/from16 v24, v8

    move/from16 v25, v11

    move-wide/from16 v26, v9

    move-wide/from16 v28, v12

    invoke-static/range {v23 .. v29}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_29

    const/16 v7, 0x12

    if-le v6, v7, :cond_2b

    const/16 v6, 0x12

    :cond_2b
    :goto_d
    if-ne v5, v4, :cond_28

    goto :goto_c

    :goto_e
    if-eq v6, v15, :cond_2c

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x1a

    if-ne v5, v4, :cond_2d

    return v2

    :cond_2d
    :try_start_0
    iget-object v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v3}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v3

    iput-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private jjMoveNfa_10(II)I
    .locals 25

    move-object/from16 v0, p0

    const/16 v1, 0xc

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v4, p2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v8, v1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v8, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const/4 v10, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x6

    const-wide/16 v13, 0x1

    const/16 v15, 0x9

    if-ge v8, v9, :cond_e

    shl-long v16, v13, v8

    :goto_1
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v9, v8, v5

    const/16 v13, 0x2a

    if-eqz v9, :cond_b

    if-eq v9, v1, :cond_a

    const/4 v14, 0x2

    if-eq v9, v14, :cond_9

    const/16 v13, 0x24

    const/16 v1, 0xa

    const/16 v3, 0xf

    if-eq v9, v10, :cond_7

    if-eq v9, v12, :cond_6

    if-eq v9, v11, :cond_5

    if-eq v9, v1, :cond_4

    const/16 v8, 0xb

    if-eq v9, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v8, v13, :cond_2

    goto/16 :goto_4

    :cond_2
    if-le v6, v3, :cond_3

    :goto_2
    const/16 v6, 0xf

    :cond_3
    :goto_3
    invoke-direct {v0, v15, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4

    :cond_4
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v3, 0x21

    if-ne v1, v3, :cond_c

    const/16 v1, 0x10

    if-le v6, v1, :cond_c

    const/16 v6, 0x10

    goto :goto_4

    :cond_5
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v13, :cond_c

    goto :goto_3

    :cond_6
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    if-le v6, v3, :cond_c

    const/16 v6, 0xf

    goto :goto_4

    :cond_7
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v9, v13, :cond_8

    if-le v6, v3, :cond_3

    goto :goto_2

    :cond_8
    const/16 v1, 0x23

    if-ne v9, v1, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v14, v8, v1

    goto :goto_4

    :cond_9
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v2, v8, v1

    goto :goto_4

    :cond_a
    const-wide v8, -0x800000001L

    and-long v8, v16, v8

    const-wide/16 v13, 0x0

    cmp-long v1, v8, v13

    if-eqz v1, :cond_c

    const/16 v1, 0x12

    if-le v6, v1, :cond_c

    const/16 v6, 0x12

    goto :goto_4

    :cond_b
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    aput v3, v8, v1

    :cond_c
    :goto_4
    if-ne v5, v7, :cond_d

    :goto_5
    const/4 v14, 0x1

    :goto_6
    const v15, 0x7fffffff

    goto/16 :goto_9

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x80

    if-ge v8, v1, :cond_16

    :cond_f
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_14

    const/16 v3, 0x5c

    if-eq v1, v10, :cond_13

    const/4 v8, 0x5

    if-eq v1, v8, :cond_12

    const/4 v8, 0x7

    if-eq v1, v8, :cond_11

    if-eq v1, v15, :cond_10

    goto :goto_7

    :cond_10
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    const/16 v1, 0x59

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :cond_11
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    invoke-direct {v0, v8, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_12
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    invoke-direct {v0, v8, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_13
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    const/16 v1, 0x55

    const/16 v3, 0x58

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    :cond_14
    const/16 v1, 0x12

    if-le v6, v1, :cond_15

    const/16 v6, 0x12

    :cond_15
    :goto_7
    if-ne v5, v7, :cond_f

    goto :goto_5

    :cond_16
    shr-int/lit8 v1, v8, 0x8

    shr-int/lit8 v3, v8, 0xe

    and-int/lit8 v9, v1, 0x3f

    shl-long v9, v13, v9

    and-int/lit16 v11, v8, 0xff

    shr-int/2addr v11, v12

    and-int/lit8 v8, v8, 0x3f

    shl-long v12, v13, v8

    :cond_17
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v8, v5

    const/4 v14, 0x1

    if-eq v8, v14, :cond_19

    :cond_18
    const/16 v8, 0x12

    goto :goto_8

    :cond_19
    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v11

    move-wide/from16 v21, v9

    move-wide/from16 v23, v12

    invoke-static/range {v18 .. v24}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v8

    if-eqz v8, :cond_18

    const/16 v8, 0x12

    if-le v6, v8, :cond_1a

    const/16 v6, 0x12

    :cond_1a
    :goto_8
    if-ne v5, v7, :cond_17

    goto/16 :goto_6

    :goto_9
    if-eq v6, v15, :cond_1b

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v7, v7, 0xc

    if-ne v5, v7, :cond_1c

    return v4

    :cond_1c
    :try_start_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v3, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v4
.end method

.method private jjMoveNfa_11(II)I
    .locals 25

    move-object/from16 v0, p0

    const/16 v1, 0xc

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v4, p2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v8, v1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v8, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const/4 v10, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x6

    const-wide/16 v13, 0x1

    const/16 v15, 0x9

    if-ge v8, v9, :cond_e

    shl-long v16, v13, v8

    :goto_1
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v9, v8, v5

    const/16 v13, 0x2a

    if-eqz v9, :cond_b

    if-eq v9, v1, :cond_a

    const/4 v14, 0x2

    if-eq v9, v14, :cond_9

    const/16 v13, 0x24

    const/16 v1, 0xa

    const/16 v3, 0xf

    if-eq v9, v10, :cond_7

    if-eq v9, v12, :cond_6

    if-eq v9, v11, :cond_5

    if-eq v9, v1, :cond_4

    const/16 v8, 0xb

    if-eq v9, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v8, v13, :cond_2

    goto/16 :goto_4

    :cond_2
    if-le v6, v3, :cond_3

    :goto_2
    const/16 v6, 0xf

    :cond_3
    :goto_3
    invoke-direct {v0, v15, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4

    :cond_4
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v3, 0x21

    if-ne v1, v3, :cond_c

    const/16 v1, 0x10

    if-le v6, v1, :cond_c

    const/16 v6, 0x10

    goto :goto_4

    :cond_5
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v13, :cond_c

    goto :goto_3

    :cond_6
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    if-le v6, v3, :cond_c

    const/16 v6, 0xf

    goto :goto_4

    :cond_7
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v9, v13, :cond_8

    if-le v6, v3, :cond_3

    goto :goto_2

    :cond_8
    const/16 v1, 0x23

    if-ne v9, v1, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v14, v8, v1

    goto :goto_4

    :cond_9
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v2, v8, v1

    goto :goto_4

    :cond_a
    const-wide v8, -0x800000001L

    and-long v8, v16, v8

    const-wide/16 v13, 0x0

    cmp-long v1, v8, v13

    if-eqz v1, :cond_c

    const/16 v1, 0x12

    if-le v6, v1, :cond_c

    const/16 v6, 0x12

    goto :goto_4

    :cond_b
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    aput v3, v8, v1

    :cond_c
    :goto_4
    if-ne v5, v7, :cond_d

    :goto_5
    const/4 v14, 0x1

    :goto_6
    const v15, 0x7fffffff

    goto/16 :goto_9

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x80

    if-ge v8, v1, :cond_16

    :cond_f
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_14

    const/16 v3, 0x5c

    if-eq v1, v10, :cond_13

    const/4 v8, 0x5

    if-eq v1, v8, :cond_12

    const/4 v8, 0x7

    if-eq v1, v8, :cond_11

    if-eq v1, v15, :cond_10

    goto :goto_7

    :cond_10
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    const/16 v1, 0x59

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :cond_11
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    invoke-direct {v0, v8, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_12
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    invoke-direct {v0, v8, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_13
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    const/16 v1, 0x55

    const/16 v3, 0x58

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    :cond_14
    const/16 v1, 0x12

    if-le v6, v1, :cond_15

    const/16 v6, 0x12

    :cond_15
    :goto_7
    if-ne v5, v7, :cond_f

    goto :goto_5

    :cond_16
    shr-int/lit8 v1, v8, 0x8

    shr-int/lit8 v3, v8, 0xe

    and-int/lit8 v9, v1, 0x3f

    shl-long v9, v13, v9

    and-int/lit16 v11, v8, 0xff

    shr-int/2addr v11, v12

    and-int/lit8 v8, v8, 0x3f

    shl-long v12, v13, v8

    :cond_17
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v8, v5

    const/4 v14, 0x1

    if-eq v8, v14, :cond_19

    :cond_18
    const/16 v8, 0x12

    goto :goto_8

    :cond_19
    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v11

    move-wide/from16 v21, v9

    move-wide/from16 v23, v12

    invoke-static/range {v18 .. v24}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v8

    if-eqz v8, :cond_18

    const/16 v8, 0x12

    if-le v6, v8, :cond_1a

    const/16 v6, 0x12

    :cond_1a
    :goto_8
    if-ne v5, v7, :cond_17

    goto/16 :goto_6

    :goto_9
    if-eq v6, v15, :cond_1b

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v7, v7, 0xc

    if-ne v5, v7, :cond_1c

    return v4

    :cond_1c
    :try_start_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v3, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v4
.end method

.method private jjMoveNfa_12(II)I
    .locals 22

    move-object/from16 v0, p0

    const/16 v1, 0xf

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v2, 0x1

    const v4, 0x7fffffff

    move/from16 v5, p2

    const/4 v6, 0x1

    const v7, 0x7fffffff

    const/4 v8, 0x0

    :goto_0
    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v9, v2

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v9, v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x40

    const/16 v11, 0xa

    const-wide/16 v12, 0x1

    const/16 v14, 0xc

    if-ge v9, v10, :cond_9

    shl-long v16, v12, v9

    :goto_1
    iget-object v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v10, v9, v6

    const/16 v12, 0x2a

    const-wide/16 v18, 0x2400

    const/4 v13, 0x5

    const-wide/16 v20, 0x0

    const/16 v4, 0x24

    const/16 v2, 0xd

    const/16 v15, 0x16

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v9, v4, :cond_1

    goto/16 :goto_5

    :cond_1
    if-le v7, v1, :cond_2

    const/16 v7, 0xf

    :cond_2
    :goto_2
    invoke-direct {v0, v14, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_2
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x21

    if-ne v2, v4, :cond_7

    const/16 v2, 0x10

    if-le v7, v2, :cond_7

    const/16 v7, 0x10

    goto/16 :goto_5

    :pswitch_3
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v9, v4, :cond_7

    goto :goto_2

    :pswitch_4
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v4, :cond_7

    if-le v7, v1, :cond_7

    const/16 v7, 0xf

    goto/16 :goto_5

    :pswitch_5
    iget-char v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v4, v2, :cond_7

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v13, v9, v2

    goto/16 :goto_5

    :pswitch_6
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v11, :cond_7

    if-le v7, v15, :cond_7

    :goto_3
    const/16 v7, 0x16

    goto/16 :goto_5

    :pswitch_7
    and-long v9, v16, v18

    cmp-long v2, v9, v20

    if-eqz v2, :cond_7

    if-le v7, v15, :cond_7

    goto :goto_3

    :pswitch_8
    and-long v18, v16, v18

    cmp-long v10, v18, v20

    if-eqz v10, :cond_3

    if-le v7, v15, :cond_6

    const/16 v7, 0x16

    goto :goto_4

    :cond_3
    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v10, v4, :cond_5

    if-le v7, v1, :cond_4

    const/16 v7, 0xf

    :cond_4
    invoke-direct {v0, v14, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4

    :cond_5
    const/16 v4, 0x23

    if-ne v10, v4, :cond_6

    iget v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x2

    aput v10, v9, v4

    :cond_6
    :goto_4
    iget-char v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v4, v2, :cond_7

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v13, v2, v4

    goto :goto_5

    :pswitch_9
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v12, :cond_7

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v3, v9, v2

    goto :goto_5

    :pswitch_a
    const-wide v9, -0x800000001L

    and-long v9, v16, v9

    cmp-long v2, v9, v20

    if-eqz v2, :cond_7

    const/16 v2, 0x12

    if-le v7, v2, :cond_7

    const/16 v7, 0x12

    goto :goto_5

    :pswitch_b
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v12, :cond_7

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x1

    aput v4, v9, v2

    :cond_7
    :goto_5
    if-ne v6, v8, :cond_8

    :goto_6
    const v2, 0x7fffffff

    const/4 v9, 0x1

    goto/16 :goto_9

    :cond_8
    const/4 v2, 0x1

    const v4, 0x7fffffff

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0x80

    if-ge v9, v2, :cond_11

    :cond_a
    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_f

    const/4 v4, 0x3

    const/16 v9, 0x5c

    if-eq v2, v4, :cond_e

    const/16 v4, 0x8

    if-eq v2, v4, :cond_d

    if-eq v2, v11, :cond_c

    if-eq v2, v14, :cond_b

    goto :goto_7

    :cond_b
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v9, :cond_10

    const/16 v2, 0x97

    const/16 v4, 0x98

    invoke-direct {v0, v2, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :cond_c
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v9, :cond_10

    const/16 v2, 0xb

    invoke-direct {v0, v11, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_d
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v9, :cond_10

    const/16 v2, 0x9

    invoke-direct {v0, v4, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_e
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v9, :cond_10

    const/16 v2, 0x93

    const/16 v4, 0x96

    invoke-direct {v0, v2, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    :cond_f
    const/16 v2, 0x12

    if-le v7, v2, :cond_10

    const/16 v7, 0x12

    :cond_10
    :goto_7
    if-ne v6, v8, :cond_a

    goto :goto_6

    :cond_11
    shr-int/lit8 v2, v9, 0x8

    shr-int/lit8 v4, v9, 0xe

    and-int/lit8 v10, v2, 0x3f

    shl-long v10, v12, v10

    and-int/lit16 v14, v9, 0xff

    shr-int/lit8 v14, v14, 0x6

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v12, v9

    :cond_12
    iget-object v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    const/4 v15, 0x1

    if-eq v9, v15, :cond_14

    const/4 v9, 0x1

    :cond_13
    const/16 v15, 0x12

    goto :goto_8

    :cond_14
    const/4 v9, 0x1

    move v15, v2

    move/from16 v16, v4

    move/from16 v17, v14

    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    invoke-static/range {v15 .. v21}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_13

    const/16 v15, 0x12

    if-le v7, v15, :cond_15

    const/16 v7, 0x12

    :cond_15
    :goto_8
    if-ne v6, v8, :cond_12

    const v2, 0x7fffffff

    :goto_9
    if-eq v7, v2, :cond_16

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v7, 0x7fffffff

    :cond_16
    add-int/lit8 v5, v5, 0x1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0xf

    if-ne v6, v8, :cond_17

    return v5

    :cond_17
    :try_start_0
    iget-object v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v4}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v4

    iput-char v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const v4, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveNfa_13(II)I
    .locals 29

    move-object/from16 v0, p0

    const/16 v1, 0x4b

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7fffffff

    move/from16 v2, p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x7fffffff

    :goto_0
    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v8, v3

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v8, v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const-wide/16 v10, 0x1

    const/16 v12, 0x2e

    const/16 v13, 0x1e

    const/16 v14, 0x10

    const/16 v15, 0x12

    const/16 v4, 0x3b

    const/16 v1, 0x37

    const-wide/16 v16, 0x0

    if-ge v8, v9, :cond_29

    shl-long v18, v10, v8

    :cond_1
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v8, v6

    const/16 v10, 0xa

    if-eq v9, v10, :cond_27

    const/16 v10, 0xb

    const-wide/high16 v20, 0x3ff000000000000L

    if-eq v9, v10, :cond_24

    const/16 v10, 0xd

    if-eq v9, v10, :cond_23

    const/16 v10, 0xe

    if-eq v9, v10, :cond_20

    if-eq v9, v14, :cond_1d

    const/16 v10, 0x13

    if-eq v9, v10, :cond_1c

    const/16 v10, 0x17

    const/16 v11, 0xf

    if-eq v9, v10, :cond_1b

    const/16 v10, 0x19

    if-eq v9, v10, :cond_1a

    const/16 v10, 0x1b

    if-eq v9, v10, :cond_19

    const/16 v10, 0x1c

    if-eq v9, v10, :cond_16

    const/16 v10, 0x36

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    goto/16 :goto_c

    :pswitch_0
    and-long v8, v18, v20

    cmp-long v11, v8, v16

    if-nez v11, :cond_2

    goto/16 :goto_c

    :cond_2
    if-le v7, v10, :cond_3

    const/16 v7, 0x36

    :cond_3
    const/16 v8, 0x35

    const/16 v9, 0x3a

    :goto_1
    invoke-direct {v0, v8, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_c

    :pswitch_1
    and-long v8, v18, v20

    cmp-long v10, v8, v16

    if-nez v10, :cond_4

    goto/16 :goto_c

    :cond_4
    if-le v7, v1, :cond_5

    const/16 v7, 0x37

    :cond_5
    :goto_2
    const/16 v8, 0x49

    :goto_3
    invoke-direct {v0, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_c

    :pswitch_2
    const-wide v8, 0x280000000000L

    and-long v8, v18, v8

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    goto :goto_2

    :pswitch_3
    and-long v8, v18, v20

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    const/16 v8, 0x46

    const/16 v9, 0x47

    goto :goto_6

    :pswitch_4
    and-long v8, v18, v20

    cmp-long v10, v8, v16

    if-nez v10, :cond_6

    goto/16 :goto_c

    :cond_6
    if-le v7, v1, :cond_7

    const/16 v7, 0x37

    :cond_7
    :goto_4
    const/16 v8, 0x45

    goto :goto_3

    :pswitch_5
    const-wide v8, 0x280000000000L

    and-long v8, v18, v8

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    goto :goto_4

    :pswitch_6
    and-long v8, v18, v20

    cmp-long v10, v8, v16

    if-nez v10, :cond_8

    goto/16 :goto_c

    :cond_8
    if-le v7, v1, :cond_9

    :goto_5
    const/16 v7, 0x37

    :cond_9
    const/16 v8, 0x42

    const/16 v9, 0x43

    :goto_6
    invoke-direct {v0, v8, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_c

    :pswitch_7
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v8, v12, :cond_a

    goto/16 :goto_c

    :cond_a
    if-le v7, v1, :cond_9

    goto :goto_5

    :pswitch_8
    and-long v8, v18, v20

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    const/16 v8, 0x40

    const/16 v9, 0x41

    goto :goto_6

    :pswitch_9
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v9, v12, :cond_28

    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x3e

    aput v10, v8, v9

    goto/16 :goto_c

    :pswitch_a
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v8, v12, :cond_28

    if-le v7, v10, :cond_28

    const/16 v7, 0x36

    goto/16 :goto_c

    :pswitch_b
    and-long v8, v18, v20

    cmp-long v11, v8, v16

    if-nez v11, :cond_b

    goto/16 :goto_c

    :cond_b
    if-le v7, v10, :cond_c

    const/16 v7, 0x36

    :cond_c
    const/16 v8, 0x3d

    const/16 v9, 0x3f

    goto :goto_6

    :pswitch_c
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_28

    const/16 v8, 0x3e

    const/16 v9, 0x41

    goto/16 :goto_1

    :pswitch_d
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0xd

    if-ne v9, v10, :cond_28

    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x6

    aput v10, v8, v9

    goto/16 :goto_c

    :pswitch_e
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0xa

    if-ne v8, v9, :cond_28

    if-le v7, v13, :cond_28

    :goto_7
    const/16 v7, 0x1e

    goto/16 :goto_c

    :pswitch_f
    const-wide/16 v8, 0x2400

    and-long v8, v18, v8

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    if-le v7, v13, :cond_28

    goto :goto_7

    :pswitch_10
    const-wide v8, 0x100000200L

    and-long v8, v18, v8

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    const/16 v8, 0x3d

    invoke-direct {v0, v4, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_c

    :pswitch_11
    and-long v20, v18, v20

    cmp-long v9, v20, v16

    if-eqz v9, :cond_e

    if-le v7, v10, :cond_d

    const/16 v7, 0x36

    :cond_d
    const/16 v8, 0x35

    const/16 v9, 0x3a

    :goto_8
    invoke-direct {v0, v8, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_9

    :cond_e
    const-wide/16 v9, 0x2400

    and-long v9, v18, v9

    cmp-long v20, v9, v16

    if-eqz v20, :cond_f

    if-le v7, v13, :cond_15

    const/16 v7, 0x1e

    goto :goto_9

    :cond_f
    const-wide v9, 0x100000200L

    and-long v9, v18, v9

    cmp-long v20, v9, v16

    if-eqz v20, :cond_10

    const/16 v8, 0x3d

    invoke-direct {v0, v4, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_9

    :cond_10
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_11

    const/16 v8, 0x3e

    const/16 v9, 0x41

    goto :goto_8

    :cond_11
    const/16 v10, 0x24

    if-ne v9, v10, :cond_13

    if-le v7, v11, :cond_12

    const/16 v7, 0xf

    :cond_12
    const/16 v8, 0x1a

    const/16 v9, 0x1b

    invoke-direct {v0, v8, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_9

    :cond_13
    if-ne v9, v12, :cond_14

    const/16 v8, 0xb

    invoke-direct {v0, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_9

    :cond_14
    const/16 v10, 0x23

    if-ne v9, v10, :cond_15

    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x2

    aput v10, v8, v9

    :cond_15
    :goto_9
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0xd

    if-ne v8, v9, :cond_28

    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x6

    aput v10, v8, v9

    goto/16 :goto_c

    :pswitch_12
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x2a

    if-ne v9, v10, :cond_28

    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x0

    aput v10, v8, v9

    goto/16 :goto_c

    :pswitch_13
    const-wide v8, -0x800000001L

    and-long v8, v18, v8

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    if-le v7, v15, :cond_28

    const/16 v7, 0x12

    goto/16 :goto_c

    :pswitch_14
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x2a

    if-ne v9, v10, :cond_28

    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v3, v8, v9

    goto/16 :goto_c

    :cond_16
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x24

    if-eq v8, v9, :cond_17

    goto/16 :goto_c

    :cond_17
    if-le v7, v11, :cond_18

    const/16 v7, 0xf

    :cond_18
    :goto_a
    const/16 v8, 0x1a

    const/16 v9, 0x1b

    goto/16 :goto_6

    :cond_19
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x21

    if-ne v8, v9, :cond_28

    if-le v7, v14, :cond_28

    const/16 v7, 0x10

    goto/16 :goto_c

    :cond_1a
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x24

    if-ne v8, v9, :cond_28

    goto :goto_a

    :cond_1b
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x24

    if-ne v8, v9, :cond_28

    if-le v7, v11, :cond_28

    const/16 v7, 0xf

    goto :goto_c

    :cond_1c
    and-long v8, v18, v20

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    const/16 v8, 0x42

    const/16 v9, 0x43

    invoke-direct {v0, v8, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_c

    :cond_1d
    and-long v9, v18, v20

    cmp-long v11, v9, v16

    if-nez v11, :cond_1e

    goto :goto_c

    :cond_1e
    if-le v7, v4, :cond_1f

    const/16 v7, 0x3b

    :cond_1f
    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v14, v8, v9

    goto :goto_c

    :cond_20
    and-long v8, v18, v20

    cmp-long v10, v8, v16

    if-nez v10, :cond_21

    goto :goto_c

    :cond_21
    if-le v7, v1, :cond_22

    const/16 v7, 0x37

    :cond_22
    :goto_b
    const/16 v8, 0xe

    goto/16 :goto_3

    :cond_23
    const-wide v8, 0x280000000000L

    and-long v8, v18, v8

    cmp-long v10, v8, v16

    if-eqz v10, :cond_28

    goto :goto_b

    :cond_24
    and-long v8, v18, v20

    cmp-long v10, v8, v16

    if-nez v10, :cond_25

    goto :goto_c

    :cond_25
    if-le v7, v1, :cond_26

    const/16 v7, 0x37

    :cond_26
    const/16 v8, 0xb

    const/16 v9, 0xc

    goto/16 :goto_6

    :cond_27
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v8, v12, :cond_28

    const/16 v8, 0xb

    goto/16 :goto_3

    :cond_28
    :goto_c
    if-ne v6, v5, :cond_1

    const/4 v11, 0x1

    const v14, 0x7fffffff

    const/16 v15, 0x4b

    goto/16 :goto_1d

    :cond_29
    const/16 v9, 0x80

    if-ge v8, v9, :cond_41

    and-int/lit8 v8, v8, 0x3f

    shl-long v18, v10, v8

    :goto_d
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v8, v6

    if-eq v9, v3, :cond_3e

    const/4 v10, 0x3

    const/16 v11, 0x5c

    const/16 v3, 0x69

    const/16 v14, 0x65

    if-eq v9, v10, :cond_37

    const/16 v10, 0xc

    if-eq v9, v10, :cond_36

    const/16 v10, 0x18

    if-eq v9, v10, :cond_35

    const/16 v10, 0x1a

    if-eq v9, v10, :cond_34

    const/16 v10, 0x43

    if-eq v9, v10, :cond_33

    const/16 v10, 0x47

    if-eq v9, v10, :cond_32

    const/16 v10, 0x8

    const/16 v4, 0x32

    if-eq v9, v10, :cond_31

    const/16 v10, 0x9

    if-eq v9, v10, :cond_30

    const/16 v10, 0x7d

    packed-switch v9, :pswitch_data_4

    const/16 v11, 0x31

    const/16 v15, 0x33

    const/16 v13, 0x34

    packed-switch v9, :pswitch_data_5

    :cond_2a
    :goto_e
    const/16 v4, 0x3b

    goto :goto_10

    :pswitch_15
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v14, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x3a

    aput v4, v8, v3

    goto :goto_e

    :pswitch_16
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x39

    aput v4, v8, v3

    goto :goto_e

    :pswitch_17
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x73

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x38

    aput v4, v8, v3

    goto :goto_e

    :pswitch_18
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v14, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v1, v8, v3

    goto :goto_e

    :pswitch_19
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v10, :cond_2a

    if-le v7, v13, :cond_2a

    :goto_f
    const/16 v4, 0x3b

    const/16 v7, 0x34

    :goto_10
    const/16 v9, 0x1e

    :goto_11
    const/16 v13, 0x10

    const/16 v15, 0x4b

    goto/16 :goto_1a

    :pswitch_1a
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v14, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x35

    aput v4, v8, v3

    goto :goto_e

    :pswitch_1b
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v13, v8, v3

    goto :goto_e

    :pswitch_1c
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x73

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v15, v8, v3

    goto :goto_e

    :pswitch_1d
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v14, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_1e
    iget-char v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v4, v3, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v11, v8, v3

    goto/16 :goto_e

    :pswitch_1f
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x66

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x30

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_20
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v10, :cond_2a

    if-le v7, v15, :cond_2a

    :goto_12
    const/16 v4, 0x3b

    const/16 v7, 0x33

    goto :goto_10

    :pswitch_21
    iget-char v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v4, v3, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v12, v8, v3

    goto/16 :goto_e

    :pswitch_22
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x66

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2d

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_23
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v10, :cond_2a

    if-le v7, v4, :cond_2a

    const/16 v4, 0x3b

    const/16 v7, 0x32

    goto/16 :goto_10

    :pswitch_24
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v14, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2b

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_25
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2a

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_26
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x29

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_27
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v10, :cond_2a

    if-le v7, v11, :cond_2a

    const/16 v4, 0x3b

    const/16 v7, 0x31

    goto/16 :goto_10

    :pswitch_28
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_2a

    const/16 v3, 0x44

    const/16 v4, 0x47

    invoke-direct {v0, v3, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_e

    :pswitch_29
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x26

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_2a
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x73

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x25

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_2b
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v14, :cond_2a

    if-le v7, v13, :cond_2a

    goto/16 :goto_f

    :pswitch_2c
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x23

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_2d
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x73

    if-ne v3, v4, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x22

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_2e
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v14, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x21

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_2f
    iget-char v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v4, v3, :cond_2a

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x20

    aput v4, v8, v3

    goto/16 :goto_e

    :pswitch_30
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x66

    if-ne v3, v4, :cond_2a

    if-le v7, v15, :cond_2a

    goto/16 :goto_12

    :pswitch_31
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_2b

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x1e

    aput v9, v8, v3

    goto/16 :goto_17

    :cond_2b
    const/16 v9, 0x1e

    goto/16 :goto_17

    :pswitch_32
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2e

    if-le v7, v11, :cond_2e

    const/16 v4, 0x3b

    const/16 v7, 0x31

    goto/16 :goto_11

    :pswitch_33
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v14, :cond_2e

    const/16 v3, 0x4c

    const/16 v4, 0x4e

    :goto_13
    invoke-direct {v0, v3, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_17

    :pswitch_34
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v11, :cond_2e

    const/16 v3, 0x16

    const/16 v4, 0x17

    :goto_14
    invoke-direct {v0, v3, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_17

    :pswitch_35
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v11, :cond_2e

    const/16 v3, 0x48

    const/16 v4, 0x4b

    invoke-direct {v0, v3, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_17

    :pswitch_36
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v10, :cond_2e

    const/16 v3, 0x3c

    if-le v7, v3, :cond_2e

    const/16 v3, 0x3c

    const/16 v4, 0x3b

    const/16 v7, 0x3c

    goto/16 :goto_11

    :pswitch_37
    const/16 v9, 0x1e

    const-wide v3, 0x7fffffe87fffffeL

    and-long v3, v18, v3

    cmp-long v8, v3, v16

    if-eqz v8, :cond_2e

    :goto_15
    const/16 v3, 0x13

    const/16 v4, 0x14

    goto :goto_14

    :pswitch_38
    const/16 v9, 0x1e

    const-wide v3, 0x7fffffe87ffffffL

    and-long v3, v18, v3

    cmp-long v8, v3, v16

    if-eqz v8, :cond_2e

    goto :goto_15

    :pswitch_39
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_2e

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x12

    aput v4, v8, v3

    goto :goto_17

    :pswitch_3a
    const/16 v9, 0x1e

    const-wide v3, 0x7fffffe87fffffeL

    and-long v3, v18, v3

    cmp-long v8, v3, v16

    if-nez v8, :cond_2c

    goto :goto_17

    :cond_2c
    const/16 v3, 0x3b

    const/16 v4, 0x10

    if-le v7, v3, :cond_2d

    :goto_16
    const/16 v7, 0x3b

    :cond_2d
    invoke-direct {v0, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_2e
    :goto_17
    const/16 v4, 0x3b

    goto/16 :goto_11

    :pswitch_3b
    const/16 v3, 0x3b

    const/16 v4, 0x10

    const/16 v9, 0x1e

    const-wide v10, 0x7fffffe87ffffffL

    and-long v10, v18, v10

    cmp-long v8, v10, v16

    if-nez v8, :cond_2f

    goto :goto_17

    :cond_2f
    if-le v7, v3, :cond_2d

    goto :goto_16

    :cond_30
    const/16 v9, 0x1e

    iget-char v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v4, v3, :cond_2e

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x8

    aput v4, v8, v3

    goto :goto_17

    :cond_31
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x66

    if-ne v3, v8, :cond_2e

    if-le v7, v4, :cond_2e

    const/16 v4, 0x3b

    const/16 v7, 0x32

    goto/16 :goto_11

    :cond_32
    const/16 v9, 0x1e

    const-wide v3, 0x2000000020L

    and-long v3, v18, v3

    cmp-long v8, v3, v16

    if-eqz v8, :cond_2e

    const/16 v3, 0x2f

    const/16 v4, 0x30

    goto/16 :goto_13

    :cond_33
    const/16 v9, 0x1e

    const-wide v3, 0x2000000020L

    and-long v3, v18, v3

    cmp-long v8, v3, v16

    if-eqz v8, :cond_2e

    const/16 v3, 0x53

    const/16 v4, 0x54

    goto/16 :goto_13

    :cond_34
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v11, :cond_2e

    const/16 v3, 0x51

    const/16 v4, 0x52

    goto/16 :goto_13

    :cond_35
    const/16 v9, 0x1e

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v11, :cond_2e

    const/16 v3, 0x18

    const/16 v4, 0x19

    goto/16 :goto_14

    :cond_36
    const/16 v9, 0x1e

    const-wide v3, 0x2000000020L

    and-long v3, v18, v3

    cmp-long v8, v3, v16

    if-eqz v8, :cond_2e

    const/16 v3, 0x4f

    const/16 v4, 0x50

    goto/16 :goto_13

    :cond_37
    const/16 v9, 0x1e

    const-wide v22, 0x7fffffe87ffffffL

    and-long v22, v18, v22

    cmp-long v4, v22, v16

    if-eqz v4, :cond_3a

    const/16 v4, 0x3b

    if-le v7, v4, :cond_38

    const/16 v7, 0x3b

    :cond_38
    const/16 v13, 0x10

    invoke-direct {v0, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_39
    :goto_18
    const/16 v15, 0x4b

    goto :goto_19

    :cond_3a
    const/16 v4, 0x3b

    const/16 v13, 0x10

    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x7b

    if-ne v8, v10, :cond_3b

    const/16 v8, 0x44

    const/16 v10, 0x47

    invoke-direct {v0, v8, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_18

    :cond_3b
    if-ne v8, v11, :cond_39

    const/16 v8, 0x48

    const/16 v15, 0x4b

    invoke-direct {v0, v8, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :goto_19
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v8, v14, :cond_3c

    const/16 v3, 0x4c

    const/16 v8, 0x4e

    invoke-direct {v0, v3, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_1a

    :cond_3c
    const/16 v10, 0x7b

    if-ne v8, v10, :cond_3d

    iget-object v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x12

    aput v10, v3, v8

    goto :goto_1a

    :cond_3d
    if-ne v8, v3, :cond_3f

    iget-object v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x8

    aput v10, v3, v8

    goto :goto_1a

    :cond_3e
    const/16 v3, 0x12

    const/16 v9, 0x1e

    const/16 v13, 0x10

    const/16 v15, 0x4b

    if-le v7, v3, :cond_3f

    const/16 v7, 0x12

    :cond_3f
    :goto_1a
    if-ne v6, v5, :cond_40

    const/4 v11, 0x1

    :goto_1b
    const v14, 0x7fffffff

    goto :goto_1d

    :cond_40
    const/4 v3, 0x1

    const/16 v13, 0x1e

    const/16 v14, 0x10

    const/16 v15, 0x12

    goto/16 :goto_d

    :cond_41
    const/16 v15, 0x4b

    shr-int/lit8 v1, v8, 0x8

    shr-int/lit8 v3, v8, 0xe

    and-int/lit8 v4, v1, 0x3f

    shl-long v12, v10, v4

    and-int/lit16 v4, v8, 0xff

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    shl-long v8, v10, v8

    :cond_42
    iget-object v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v10, v10, v6

    const/4 v11, 0x1

    if-eq v10, v11, :cond_44

    :cond_43
    const/16 v10, 0x12

    goto :goto_1c

    :cond_44
    move/from16 v22, v1

    move/from16 v23, v3

    move/from16 v24, v4

    move-wide/from16 v25, v12

    move-wide/from16 v27, v8

    invoke-static/range {v22 .. v28}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_43

    const/16 v10, 0x12

    if-le v7, v10, :cond_45

    const/16 v7, 0x12

    :cond_45
    :goto_1c
    if-ne v6, v5, :cond_42

    goto :goto_1b

    :goto_1d
    if-eq v7, v14, :cond_46

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v7, 0x7fffffff

    :cond_46
    add-int/lit8 v2, v2, 0x1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v5, v5, 0x4b

    if-ne v6, v5, :cond_47

    return v2

    :cond_47
    :try_start_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x4b

    const/4 v3, 0x1

    const v4, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x44
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x48
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xf
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1d
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method private jjMoveNfa_2(II)I
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0xe

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v4, p2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v8, v1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v8, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0xa

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/16 v12, 0x8

    const/16 v13, 0x40

    const/16 v14, 0xb

    const-wide/16 v15, 0x1

    if-ge v8, v13, :cond_11

    shl-long v17, v15, v8

    :goto_1
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v13, v8, v5

    const/16 v15, 0x2a

    if-eqz v13, :cond_e

    if-eq v13, v1, :cond_d

    const/4 v1, 0x2

    if-eq v13, v1, :cond_c

    const/16 v15, 0x2e

    const/16 v3, 0x24

    const/16 v2, 0xc

    const/16 v1, 0xf

    if-eq v13, v10, :cond_9

    const/4 v10, 0x4

    if-eq v13, v10, :cond_8

    if-eq v13, v12, :cond_7

    if-eq v13, v9, :cond_6

    if-eq v13, v2, :cond_5

    const/16 v8, 0xd

    if-eq v13, v8, :cond_1

    :goto_2
    goto :goto_5

    :cond_1
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v8, v3, :cond_2

    goto :goto_2

    :cond_2
    if-le v6, v1, :cond_3

    :goto_3
    const/16 v6, 0xf

    :cond_3
    :goto_4
    invoke-direct {v0, v14, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_4
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_5
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v2, 0x21

    if-ne v1, v2, :cond_4

    const/16 v1, 0x10

    if-le v6, v1, :cond_4

    const/4 v2, 0x0

    const/16 v6, 0x10

    goto/16 :goto_6

    :cond_6
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_4

    goto :goto_4

    :cond_7
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v3, :cond_4

    if-le v6, v1, :cond_4

    const/4 v2, 0x0

    const/16 v6, 0xf

    goto :goto_6

    :cond_8
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v15, :cond_4

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v11, v8, v1

    goto :goto_5

    :cond_9
    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v10, v3, :cond_a

    if-le v6, v1, :cond_3

    goto :goto_3

    :cond_a
    if-ne v10, v15, :cond_b

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v11, v8, v1

    goto :goto_5

    :cond_b
    const/16 v1, 0x23

    if-ne v10, v1, :cond_4

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v2, 0x2

    aput v2, v8, v1

    goto :goto_5

    :cond_c
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v15, :cond_4

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v2, 0x0

    aput v2, v8, v1

    goto :goto_6

    :cond_d
    const-wide v15, -0x800000001L

    and-long v15, v17, v15

    const-wide/16 v21, 0x0

    cmp-long v1, v15, v21

    if-eqz v1, :cond_f

    const/16 v1, 0x12

    if-le v6, v1, :cond_f

    const/16 v6, 0x12

    goto :goto_6

    :cond_e
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v15, :cond_f

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    aput v3, v8, v1

    :cond_f
    :goto_6
    if-ne v5, v7, :cond_10

    :goto_7
    const/4 v14, 0x1

    :goto_8
    const v15, 0x7fffffff

    goto/16 :goto_b

    :cond_10
    const/4 v1, 0x1

    const/4 v10, 0x3

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0x80

    if-ge v8, v1, :cond_1a

    and-int/lit8 v1, v8, 0x3f

    shl-long v17, v15, v1

    :cond_12
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_18

    const/16 v3, 0x5c

    const/4 v10, 0x3

    if-eq v1, v10, :cond_17

    if-eq v1, v11, :cond_16

    const/4 v8, 0x7

    if-eq v1, v8, :cond_15

    const/16 v8, 0x9

    if-eq v1, v8, :cond_14

    if-eq v1, v14, :cond_13

    goto :goto_9

    :cond_13
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_19

    const/16 v1, 0xa6

    const/16 v3, 0xa7

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_9

    :cond_14
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_19

    const/16 v1, 0x9

    invoke-direct {v0, v1, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_9

    :cond_15
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_19

    const/4 v1, 0x7

    invoke-direct {v0, v1, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_9

    :cond_16
    const-wide v15, 0x7fffffe87fffffeL

    and-long v15, v17, v15

    const-wide/16 v19, 0x0

    cmp-long v1, v15, v19

    if-eqz v1, :cond_19

    if-le v6, v13, :cond_19

    const/16 v6, 0x40

    goto :goto_9

    :cond_17
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_19

    const/16 v1, 0xa2

    const/16 v3, 0xa5

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_9

    :cond_18
    const/16 v1, 0x12

    const/4 v10, 0x3

    if-le v6, v1, :cond_19

    const/16 v6, 0x12

    :cond_19
    :goto_9
    if-ne v5, v7, :cond_12

    goto :goto_7

    :cond_1a
    shr-int/lit8 v1, v8, 0x8

    shr-int/lit8 v3, v8, 0xe

    and-int/lit8 v9, v1, 0x3f

    shl-long v9, v15, v9

    and-int/lit16 v11, v8, 0xff

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v8, v8, 0x3f

    shl-long v12, v15, v8

    :cond_1b
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v8, v5

    const/4 v14, 0x1

    if-eq v8, v14, :cond_1d

    :cond_1c
    const/16 v8, 0x12

    goto :goto_a

    :cond_1d
    move/from16 v19, v1

    move/from16 v20, v3

    move/from16 v21, v11

    move-wide/from16 v22, v9

    move-wide/from16 v24, v12

    invoke-static/range {v19 .. v25}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v8

    if-eqz v8, :cond_1c

    const/16 v8, 0x12

    if-le v6, v8, :cond_1e

    const/16 v6, 0x12

    :cond_1e
    :goto_a
    if-ne v5, v7, :cond_1b

    goto/16 :goto_8

    :goto_b
    if-eq v6, v15, :cond_1f

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v7, v7, 0xe

    if-ne v5, v7, :cond_20

    return v4

    :cond_20
    :try_start_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v3, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v4
.end method

.method private jjMoveNfa_3(II)I
    .locals 30

    move-object/from16 v0, p0

    const/16 v1, 0x5e

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7fffffff

    move/from16 v1, p2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    :goto_0
    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v6, v2

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x40

    const/16 v11, 0x3d

    const/16 v12, 0x2d

    const/16 v15, 0x2f

    const/16 v13, 0x5c

    const/16 v2, 0x2e

    const-wide/16 v19, 0x0

    if-ge v6, v7, :cond_2d

    const-wide/16 v21, 0x1

    shl-long v21, v21, v6

    :cond_1
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v6, v5

    const/16 v14, 0x3c

    const/16 v8, 0xf

    const/16 v10, 0x36

    const/16 v9, 0x37

    const-wide/high16 v25, 0x3ff000000000000L

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_17

    :pswitch_1
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2

    const/16 v6, 0x59

    const/16 v7, 0x5a

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_1

    :cond_2
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v2, :cond_3

    const/16 v6, 0x39

    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    const/16 v6, 0x53

    const/16 v7, 0x54

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_4
    if-eqz v8, :cond_2c

    if-le v4, v10, :cond_5

    :goto_2
    const/16 v4, 0x36

    :cond_5
    const/16 v6, 0x50

    const/16 v7, 0x52

    :goto_3
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_17

    :pswitch_2
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-nez v8, :cond_6

    goto/16 :goto_17

    :cond_6
    if-le v4, v10, :cond_7

    const/16 v4, 0x36

    :cond_7
    const/16 v6, 0x79

    const/16 v7, 0x7e

    :goto_4
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_17

    :pswitch_3
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-nez v8, :cond_8

    goto/16 :goto_17

    :cond_8
    if-le v4, v9, :cond_9

    const/16 v4, 0x37

    :cond_9
    :goto_5
    invoke-direct {v0, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_17

    :pswitch_4
    const-wide v6, 0x280000000000L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    goto :goto_5

    :pswitch_5
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    const/16 v6, 0x59

    const/16 v7, 0x5a

    goto :goto_3

    :pswitch_6
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-nez v8, :cond_a

    goto/16 :goto_17

    :cond_a
    if-le v4, v9, :cond_b

    const/16 v4, 0x37

    :cond_b
    :goto_6
    const/16 v6, 0x58

    :goto_7
    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_17

    :pswitch_7
    const-wide v6, 0x280000000000L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    goto :goto_6

    :pswitch_8
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-nez v8, :cond_c

    goto/16 :goto_17

    :cond_c
    if-le v4, v9, :cond_d

    :goto_8
    const/16 v4, 0x37

    :cond_d
    const/16 v6, 0x55

    const/16 v7, 0x56

    goto :goto_3

    :pswitch_9
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v6, v2, :cond_e

    goto/16 :goto_17

    :cond_e
    if-le v4, v9, :cond_d

    goto :goto_8

    :pswitch_a
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    const/16 v6, 0x53

    const/16 v7, 0x54

    goto/16 :goto_3

    :pswitch_b
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v2, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x51

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_c
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v2, :cond_2c

    if-le v4, v10, :cond_2c

    const/16 v4, 0x36

    goto/16 :goto_17

    :pswitch_d
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-nez v8, :cond_f

    goto/16 :goto_17

    :cond_f
    if-le v4, v10, :cond_5

    goto/16 :goto_2

    :pswitch_e
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_2c

    const/16 v6, 0x7f

    const/16 v7, 0x82

    goto/16 :goto_4

    :pswitch_f
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x24

    if-eq v6, v7, :cond_10

    goto/16 :goto_17

    :cond_10
    if-le v4, v8, :cond_11

    const/16 v4, 0xf

    :cond_11
    :goto_9
    const/16 v6, 0x42

    const/16 v7, 0x43

    goto/16 :goto_3

    :pswitch_10
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_2c

    const/16 v6, 0x10

    if-le v4, v6, :cond_2c

    const/16 v4, 0x10

    goto/16 :goto_17

    :pswitch_11
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x24

    if-ne v6, v7, :cond_2c

    goto :goto_9

    :pswitch_12
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x24

    if-ne v6, v7, :cond_2c

    if-le v4, v8, :cond_2c

    const/16 v4, 0xf

    goto/16 :goto_17

    :pswitch_13
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-nez v8, :cond_12

    goto/16 :goto_17

    :cond_12
    if-le v4, v9, :cond_13

    const/16 v4, 0x37

    :cond_13
    :goto_a
    invoke-direct {v0, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_17

    :pswitch_14
    const-wide v6, 0x280000000000L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    goto :goto_a

    :pswitch_15
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-nez v8, :cond_14

    goto/16 :goto_17

    :cond_14
    if-le v4, v9, :cond_15

    const/16 v4, 0x37

    :cond_15
    const/16 v6, 0x39

    const/16 v7, 0x3a

    goto/16 :goto_3

    :pswitch_16
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v2, :cond_2c

    const/16 v6, 0x39

    goto/16 :goto_7

    :pswitch_17
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_2c

    if-le v4, v15, :cond_2c

    const/16 v4, 0x2f

    goto/16 :goto_17

    :pswitch_18
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x21

    if-ne v7, v8, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x35

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_19
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v11, :cond_2c

    if-le v4, v2, :cond_2c

    const/16 v4, 0x2e

    goto/16 :goto_17

    :pswitch_1a
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v11, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x31

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_1b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v11, :cond_2c

    if-le v4, v12, :cond_2c

    const/16 v4, 0x2d

    goto/16 :goto_17

    :pswitch_1c
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x3e

    if-ne v7, v8, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v15, v6, v7

    goto/16 :goto_17

    :pswitch_1d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v11, :cond_2c

    const/16 v6, 0x2c

    if-le v4, v6, :cond_2c

    const/16 v4, 0x2c

    goto/16 :goto_17

    :pswitch_1e
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_2c

    const/16 v6, 0x2b

    if-le v4, v6, :cond_2c

    :goto_b
    const/16 v4, 0x2b

    goto/16 :goto_17

    :pswitch_1f
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v14, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x2c

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_20
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v11, :cond_2c

    const/16 v6, 0x2a

    if-le v4, v6, :cond_2c

    const/16 v4, 0x2a

    goto/16 :goto_17

    :pswitch_21
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v14, :cond_2c

    const/16 v6, 0x29

    if-le v4, v6, :cond_2c

    :goto_c
    const/16 v4, 0x29

    goto/16 :goto_17

    :pswitch_22
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x26

    if-ne v7, v8, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x22

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_23
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x26

    if-ne v6, v7, :cond_2c

    const/16 v6, 0x27

    if-le v4, v6, :cond_2c

    const/16 v4, 0x27

    goto/16 :goto_17

    :pswitch_24
    const/16 v6, 0x27

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v6, :cond_2c

    const/16 v6, 0x1f

    if-le v4, v6, :cond_2c

    :goto_d
    const/16 v4, 0x1f

    goto/16 :goto_17

    :pswitch_25
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2c

    const/16 v6, 0xd

    :goto_e
    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_17

    :pswitch_26
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2c

    const/16 v6, 0x19

    const/16 v7, 0x1a

    :goto_f
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_17

    :pswitch_27
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x27

    if-ne v7, v8, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1c

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_28
    const-wide v6, -0x8000000001L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    const/16 v6, 0xd

    const/16 v7, 0xa

    goto :goto_e

    :pswitch_29
    const/16 v6, 0xd

    const/16 v7, 0xa

    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x27

    if-ne v8, v9, :cond_2c

    :goto_10
    goto :goto_e

    :pswitch_2a
    const/16 v7, 0xa

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v7, :cond_2c

    :goto_11
    const/16 v6, 0x11

    const/16 v7, 0xe

    goto :goto_e

    :pswitch_2b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2c

    const/16 v6, 0x17

    const/16 v7, 0x18

    goto :goto_f

    :pswitch_2c
    and-long v6, v21, v25

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    goto :goto_11

    :pswitch_2d
    and-long v7, v21, v25

    cmp-long v9, v7, v19

    if-eqz v9, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x17

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_2e
    and-long v7, v21, v25

    cmp-long v9, v7, v19

    if-eqz v9, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x16

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_2f
    and-long v7, v21, v25

    cmp-long v9, v7, v19

    if-eqz v9, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x15

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_30
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    const/16 v6, 0x10

    goto/16 :goto_7

    :pswitch_31
    const-wide/high16 v7, 0xf000000000000L

    and-long v7, v21, v7

    cmp-long v9, v7, v19

    if-eqz v9, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x12

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_32
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    goto :goto_11

    :pswitch_33
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    const/16 v6, 0x16

    const/16 v7, 0x12

    goto/16 :goto_e

    :pswitch_34
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x22

    if-ne v6, v7, :cond_2c

    const/16 v6, 0x1f

    if-le v4, v6, :cond_2c

    goto/16 :goto_d

    :pswitch_35
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x22

    if-ne v7, v8, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0xa

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_36
    const-wide v6, -0x400000001L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    goto/16 :goto_11

    :pswitch_37
    const/16 v6, 0x11

    const/16 v7, 0xe

    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x22

    if-ne v8, v9, :cond_2c

    goto/16 :goto_10

    :pswitch_38
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x6

    aput v8, v6, v7

    goto/16 :goto_17

    :pswitch_39
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2c

    const/16 v6, 0x1d

    if-le v4, v6, :cond_2c

    :goto_12
    const/16 v4, 0x1d

    goto/16 :goto_17

    :pswitch_3a
    const-wide/16 v6, 0x2400

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    const/16 v6, 0x1d

    if-le v4, v6, :cond_2c

    goto :goto_12

    :pswitch_3b
    const-wide v6, 0x100000200L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-nez v8, :cond_16

    goto/16 :goto_17

    :cond_16
    const/16 v6, 0x1c

    if-le v4, v6, :cond_17

    const/16 v4, 0x1c

    :cond_17
    const/4 v6, 0x4

    goto/16 :goto_7

    :pswitch_3c
    and-long v25, v21, v25

    cmp-long v7, v25, v19

    if-eqz v7, :cond_19

    if-le v4, v10, :cond_18

    const/16 v4, 0x36

    :cond_18
    const/16 v6, 0x79

    const/16 v7, 0x7e

    :goto_13
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_16

    :cond_19
    const-wide/16 v9, 0x2400

    and-long v9, v21, v9

    cmp-long v7, v9, v19

    if-eqz v7, :cond_1a

    const/16 v6, 0x1d

    if-le v4, v6, :cond_28

    const/16 v4, 0x1d

    goto/16 :goto_16

    :cond_1a
    const-wide v9, 0x100000200L

    and-long v9, v21, v9

    cmp-long v7, v9, v19

    if-eqz v7, :cond_1c

    const/16 v6, 0x1c

    if-le v4, v6, :cond_1b

    const/16 v4, 0x1c

    :cond_1b
    const/4 v6, 0x4

    :goto_14
    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_16

    :cond_1c
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v12, :cond_1d

    const/16 v6, 0x7f

    const/16 v7, 0x82

    goto :goto_13

    :cond_1d
    const/16 v9, 0x24

    if-ne v7, v9, :cond_1f

    if-le v4, v8, :cond_1e

    const/16 v4, 0xf

    :cond_1e
    const/16 v6, 0x42

    const/16 v7, 0x43

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_16

    :cond_1f
    if-ne v7, v2, :cond_20

    const/16 v6, 0x39

    goto :goto_14

    :cond_20
    const/16 v8, 0x21

    if-ne v7, v8, :cond_21

    if-le v4, v15, :cond_28

    const/16 v4, 0x2f

    goto :goto_16

    :cond_21
    if-ne v7, v11, :cond_22

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x31

    aput v8, v6, v7

    goto :goto_16

    :cond_22
    const/16 v8, 0x3e

    if-ne v7, v8, :cond_23

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v15, v6, v7

    goto :goto_16

    :cond_23
    if-ne v7, v14, :cond_24

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x2c

    aput v8, v6, v7

    goto :goto_16

    :cond_24
    const/16 v8, 0x26

    if-ne v7, v8, :cond_25

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x22

    aput v8, v6, v7

    goto :goto_16

    :cond_25
    const/16 v8, 0x27

    if-ne v7, v8, :cond_26

    const/16 v8, 0xd

    const/16 v9, 0xa

    :goto_15
    invoke-direct {v0, v9, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_16

    :cond_26
    const/16 v8, 0x22

    if-ne v7, v8, :cond_27

    const/16 v8, 0x11

    const/16 v9, 0xe

    goto :goto_15

    :cond_27
    const/16 v8, 0x23

    if-ne v7, v8, :cond_28

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x2

    aput v8, v6, v7

    :cond_28
    :goto_16
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_29

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x35

    aput v8, v6, v7

    goto :goto_17

    :cond_29
    const/16 v7, 0x3e

    if-ne v6, v7, :cond_2a

    const/16 v7, 0x2b

    if-le v4, v7, :cond_2c

    goto/16 :goto_b

    :cond_2a
    if-ne v6, v14, :cond_2b

    const/16 v7, 0x29

    if-le v4, v7, :cond_2c

    goto/16 :goto_c

    :cond_2b
    const/16 v7, 0xd

    if-ne v6, v7, :cond_2c

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x6

    aput v8, v6, v7

    goto :goto_17

    :pswitch_3d
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x0

    aput v8, v6, v7

    goto :goto_17

    :pswitch_3e
    const-wide v6, -0x800000001L

    and-long v6, v21, v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_2c

    const/16 v6, 0x12

    if-le v4, v6, :cond_2c

    const/16 v4, 0x12

    goto :goto_17

    :pswitch_3f
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_2c

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    :cond_2c
    :goto_17
    if-ne v5, v3, :cond_1

    :goto_18
    const/4 v13, 0x1

    goto/16 :goto_26

    :cond_2d
    const/16 v7, 0x80

    if-ge v6, v7, :cond_4b

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v6

    :goto_19
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v9, v6, v5

    const/4 v10, 0x1

    if-eq v9, v10, :cond_48

    const/4 v10, 0x3

    if-eq v9, v10, :cond_40

    const/16 v10, 0x9

    if-eq v9, v10, :cond_3f

    const/16 v10, 0x1b

    if-eq v9, v10, :cond_3e

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_3d

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_3c

    const/16 v10, 0x40

    if-eq v9, v10, :cond_3b

    const/16 v10, 0x42

    if-eq v9, v10, :cond_3a

    const/16 v10, 0x56

    if-eq v9, v10, :cond_39

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_38

    const/16 v10, 0xd

    if-eq v9, v10, :cond_37

    const/16 v10, 0xe

    if-eq v9, v10, :cond_36

    const/16 v10, 0x33

    if-eq v9, v10, :cond_34

    const/16 v10, 0x34

    if-eq v9, v10, :cond_33

    if-eq v9, v11, :cond_32

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_30

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    goto :goto_1a

    :pswitch_40
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x6f

    if-ne v9, v10, :cond_2e

    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x4d

    aput v10, v6, v9

    goto :goto_1a

    :pswitch_41
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x74

    if-ne v6, v9, :cond_2e

    if-le v4, v15, :cond_2e

    const/16 v4, 0x2f

    :cond_2e
    :goto_1a
    const/16 v9, 0x2c

    const/16 v10, 0x3e

    :cond_2f
    :goto_1b
    const/16 v17, 0x27

    const/16 v18, 0x29

    goto/16 :goto_21

    :pswitch_42
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x65

    if-ne v6, v9, :cond_2e

    if-le v4, v2, :cond_2e

    const/16 v4, 0x2e

    goto :goto_1a

    :pswitch_43
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x6e

    if-ne v6, v9, :cond_2e

    const/16 v6, 0x83

    const/16 v9, 0x84

    invoke-direct {v0, v6, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_1a

    :pswitch_44
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x65

    if-ne v6, v9, :cond_2e

    const/16 v6, 0x2c

    if-le v4, v6, :cond_2e

    const/16 v4, 0x2c

    goto :goto_1a

    :pswitch_45
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x74

    if-ne v6, v9, :cond_2e

    const/16 v9, 0x2b

    if-le v4, v9, :cond_2e

    const/16 v4, 0x2b

    goto :goto_1a

    :pswitch_46
    const/16 v9, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x67

    if-ne v6, v10, :cond_2e

    const/16 v6, 0x85

    const/16 v10, 0x86

    :goto_1c
    invoke-direct {v0, v6, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_1a

    :pswitch_47
    const/16 v9, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x65

    if-ne v6, v10, :cond_2e

    const/16 v6, 0x2a

    if-le v4, v6, :cond_2e

    const/16 v4, 0x2a

    goto :goto_1a

    :pswitch_48
    const/16 v9, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x74

    if-ne v6, v10, :cond_2e

    const/16 v6, 0x29

    if-le v4, v6, :cond_2e

    const/16 v4, 0x29

    goto :goto_1a

    :pswitch_49
    const/16 v9, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x6c

    if-ne v6, v10, :cond_2e

    const/16 v6, 0x87

    const/16 v10, 0x88

    goto :goto_1c

    :pswitch_4a
    const/16 v9, 0x2b

    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x6f

    if-ne v10, v14, :cond_2e

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x29

    aput v14, v6, v10

    goto/16 :goto_1a

    :pswitch_4b
    const/16 v9, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x72

    if-ne v6, v10, :cond_2e

    const/16 v6, 0x28

    if-le v4, v6, :cond_2e

    :goto_1d
    const/16 v4, 0x28

    goto/16 :goto_1a

    :pswitch_4c
    const/16 v9, 0x2b

    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x7c

    if-ne v10, v14, :cond_2e

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x27

    aput v14, v6, v10

    goto/16 :goto_1a

    :pswitch_4d
    const/16 v9, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x7c

    if-ne v6, v10, :cond_2e

    const/16 v6, 0x28

    if-le v4, v6, :cond_2e

    goto :goto_1d

    :pswitch_4e
    const/16 v9, 0x2b

    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x61

    if-ne v10, v14, :cond_2e

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x25

    aput v14, v6, v10

    goto/16 :goto_1a

    :pswitch_4f
    const/16 v9, 0x2b

    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x6e

    if-ne v10, v14, :cond_2e

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x24

    aput v14, v6, v10

    goto/16 :goto_1a

    :pswitch_50
    const/16 v9, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v10, 0x64

    if-ne v6, v10, :cond_2e

    const/16 v6, 0x27

    if-le v4, v6, :cond_2e

    const/16 v4, 0x27

    goto/16 :goto_1a

    :pswitch_51
    const/16 v9, 0x2b

    const-wide v21, 0x7e0000007eL

    and-long v21, v7, v21

    cmp-long v6, v21, v19

    if-eqz v6, :cond_2e

    const/16 v6, 0x11

    const/16 v10, 0xe

    invoke-direct {v0, v10, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1a

    :pswitch_52
    const/16 v9, 0x2b

    const-wide v21, 0x7e0000007eL

    and-long v21, v7, v21

    cmp-long v10, v21, v19

    if-eqz v10, :cond_2e

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x17

    aput v14, v6, v10

    goto/16 :goto_1a

    :pswitch_53
    const/16 v9, 0x2b

    const-wide v21, 0x7e0000007eL

    and-long v21, v7, v21

    cmp-long v10, v21, v19

    if-eqz v10, :cond_2e

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x16

    aput v14, v6, v10

    goto/16 :goto_1a

    :pswitch_54
    const/16 v9, 0x2b

    const-wide v21, 0x7e0000007eL

    and-long v21, v7, v21

    cmp-long v10, v21, v19

    if-eqz v10, :cond_2e

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x15

    aput v14, v6, v10

    goto/16 :goto_1a

    :pswitch_55
    const/16 v9, 0x2b

    iget-char v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x75

    if-ne v10, v14, :cond_2e

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x14

    aput v14, v6, v10

    goto/16 :goto_1a

    :cond_30
    const/16 v9, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_31

    const/16 v6, 0x3f

    const/16 v10, 0x3e

    invoke-direct {v0, v10, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_1e

    :cond_31
    const/16 v10, 0x3e

    goto :goto_1e

    :cond_32
    const/16 v9, 0x2b

    const/16 v10, 0x3e

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_35

    const/16 v6, 0x89

    const/16 v14, 0x8c

    invoke-direct {v0, v6, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1e

    :cond_33
    const/16 v9, 0x2b

    const/16 v10, 0x3e

    iget-char v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x65

    if-ne v14, v9, :cond_35

    iget v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v9, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x33

    aput v14, v6, v9

    goto :goto_1e

    :cond_34
    const/16 v10, 0x3e

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x71

    if-ne v6, v9, :cond_35

    if-le v4, v12, :cond_35

    const/16 v4, 0x2d

    :cond_35
    :goto_1e
    const/16 v9, 0x2c

    goto/16 :goto_1b

    :cond_36
    const/16 v10, 0x3e

    const-wide v21, 0x14404400000000L

    and-long v21, v7, v21

    cmp-long v6, v21, v19

    if-eqz v6, :cond_35

    const/16 v6, 0x11

    const/16 v9, 0xe

    invoke-direct {v0, v9, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1e

    :cond_37
    const/16 v10, 0x3e

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_35

    const/16 v6, 0x27

    const/16 v9, 0x2c

    invoke-direct {v0, v6, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1b

    :cond_38
    const/16 v9, 0x2c

    const/16 v10, 0x3e

    const-wide v21, 0x2000000020L

    and-long v21, v7, v21

    cmp-long v6, v21, v19

    if-eqz v6, :cond_2f

    const/16 v6, 0x91

    const/16 v14, 0x92

    :goto_1f
    invoke-direct {v0, v6, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1b

    :cond_39
    const/16 v9, 0x2c

    const/16 v10, 0x3e

    const-wide v21, 0x2000000020L

    and-long v21, v7, v21

    cmp-long v6, v21, v19

    if-eqz v6, :cond_2f

    const/16 v6, 0x8f

    const/16 v14, 0x90

    goto :goto_1f

    :cond_3a
    const/16 v9, 0x2c

    const/16 v10, 0x3e

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_2f

    const/16 v6, 0x8d

    const/16 v14, 0x8e

    goto :goto_1f

    :cond_3b
    const/16 v9, 0x2c

    const/16 v10, 0x3e

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_2f

    const/16 v6, 0x40

    const/16 v14, 0x41

    invoke-direct {v0, v6, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1b

    :cond_3c
    const/16 v9, 0x2c

    const/16 v10, 0x3e

    const-wide v21, 0x2000000020L

    and-long v21, v7, v21

    cmp-long v6, v21, v19

    if-eqz v6, :cond_2f

    invoke-direct {v0, v12, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1b

    :cond_3d
    const/16 v9, 0x2c

    const/16 v10, 0x3e

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_2f

    const/16 v6, 0x19

    const/16 v14, 0x1a

    goto :goto_1f

    :cond_3e
    const/16 v6, 0xd

    const/16 v9, 0x2c

    const/16 v10, 0x3e

    const/16 v14, 0xa

    invoke-direct {v0, v14, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1b

    :cond_3f
    const/16 v6, 0x11

    const/16 v9, 0x2c

    const/16 v10, 0x3e

    const/16 v14, 0xe

    invoke-direct {v0, v14, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1b

    :cond_40
    const/16 v9, 0x2c

    const/16 v10, 0x3e

    iget-char v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v2, 0x6e

    if-ne v14, v2, :cond_41

    const/16 v2, 0x83

    const/16 v6, 0x84

    :goto_20
    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1b

    :cond_41
    const/16 v2, 0x67

    if-ne v14, v2, :cond_42

    const/16 v2, 0x85

    const/16 v6, 0x86

    goto :goto_20

    :cond_42
    const/16 v2, 0x6c

    if-ne v14, v2, :cond_43

    const/16 v2, 0x87

    const/16 v6, 0x88

    goto :goto_20

    :cond_43
    if-ne v14, v13, :cond_44

    const/16 v2, 0x89

    const/16 v6, 0x8c

    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1b

    :cond_44
    const/16 v2, 0x65

    if-ne v14, v2, :cond_45

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v2, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x33

    aput v14, v6, v2

    goto/16 :goto_1b

    :cond_45
    const/16 v2, 0x6f

    if-ne v14, v2, :cond_46

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v2, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v18, 0x29

    aput v18, v6, v2

    const/16 v17, 0x27

    goto :goto_21

    :cond_46
    const/16 v18, 0x29

    const/16 v2, 0x7c

    if-ne v14, v2, :cond_47

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v2, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x27

    aput v17, v6, v2

    goto :goto_21

    :cond_47
    const/16 v17, 0x27

    const/16 v2, 0x61

    if-ne v14, v2, :cond_49

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v2, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x25

    aput v14, v6, v2

    goto :goto_21

    :cond_48
    const/16 v2, 0x12

    const/16 v9, 0x2c

    const/16 v10, 0x3e

    const/16 v17, 0x27

    const/16 v18, 0x29

    if-le v4, v2, :cond_49

    const/16 v4, 0x12

    :cond_49
    :goto_21
    if-ne v5, v3, :cond_4a

    goto/16 :goto_18

    :cond_4a
    const/16 v2, 0x2e

    goto/16 :goto_19

    :cond_4b
    shr-int/lit8 v2, v6, 0x8

    shr-int/lit8 v7, v6, 0xe

    and-int/lit8 v8, v2, 0x3f

    const-wide/16 v9, 0x1

    shl-long v8, v9, v8

    and-int/lit16 v10, v6, 0xff

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v6

    :cond_4c
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v6, v6, v5

    const/4 v13, 0x1

    if-eq v6, v13, :cond_51

    const/16 v14, 0x9

    if-eq v6, v14, :cond_4f

    const/16 v14, 0x1b

    if-eq v6, v14, :cond_4d

    const/16 v6, 0x12

    const/16 v14, 0xa

    :goto_22
    const/16 v15, 0x11

    goto :goto_25

    :cond_4d
    move/from16 v23, v2

    move/from16 v24, v7

    move/from16 v25, v10

    move-wide/from16 v26, v8

    move-wide/from16 v28, v11

    invoke-static/range {v23 .. v29}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_4e

    const/16 v6, 0xd

    const/16 v14, 0xa

    invoke-direct {v0, v14, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    :goto_23
    const/16 v6, 0x12

    goto :goto_22

    :cond_4e
    const/16 v14, 0xa

    goto :goto_23

    :cond_4f
    const/16 v6, 0xd

    const/16 v14, 0xa

    move/from16 v23, v2

    move/from16 v24, v7

    move/from16 v25, v10

    move-wide/from16 v26, v8

    move-wide/from16 v28, v11

    invoke-static/range {v23 .. v29}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_50

    const/16 v6, 0xe

    const/16 v15, 0x11

    invoke-direct {v0, v6, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    :goto_24
    const/16 v6, 0x12

    goto :goto_25

    :cond_50
    const/16 v15, 0x11

    goto :goto_24

    :cond_51
    const/16 v6, 0xe

    const/16 v14, 0xa

    const/16 v15, 0x11

    move/from16 v23, v2

    move/from16 v24, v7

    move/from16 v25, v10

    move-wide/from16 v26, v8

    move-wide/from16 v28, v11

    invoke-static/range {v23 .. v29}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v16

    const/16 v6, 0x12

    if-eqz v16, :cond_52

    if-le v4, v6, :cond_52

    const/16 v4, 0x12

    :cond_52
    :goto_25
    if-ne v5, v3, :cond_4c

    :goto_26
    const v2, 0x7fffffff

    if-eq v4, v2, :cond_53

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v2, 0x7fffffff

    const v4, 0x7fffffff

    :cond_53
    add-int/lit8 v1, v1, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x5e

    if-ne v5, v3, :cond_54

    return v1

    :cond_54
    :try_start_0
    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_37
        :pswitch_35
        :pswitch_34
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
    .end packed-switch
.end method

.method private jjMoveNfa_4(II)I
    .locals 29

    move-object/from16 v0, p0

    const/16 v1, 0x64

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7fffffff

    move/from16 v1, p2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    :goto_0
    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v6, v2

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x40

    const/16 v8, 0x24

    const/16 v9, 0x2d

    const/16 v14, 0x3c

    const/16 v15, 0x3e

    const/16 v2, 0x3b

    const/16 v10, 0x5c

    const/16 v12, 0x2e

    const-wide/16 v17, 0x0

    if-ge v6, v7, :cond_2f

    const-wide/16 v19, 0x1

    shl-long v19, v19, v6

    :goto_1
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v6, v5

    const/16 v13, 0x36

    const/16 v11, 0x37

    const-wide/high16 v22, 0x3ff000000000000L

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_17

    :pswitch_1
    and-long v6, v19, v22

    cmp-long v11, v6, v17

    if-eqz v11, :cond_1

    const/16 v6, 0x5f

    const/16 v7, 0x60

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_2

    :cond_1
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_2

    const/16 v6, 0x39

    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    const/16 v6, 0x59

    const/16 v7, 0x5a

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_3
    if-eqz v11, :cond_2d

    if-le v4, v13, :cond_4

    :goto_3
    const/16 v4, 0x36

    :cond_4
    const/16 v6, 0x56

    const/16 v7, 0x58

    :goto_4
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_17

    :pswitch_2
    and-long v6, v19, v22

    cmp-long v11, v6, v17

    if-nez v11, :cond_5

    goto/16 :goto_17

    :cond_5
    if-le v4, v13, :cond_6

    const/16 v4, 0x36

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x5

    :goto_5
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_17

    :pswitch_3
    and-long v6, v19, v22

    cmp-long v13, v6, v17

    if-nez v13, :cond_7

    goto/16 :goto_17

    :cond_7
    if-le v4, v11, :cond_8

    const/16 v4, 0x37

    :cond_8
    :goto_6
    const/16 v6, 0x62

    :goto_7
    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_17

    :pswitch_4
    const-wide v6, 0x280000000000L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    goto :goto_6

    :pswitch_5
    and-long v6, v19, v22

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    const/16 v6, 0x5f

    const/16 v7, 0x60

    goto :goto_4

    :pswitch_6
    and-long v6, v19, v22

    cmp-long v13, v6, v17

    if-nez v13, :cond_9

    goto/16 :goto_17

    :cond_9
    if-le v4, v11, :cond_a

    const/16 v4, 0x37

    :cond_a
    :goto_8
    const/16 v6, 0x5e

    goto :goto_7

    :pswitch_7
    const-wide v6, 0x280000000000L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    goto :goto_8

    :pswitch_8
    and-long v6, v19, v22

    cmp-long v13, v6, v17

    if-nez v13, :cond_b

    goto/16 :goto_17

    :cond_b
    if-le v4, v11, :cond_c

    :goto_9
    const/16 v4, 0x37

    :cond_c
    const/16 v6, 0x5b

    invoke-direct {v0, v6, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_17

    :pswitch_9
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v6, v12, :cond_d

    goto/16 :goto_17

    :cond_d
    if-le v4, v11, :cond_c

    goto :goto_9

    :pswitch_a
    and-long v6, v19, v22

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    const/16 v6, 0x59

    const/16 v7, 0x5a

    goto/16 :goto_4

    :pswitch_b
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v12, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x57

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_c
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_2d

    if-le v4, v13, :cond_2d

    const/16 v4, 0x36

    goto/16 :goto_17

    :pswitch_d
    and-long v6, v19, v22

    cmp-long v11, v6, v17

    if-nez v11, :cond_e

    goto/16 :goto_17

    :cond_e
    if-le v4, v13, :cond_4

    goto/16 :goto_3

    :pswitch_e
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_2d

    const/4 v6, 0x6

    const/16 v7, 0x9

    goto/16 :goto_5

    :pswitch_f
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v6, v8, :cond_f

    goto/16 :goto_17

    :cond_f
    const/16 v6, 0xf

    if-le v4, v6, :cond_10

    const/16 v4, 0xf

    :cond_10
    :goto_a
    const/16 v6, 0x48

    const/16 v7, 0x49

    goto/16 :goto_4

    :pswitch_10
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x10

    if-le v4, v6, :cond_2d

    const/16 v4, 0x10

    goto/16 :goto_17

    :pswitch_11
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v8, :cond_2d

    goto :goto_a

    :pswitch_12
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v8, :cond_2d

    const/16 v6, 0xf

    if-le v4, v6, :cond_2d

    const/16 v4, 0xf

    goto/16 :goto_17

    :pswitch_13
    and-long v6, v19, v22

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    const/16 v6, 0x1b

    const/16 v7, 0x1c

    :goto_b
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_17

    :pswitch_14
    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-nez v7, :cond_11

    goto/16 :goto_17

    :cond_11
    if-le v4, v2, :cond_12

    const/16 v4, 0x3b

    :cond_12
    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v15, v6, v7

    goto/16 :goto_17

    :pswitch_15
    and-long v6, v19, v22

    cmp-long v13, v6, v17

    if-nez v13, :cond_13

    goto/16 :goto_17

    :cond_13
    if-le v4, v11, :cond_14

    const/16 v4, 0x37

    :cond_14
    :goto_c
    invoke-direct {v0, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_17

    :pswitch_16
    const-wide v6, 0x280000000000L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    goto :goto_c

    :pswitch_17
    and-long v6, v19, v22

    cmp-long v13, v6, v17

    if-nez v13, :cond_15

    goto/16 :goto_17

    :cond_15
    if-le v4, v11, :cond_16

    const/16 v4, 0x37

    :cond_16
    const/16 v6, 0x39

    const/16 v7, 0x3a

    goto/16 :goto_4

    :pswitch_18
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_2d

    const/16 v6, 0x39

    goto/16 :goto_7

    :pswitch_19
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x2f

    if-le v4, v6, :cond_2d

    const/16 v4, 0x2f

    goto/16 :goto_17

    :pswitch_1a
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x21

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x35

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_1b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    if-le v4, v12, :cond_2d

    const/16 v4, 0x2e

    goto/16 :goto_17

    :pswitch_1c
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x3d

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x31

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_1d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    if-le v4, v9, :cond_2d

    const/16 v4, 0x2d

    goto/16 :goto_17

    :pswitch_1e
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v15, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2f

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_1f
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x2c

    if-le v4, v6, :cond_2d

    const/16 v4, 0x2c

    goto/16 :goto_17

    :pswitch_20
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v15, :cond_2d

    const/16 v6, 0x2b

    if-le v4, v6, :cond_2d

    :goto_d
    const/16 v4, 0x2b

    goto/16 :goto_17

    :pswitch_21
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v14, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2c

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_22
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x2a

    if-le v4, v6, :cond_2d

    const/16 v4, 0x2a

    goto/16 :goto_17

    :pswitch_23
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v14, :cond_2d

    const/16 v6, 0x29

    if-le v4, v6, :cond_2d

    :goto_e
    const/16 v4, 0x29

    goto/16 :goto_17

    :pswitch_24
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x26

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x22

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_25
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x26

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x27

    if-le v4, v6, :cond_2d

    const/16 v4, 0x27

    goto/16 :goto_17

    :pswitch_26
    const/16 v6, 0x27

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v6, :cond_2d

    const/16 v6, 0x1f

    if-le v4, v6, :cond_2d

    :goto_f
    const/16 v4, 0x1f

    goto/16 :goto_17

    :pswitch_27
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2d

    const/16 v6, 0xd

    :goto_10
    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_17

    :pswitch_28
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x19

    const/16 v7, 0x1a

    goto/16 :goto_b

    :pswitch_29
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x27

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x1c

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_2a
    const-wide v6, -0x8000000001L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    const/16 v6, 0xd

    const/16 v7, 0xa

    goto :goto_10

    :pswitch_2b
    const/16 v6, 0xd

    const/16 v7, 0xa

    iget-char v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v13, 0x27

    if-ne v11, v13, :cond_2d

    :goto_11
    goto :goto_10

    :pswitch_2c
    const/16 v7, 0xa

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v7, :cond_2d

    :goto_12
    const/16 v6, 0x11

    const/16 v7, 0xe

    goto :goto_10

    :pswitch_2d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x17

    const/16 v7, 0x18

    goto/16 :goto_b

    :pswitch_2e
    and-long v6, v19, v22

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    goto :goto_12

    :pswitch_2f
    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x17

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_30
    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x16

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_31
    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x15

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_32
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    const/16 v6, 0x10

    goto/16 :goto_7

    :pswitch_33
    const-wide/high16 v22, 0xf000000000000L

    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x12

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_34
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    goto :goto_12

    :pswitch_35
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    const/16 v6, 0x16

    const/16 v7, 0x12

    goto/16 :goto_10

    :pswitch_36
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x22

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x1f

    if-le v4, v6, :cond_2d

    goto/16 :goto_f

    :pswitch_37
    const/16 v7, 0x22

    iget-char v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v11, v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0xa

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_38
    const-wide v6, -0x400000001L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-eqz v11, :cond_2d

    goto/16 :goto_12

    :pswitch_39
    const/16 v6, 0x11

    const/16 v7, 0xe

    iget-char v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v13, 0x22

    if-ne v11, v13, :cond_2d

    goto/16 :goto_11

    :pswitch_3a
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0xd

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x6

    aput v11, v6, v7

    goto/16 :goto_17

    :pswitch_3b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x1d

    if-le v4, v6, :cond_2d

    :goto_13
    const/16 v4, 0x1d

    goto/16 :goto_17

    :pswitch_3c
    const/16 v6, 0x1d

    const-wide/16 v22, 0x2400

    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-eqz v7, :cond_2d

    if-le v4, v6, :cond_2d

    goto :goto_13

    :pswitch_3d
    const-wide v6, 0x100000200L

    and-long v6, v19, v6

    cmp-long v11, v6, v17

    if-nez v11, :cond_17

    goto/16 :goto_17

    :cond_17
    const/16 v6, 0x1c

    if-le v4, v6, :cond_18

    const/16 v4, 0x1c

    :cond_18
    const/4 v6, 0x4

    goto/16 :goto_7

    :pswitch_3e
    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-eqz v7, :cond_1a

    if-le v4, v13, :cond_19

    goto :goto_14

    :cond_19
    move v13, v4

    :goto_14
    const/4 v4, 0x0

    const/4 v6, 0x5

    invoke-direct {v0, v4, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    move v4, v13

    goto/16 :goto_16

    :cond_1a
    const-wide/16 v22, 0x2400

    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-eqz v7, :cond_1b

    const/16 v7, 0x1d

    if-le v4, v7, :cond_29

    const/16 v4, 0x1d

    goto/16 :goto_16

    :cond_1b
    const-wide v22, 0x100000200L

    and-long v22, v19, v22

    cmp-long v7, v22, v17

    if-eqz v7, :cond_1d

    const/16 v6, 0x1c

    if-le v4, v6, :cond_1c

    const/16 v4, 0x1c

    :cond_1c
    const/4 v6, 0x4

    :goto_15
    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_16

    :cond_1d
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v9, :cond_1e

    const/4 v6, 0x6

    const/16 v7, 0x9

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_16

    :cond_1e
    if-ne v7, v8, :cond_20

    const/16 v6, 0xf

    if-le v4, v6, :cond_1f

    const/16 v4, 0xf

    :cond_1f
    const/16 v6, 0x48

    const/16 v7, 0x49

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_16

    :cond_20
    if-ne v7, v12, :cond_21

    const/16 v6, 0x39

    goto :goto_15

    :cond_21
    const/16 v11, 0x21

    if-ne v7, v11, :cond_22

    const/16 v11, 0x2f

    if-le v4, v11, :cond_29

    const/16 v4, 0x2f

    goto :goto_16

    :cond_22
    const/16 v11, 0x3d

    if-ne v7, v11, :cond_23

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x31

    aput v11, v6, v7

    goto :goto_16

    :cond_23
    if-ne v7, v15, :cond_24

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2f

    aput v11, v6, v7

    goto :goto_16

    :cond_24
    if-ne v7, v14, :cond_25

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2c

    aput v11, v6, v7

    goto :goto_16

    :cond_25
    const/16 v11, 0x26

    if-ne v7, v11, :cond_26

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x22

    aput v11, v6, v7

    goto :goto_16

    :cond_26
    const/16 v11, 0x22

    const/16 v13, 0x27

    if-ne v7, v13, :cond_27

    const/16 v9, 0xa

    const/16 v13, 0xd

    invoke-direct {v0, v9, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_16

    :cond_27
    if-ne v7, v11, :cond_28

    const/16 v9, 0x11

    const/16 v11, 0xe

    invoke-direct {v0, v11, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_16

    :cond_28
    const/16 v9, 0x23

    if-ne v7, v9, :cond_29

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x2

    aput v9, v6, v7

    :cond_29
    :goto_16
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_2a

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x35

    aput v9, v6, v7

    goto :goto_17

    :cond_2a
    if-ne v6, v15, :cond_2b

    const/16 v6, 0x2b

    if-le v4, v6, :cond_2d

    goto/16 :goto_d

    :cond_2b
    if-ne v6, v14, :cond_2c

    const/16 v7, 0x29

    if-le v4, v7, :cond_2d

    goto/16 :goto_e

    :cond_2c
    const/16 v7, 0xd

    if-ne v6, v7, :cond_2d

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x6

    aput v9, v6, v7

    goto :goto_17

    :pswitch_3f
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x2a

    if-ne v7, v9, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x0

    aput v9, v6, v7

    goto :goto_17

    :pswitch_40
    const-wide v6, -0x800000001L

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-eqz v9, :cond_2d

    const/16 v6, 0x12

    if-le v4, v6, :cond_2d

    const/16 v4, 0x12

    goto :goto_17

    :pswitch_41
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x2a

    if-ne v7, v9, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x1

    aput v9, v6, v7

    :cond_2d
    :goto_17
    if-ne v5, v3, :cond_2e

    :goto_18
    const/4 v13, 0x1

    goto/16 :goto_2d

    :cond_2e
    const/16 v9, 0x2d

    goto/16 :goto_1

    :cond_2f
    const/16 v7, 0x80

    if-ge v6, v7, :cond_4f

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v19, 0x1

    shl-long v19, v19, v6

    :goto_19
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v6, v5

    const/4 v9, 0x1

    if-eq v7, v9, :cond_4c

    const/4 v9, 0x3

    if-eq v7, v9, :cond_41

    const/16 v9, 0x9

    if-eq v7, v9, :cond_40

    const/16 v9, 0x1b

    if-eq v7, v9, :cond_3f

    const/16 v9, 0x1e

    if-eq v7, v9, :cond_3e

    const/16 v9, 0x3a

    if-eq v7, v9, :cond_3d

    const/16 v9, 0x46

    if-eq v7, v9, :cond_3c

    const/16 v9, 0x48

    if-eq v7, v9, :cond_3b

    if-eq v7, v10, :cond_3a

    const/16 v9, 0x60

    if-eq v7, v9, :cond_39

    const/16 v9, 0xd

    if-eq v7, v9, :cond_38

    const/16 v9, 0xe

    if-eq v7, v9, :cond_37

    const/16 v9, 0x33

    if-eq v7, v9, :cond_36

    const/16 v9, 0x34

    if-eq v7, v9, :cond_35

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    packed-switch v7, :pswitch_data_4

    :goto_1a
    goto :goto_1b

    :pswitch_42
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x6f

    if-ne v7, v9, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x53

    aput v9, v6, v7

    goto :goto_1b

    :pswitch_43
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x74

    if-ne v6, v7, :cond_30

    const/16 v6, 0x2f

    if-le v4, v6, :cond_30

    const/16 v4, 0x2f

    :cond_30
    :goto_1b
    const/16 v9, 0x2d

    :cond_31
    :goto_1c
    const/16 v11, 0x27

    const/16 v13, 0x1d

    goto/16 :goto_28

    :pswitch_44
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x65

    if-ne v6, v7, :cond_30

    if-le v4, v12, :cond_30

    const/16 v4, 0x2e

    goto :goto_1b

    :pswitch_45
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x6e

    if-ne v6, v7, :cond_30

    const/16 v6, 0x21

    const/16 v7, 0x22

    :goto_1d
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_1b

    :pswitch_46
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x65

    if-ne v6, v7, :cond_30

    const/16 v6, 0x2c

    if-le v4, v6, :cond_30

    const/16 v4, 0x2c

    goto :goto_1b

    :pswitch_47
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x74

    if-ne v6, v7, :cond_30

    const/16 v6, 0x2b

    if-le v4, v6, :cond_30

    const/16 v4, 0x2b

    goto :goto_1b

    :pswitch_48
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x67

    if-ne v6, v7, :cond_30

    const/16 v6, 0x23

    invoke-direct {v0, v6, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_1b

    :pswitch_49
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x65

    if-ne v6, v7, :cond_30

    const/16 v6, 0x2a

    if-le v4, v6, :cond_30

    const/16 v4, 0x2a

    goto :goto_1b

    :pswitch_4a
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x74

    if-ne v6, v7, :cond_30

    const/16 v6, 0x29

    if-le v4, v6, :cond_30

    const/16 v4, 0x29

    goto :goto_1b

    :pswitch_4b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_30

    const/16 v6, 0x25

    const/16 v7, 0x26

    goto :goto_1d

    :pswitch_4c
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v10, :cond_30

    const/16 v6, 0x44

    const/16 v7, 0x45

    :goto_1e
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_1b

    :pswitch_4d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v10, :cond_30

    const/16 v6, 0x20

    const/16 v7, 0x1d

    :goto_1f
    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1b

    :pswitch_4e
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_30

    if-le v4, v14, :cond_30

    const/16 v4, 0x3c

    goto/16 :goto_1b

    :pswitch_4f
    const-wide v6, 0x7fffffe87fffffeL

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-eqz v9, :cond_30

    :goto_20
    const/16 v6, 0x41

    const/16 v7, 0x42

    goto :goto_1e

    :pswitch_50
    const-wide v6, 0x7fffffe87ffffffL

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-eqz v9, :cond_30

    goto :goto_20

    :pswitch_51
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x7b

    if-ne v7, v9, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x40

    aput v9, v6, v7

    goto/16 :goto_1b

    :pswitch_52
    const-wide v6, 0x7fffffe87fffffeL

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-nez v9, :cond_32

    goto/16 :goto_1a

    :cond_32
    if-le v4, v2, :cond_33

    :goto_21
    const/16 v4, 0x3b

    :cond_33
    invoke-direct {v0, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1b

    :pswitch_53
    const-wide v6, 0x7fffffe87ffffffL

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-nez v9, :cond_34

    goto/16 :goto_1a

    :cond_34
    if-le v4, v2, :cond_33

    goto :goto_21

    :pswitch_54
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x6f

    if-ne v7, v9, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x29

    aput v9, v6, v7

    goto/16 :goto_1b

    :pswitch_55
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x72

    if-ne v6, v7, :cond_30

    const/16 v6, 0x28

    if-le v4, v6, :cond_30

    :goto_22
    const/16 v4, 0x28

    goto/16 :goto_1b

    :pswitch_56
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x7c

    if-ne v7, v9, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x27

    aput v9, v6, v7

    goto/16 :goto_1b

    :pswitch_57
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7c

    if-ne v6, v7, :cond_30

    const/16 v6, 0x28

    if-le v4, v6, :cond_30

    goto :goto_22

    :pswitch_58
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x61

    if-ne v7, v9, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x25

    aput v9, v6, v7

    goto/16 :goto_1b

    :pswitch_59
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x6e

    if-ne v7, v9, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v8, v6, v7

    goto/16 :goto_1b

    :pswitch_5a
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x64

    if-ne v6, v7, :cond_30

    const/16 v6, 0x27

    if-le v4, v6, :cond_30

    const/16 v4, 0x27

    goto/16 :goto_1b

    :pswitch_5b
    const-wide v6, 0x7e0000007eL

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-eqz v9, :cond_30

    :goto_23
    const/16 v6, 0x11

    const/16 v7, 0xe

    goto/16 :goto_1f

    :pswitch_5c
    const-wide v23, 0x7e0000007eL

    and-long v23, v19, v23

    cmp-long v7, v23, v17

    if-eqz v7, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x17

    aput v9, v6, v7

    goto/16 :goto_1b

    :pswitch_5d
    const-wide v23, 0x7e0000007eL

    and-long v23, v19, v23

    cmp-long v7, v23, v17

    if-eqz v7, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x16

    aput v9, v6, v7

    goto/16 :goto_1b

    :pswitch_5e
    const-wide v23, 0x7e0000007eL

    and-long v23, v19, v23

    cmp-long v7, v23, v17

    if-eqz v7, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x15

    aput v9, v6, v7

    goto/16 :goto_1b

    :pswitch_5f
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x75

    if-ne v7, v9, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x14

    aput v9, v6, v7

    goto/16 :goto_1b

    :cond_35
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x65

    if-ne v7, v9, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x33

    aput v9, v6, v7

    goto/16 :goto_1b

    :cond_36
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x71

    if-ne v6, v7, :cond_30

    const/16 v6, 0x2d

    if-le v4, v6, :cond_30

    const/16 v4, 0x2d

    goto/16 :goto_1b

    :cond_37
    const-wide v6, 0x14404400000000L

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-eqz v9, :cond_30

    goto/16 :goto_23

    :cond_38
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v10, :cond_30

    const/16 v6, 0x2c

    const/16 v7, 0x27

    :goto_24
    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1b

    :cond_39
    const-wide v6, 0x2000000020L

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-eqz v9, :cond_30

    const/16 v6, 0x33

    const/16 v7, 0x34

    goto/16 :goto_1d

    :cond_3a
    const-wide v6, 0x2000000020L

    and-long v6, v19, v6

    cmp-long v9, v6, v17

    if-eqz v9, :cond_30

    const/16 v6, 0x31

    const/16 v7, 0x32

    goto/16 :goto_1d

    :cond_3b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v10, :cond_30

    const/16 v6, 0x30

    const/16 v7, 0x2f

    goto :goto_24

    :cond_3c
    const/16 v7, 0x2f

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v10, :cond_30

    const/16 v6, 0x46

    const/16 v9, 0x47

    invoke-direct {v0, v6, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1b

    :cond_3d
    const/16 v7, 0x2f

    const-wide v23, 0x2000000020L

    and-long v23, v19, v23

    cmp-long v6, v23, v17

    if-eqz v6, :cond_30

    const/16 v9, 0x2d

    invoke-direct {v0, v9, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1c

    :cond_3e
    const/16 v7, 0x2f

    const/16 v9, 0x2d

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v10, :cond_31

    const/16 v6, 0x19

    const/16 v11, 0x1a

    invoke-direct {v0, v6, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1c

    :cond_3f
    const/16 v6, 0xd

    const/16 v7, 0x2f

    const/16 v9, 0x2d

    const/16 v11, 0xa

    invoke-direct {v0, v11, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1c

    :cond_40
    const/16 v6, 0x11

    const/16 v7, 0x2f

    const/16 v9, 0x2d

    const/16 v11, 0xe

    invoke-direct {v0, v11, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1c

    :cond_41
    const/16 v7, 0x2f

    const/16 v9, 0x2d

    const-wide v21, 0x7fffffe87ffffffL

    and-long v21, v19, v21

    cmp-long v11, v21, v17

    if-eqz v11, :cond_43

    if-le v4, v2, :cond_42

    const/16 v4, 0x3b

    :cond_42
    invoke-direct {v0, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    const/16 v11, 0x27

    const/16 v13, 0x1d

    goto :goto_26

    :cond_43
    iget-char v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v11, v10, :cond_45

    const/16 v6, 0x20

    const/16 v13, 0x1d

    invoke-direct {v0, v13, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :cond_44
    :goto_25
    const/16 v11, 0x27

    goto :goto_26

    :cond_45
    const/16 v13, 0x1d

    const/16 v2, 0x7b

    if-ne v11, v2, :cond_46

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x40

    aput v11, v6, v2

    goto :goto_25

    :cond_46
    const/16 v2, 0x7c

    if-ne v11, v2, :cond_44

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x27

    aput v11, v6, v2

    :goto_26
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v6, 0x6e

    if-ne v2, v6, :cond_47

    const/16 v2, 0x21

    const/16 v6, 0x22

    :goto_27
    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_28

    :cond_47
    const/16 v6, 0x67

    if-ne v2, v6, :cond_48

    const/16 v2, 0x23

    invoke-direct {v0, v2, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_28

    :cond_48
    const/16 v6, 0x6c

    if-ne v2, v6, :cond_49

    const/16 v2, 0x25

    const/16 v6, 0x26

    goto :goto_27

    :cond_49
    const/16 v6, 0x65

    if-ne v2, v6, :cond_4a

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0x33

    aput v7, v2, v6

    goto :goto_28

    :cond_4a
    const/16 v6, 0x6f

    if-ne v2, v6, :cond_4b

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0x29

    aput v7, v2, v6

    goto :goto_28

    :cond_4b
    const/16 v7, 0x29

    const/16 v6, 0x61

    if-ne v2, v6, :cond_4d

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0x25

    aput v7, v2, v6

    goto :goto_28

    :cond_4c
    const/16 v2, 0x12

    const/16 v9, 0x2d

    const/16 v11, 0x27

    const/16 v13, 0x1d

    if-le v4, v2, :cond_4d

    const/16 v4, 0x12

    :cond_4d
    :goto_28
    if-ne v5, v3, :cond_4e

    goto/16 :goto_18

    :cond_4e
    const/16 v2, 0x3b

    goto/16 :goto_19

    :cond_4f
    shr-int/lit8 v2, v6, 0x8

    shr-int/lit8 v7, v6, 0xe

    and-int/lit8 v8, v2, 0x3f

    const-wide/16 v9, 0x1

    shl-long v8, v9, v8

    and-int/lit16 v10, v6, 0xff

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v6

    :cond_50
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v6, v6, v5

    const/4 v13, 0x1

    if-eq v6, v13, :cond_55

    const/16 v14, 0x9

    if-eq v6, v14, :cond_53

    const/16 v14, 0x1b

    if-eq v6, v14, :cond_51

    const/16 v6, 0x12

    const/16 v14, 0xa

    :goto_29
    const/16 v15, 0x11

    goto :goto_2c

    :cond_51
    move/from16 v22, v2

    move/from16 v23, v7

    move/from16 v24, v10

    move-wide/from16 v25, v8

    move-wide/from16 v27, v11

    invoke-static/range {v22 .. v28}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_52

    const/16 v6, 0xd

    const/16 v14, 0xa

    invoke-direct {v0, v14, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    :goto_2a
    const/16 v6, 0x12

    goto :goto_29

    :cond_52
    const/16 v14, 0xa

    goto :goto_2a

    :cond_53
    const/16 v6, 0xd

    const/16 v14, 0xa

    move/from16 v22, v2

    move/from16 v23, v7

    move/from16 v24, v10

    move-wide/from16 v25, v8

    move-wide/from16 v27, v11

    invoke-static/range {v22 .. v28}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_54

    const/16 v6, 0xe

    const/16 v15, 0x11

    invoke-direct {v0, v6, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    :goto_2b
    const/16 v6, 0x12

    goto :goto_2c

    :cond_54
    const/16 v15, 0x11

    goto :goto_2b

    :cond_55
    const/16 v6, 0xe

    const/16 v14, 0xa

    const/16 v15, 0x11

    move/from16 v22, v2

    move/from16 v23, v7

    move/from16 v24, v10

    move-wide/from16 v25, v8

    move-wide/from16 v27, v11

    invoke-static/range {v22 .. v28}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v16

    const/16 v6, 0x12

    if-eqz v16, :cond_56

    if-le v4, v6, :cond_56

    const/16 v4, 0x12

    :cond_56
    :goto_2c
    if-ne v5, v3, :cond_50

    :goto_2d
    const v2, 0x7fffffff

    if-eq v4, v2, :cond_57

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v2, 0x7fffffff

    const v4, 0x7fffffff

    :cond_57
    add-int/lit8 v1, v1, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x64

    if-ne v5, v3, :cond_58

    return v1

    :cond_58
    :try_start_0
    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_39
        :pswitch_37
        :pswitch_36
        :pswitch_0
        :pswitch_0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_29
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3d
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch
.end method

.method private jjMoveNfa_5(II)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x6c

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7fffffff

    move/from16 v1, p2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    :goto_0
    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v6, v2

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x40

    const/16 v8, 0x2a

    const/16 v9, 0x61

    const/16 v14, 0x12

    const/16 v2, 0x2d

    const/16 v12, 0x5c

    const/16 v13, 0x65

    const/16 v15, 0x2e

    const/16 v10, 0x37

    const-wide/16 v16, 0x0

    if-ge v6, v7, :cond_2f

    const-wide/16 v18, 0x1

    shl-long v18, v18, v6

    :goto_1
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v6, v5

    const/16 v11, 0x36

    const-wide/high16 v22, 0x3ff000000000000L

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_16

    :pswitch_1
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v15, :cond_2d

    const/16 v6, 0x6b

    goto/16 :goto_6

    :pswitch_2
    and-long v6, v18, v22

    cmp-long v20, v6, v16

    if-nez v20, :cond_1

    goto/16 :goto_16

    :cond_1
    if-le v4, v11, :cond_2

    const/16 v4, 0x36

    :cond_2
    const/16 v6, 0xba

    const/16 v7, 0xbf

    :goto_2
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_16

    :pswitch_3
    and-long v6, v18, v22

    cmp-long v11, v6, v16

    if-nez v11, :cond_3

    goto/16 :goto_16

    :cond_3
    if-le v4, v10, :cond_4

    const/16 v4, 0x37

    :cond_4
    :goto_3
    const/16 v6, 0x68

    :goto_4
    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_16

    :pswitch_4
    const-wide v6, 0x280000000000L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    goto :goto_3

    :pswitch_5
    and-long v6, v18, v22

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    const/16 v6, 0x66

    invoke-direct {v0, v13, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_16

    :pswitch_6
    and-long v6, v18, v22

    cmp-long v11, v6, v16

    if-nez v11, :cond_5

    goto/16 :goto_16

    :cond_5
    if-le v4, v10, :cond_6

    const/16 v4, 0x37

    :cond_6
    :goto_5
    const/16 v6, 0x64

    goto :goto_4

    :pswitch_7
    const-wide v6, 0x280000000000L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    goto :goto_5

    :pswitch_8
    and-long v6, v18, v22

    cmp-long v11, v6, v16

    if-nez v11, :cond_7

    goto/16 :goto_16

    :cond_7
    if-le v4, v10, :cond_8

    const/16 v4, 0x37

    :cond_8
    const/16 v6, 0x62

    :goto_6
    invoke-direct {v0, v9, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_16

    :pswitch_9
    and-long v6, v18, v22

    cmp-long v20, v6, v16

    if-eqz v20, :cond_9

    const/16 v6, 0x66

    invoke-direct {v0, v13, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_9
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v15, :cond_a

    invoke-direct {v0, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_a
    :goto_7
    if-eqz v20, :cond_b

    const/16 v6, 0x5a

    const/16 v7, 0x5b

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_b
    if-eqz v20, :cond_2d

    if-le v4, v11, :cond_c

    :goto_8
    const/16 v4, 0x36

    :cond_c
    const/16 v6, 0x57

    const/16 v7, 0x59

    :goto_9
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_16

    :pswitch_a
    and-long v6, v18, v22

    cmp-long v11, v6, v16

    if-nez v11, :cond_d

    goto/16 :goto_16

    :cond_d
    if-le v4, v10, :cond_e

    const/16 v4, 0x37

    :cond_e
    :goto_a
    const/16 v6, 0x5f

    goto/16 :goto_4

    :pswitch_b
    const-wide v6, 0x280000000000L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    goto :goto_a

    :pswitch_c
    and-long v6, v18, v22

    cmp-long v11, v6, v16

    if-nez v11, :cond_f

    goto/16 :goto_16

    :cond_f
    if-le v4, v10, :cond_10

    :goto_b
    const/16 v4, 0x37

    :cond_10
    const/16 v6, 0x5d

    invoke-direct {v0, v12, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_16

    :pswitch_d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v6, v15, :cond_11

    goto/16 :goto_16

    :cond_11
    if-le v4, v10, :cond_10

    goto :goto_b

    :pswitch_e
    and-long v6, v18, v22

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    const/16 v6, 0x5a

    const/16 v7, 0x5b

    goto :goto_9

    :pswitch_f
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v15, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x58

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_10
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v15, :cond_2d

    if-le v4, v11, :cond_2d

    const/16 v4, 0x36

    goto/16 :goto_16

    :pswitch_11
    and-long v6, v18, v22

    cmp-long v20, v6, v16

    if-nez v20, :cond_12

    goto/16 :goto_16

    :cond_12
    if-le v4, v11, :cond_c

    goto :goto_8

    :pswitch_12
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v2, :cond_2d

    const/16 v6, 0xc0

    const/16 v7, 0xc3

    goto/16 :goto_2

    :pswitch_13
    const-wide v6, -0x800000001L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    if-le v4, v14, :cond_2d

    const/16 v4, 0x12

    goto/16 :goto_16

    :pswitch_14
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v8, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x4a

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_15
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v8, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x49

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_16
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x28

    if-ne v6, v7, :cond_2d

    const/16 v6, 0xe

    if-le v4, v6, :cond_2d

    const/16 v4, 0xe

    goto/16 :goto_16

    :pswitch_17
    const-wide v6, 0x100000200L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    const/16 v6, 0xd8

    const/16 v7, 0xd9

    :goto_c
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_16

    :pswitch_18
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x23

    if-ne v6, v7, :cond_2d

    const/16 v6, 0xc4

    const/16 v7, 0xc6

    goto :goto_c

    :pswitch_19
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x24

    if-eq v6, v7, :cond_13

    goto/16 :goto_16

    :cond_13
    const/16 v6, 0xf

    if-le v4, v6, :cond_14

    const/16 v4, 0xf

    :cond_14
    :goto_d
    const/16 v6, 0x3b

    const/16 v7, 0x3c

    goto/16 :goto_9

    :pswitch_1a
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x10

    if-le v4, v6, :cond_2d

    const/16 v4, 0x10

    goto/16 :goto_16

    :pswitch_1b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x24

    if-ne v6, v7, :cond_2d

    goto :goto_d

    :pswitch_1c
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x24

    if-ne v6, v7, :cond_2d

    const/16 v6, 0xf

    if-le v4, v6, :cond_2d

    const/16 v4, 0xf

    goto/16 :goto_16

    :pswitch_1d
    and-long v20, v18, v22

    cmp-long v7, v20, v16

    if-nez v7, :cond_15

    goto/16 :goto_16

    :cond_15
    const/16 v7, 0x3f

    if-le v4, v7, :cond_16

    const/16 v4, 0x3f

    :cond_16
    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x35

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_1e
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x2f

    if-le v4, v6, :cond_2d

    const/16 v4, 0x2f

    goto/16 :goto_16

    :pswitch_1f
    const/16 v7, 0x21

    iget-char v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v11, v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x31

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_20
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    if-le v4, v15, :cond_2d

    const/16 v4, 0x2e

    goto/16 :goto_16

    :pswitch_21
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x3d

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v2, v6, v7

    goto/16 :goto_16

    :pswitch_22
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    if-le v4, v2, :cond_2d

    const/16 v4, 0x2d

    goto/16 :goto_16

    :pswitch_23
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x3e

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2b

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_24
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x2c

    if-le v4, v6, :cond_2d

    const/16 v4, 0x2c

    goto/16 :goto_16

    :pswitch_25
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x2b

    if-le v4, v6, :cond_2d

    :goto_e
    const/16 v4, 0x2b

    goto/16 :goto_16

    :pswitch_26
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x3c

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x28

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_27
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    if-le v4, v8, :cond_2d

    const/16 v4, 0x2a

    goto/16 :goto_16

    :pswitch_28
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x29

    if-le v4, v6, :cond_2d

    :goto_f
    const/16 v4, 0x29

    goto/16 :goto_16

    :pswitch_29
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x26

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x1e

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_2a
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x26

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x27

    if-le v4, v6, :cond_2d

    const/16 v4, 0x27

    goto/16 :goto_16

    :pswitch_2b
    const/16 v6, 0x27

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v6, :cond_2d

    const/16 v6, 0x1f

    if-le v4, v6, :cond_2d

    :goto_10
    const/16 v4, 0x1f

    goto/16 :goto_16

    :pswitch_2c
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2d

    :goto_11
    const/16 v6, 0xc7

    const/16 v7, 0xca

    goto/16 :goto_2

    :pswitch_2d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2d

    const/16 v6, 0xd6

    const/16 v7, 0xd7

    goto/16 :goto_c

    :pswitch_2e
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x27

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x18

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_2f
    const-wide v6, -0x8000000001L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    goto :goto_11

    :pswitch_30
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x27

    if-ne v6, v7, :cond_2d

    goto :goto_11

    :pswitch_31
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2d

    :goto_12
    const/16 v6, 0xce

    const/16 v7, 0xcb

    :goto_13
    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_16

    :pswitch_32
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2d

    const/16 v6, 0xd4

    const/16 v7, 0xd5

    goto/16 :goto_c

    :pswitch_33
    and-long v6, v18, v22

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    goto :goto_12

    :pswitch_34
    and-long v20, v18, v22

    cmp-long v7, v20, v16

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x13

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_35
    and-long v20, v18, v22

    cmp-long v7, v20, v16

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v14, v6, v7

    goto/16 :goto_16

    :pswitch_36
    and-long v20, v18, v22

    cmp-long v7, v20, v16

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x11

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_37
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    const/16 v6, 0xc

    goto/16 :goto_4

    :pswitch_38
    const-wide/high16 v20, 0xf000000000000L

    and-long v20, v18, v20

    cmp-long v7, v20, v16

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0xe

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_39
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    goto :goto_12

    :pswitch_3a
    const-wide/high16 v6, 0xff000000000000L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    const/16 v6, 0xcf

    const/16 v7, 0xd3

    goto/16 :goto_2

    :pswitch_3b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x22

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x1f

    if-le v4, v6, :cond_2d

    goto/16 :goto_10

    :pswitch_3c
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x22

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x6

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_3d
    const-wide v6, -0x400000001L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-eqz v11, :cond_2d

    goto/16 :goto_12

    :pswitch_3e
    const/16 v6, 0xce

    const/16 v7, 0xcb

    iget-char v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x22

    if-ne v11, v14, :cond_2d

    goto/16 :goto_13

    :pswitch_3f
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0xd

    if-ne v7, v11, :cond_2d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x2

    aput v11, v6, v7

    goto/16 :goto_16

    :pswitch_40
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2d

    const/16 v6, 0x1d

    if-le v4, v6, :cond_2d

    const/16 v4, 0x1d

    goto/16 :goto_16

    :pswitch_41
    and-long v22, v18, v22

    cmp-long v7, v22, v16

    if-eqz v7, :cond_18

    if-le v4, v11, :cond_17

    const/16 v4, 0x36

    :cond_17
    const/16 v6, 0xba

    const/16 v7, 0xbf

    :goto_14
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_15

    :cond_18
    const-wide/16 v22, 0x2400

    and-long v22, v18, v22

    cmp-long v7, v22, v16

    if-eqz v7, :cond_19

    const/16 v6, 0x1d

    if-le v4, v6, :cond_27

    const/16 v4, 0x1d

    goto/16 :goto_15

    :cond_19
    const-wide v22, 0x100000200L

    and-long v22, v18, v22

    cmp-long v7, v22, v16

    if-eqz v7, :cond_1b

    const/16 v6, 0x1c

    if-le v4, v6, :cond_1a

    const/16 v4, 0x1c

    :cond_1a
    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_15

    :cond_1b
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v15, :cond_1c

    const/16 v6, 0x6b

    invoke-direct {v0, v9, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_15

    :cond_1c
    if-ne v7, v2, :cond_1d

    const/16 v6, 0xc0

    const/16 v7, 0xc3

    goto :goto_14

    :cond_1d
    const/16 v11, 0x23

    if-ne v7, v11, :cond_1e

    const/16 v6, 0xc4

    const/16 v7, 0xc6

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_15

    :cond_1e
    const/16 v11, 0x24

    if-ne v7, v11, :cond_20

    const/16 v11, 0xf

    if-le v4, v11, :cond_1f

    const/16 v4, 0xf

    :cond_1f
    const/16 v6, 0x3b

    const/16 v7, 0x3c

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_15

    :cond_20
    const/16 v11, 0x21

    if-ne v7, v11, :cond_21

    const/16 v11, 0x2f

    if-le v4, v11, :cond_27

    const/16 v4, 0x2f

    goto :goto_15

    :cond_21
    const/16 v11, 0x3d

    if-ne v7, v11, :cond_22

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v2, v6, v7

    goto :goto_15

    :cond_22
    const/16 v11, 0x3e

    if-ne v7, v11, :cond_23

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2b

    aput v11, v6, v7

    goto :goto_15

    :cond_23
    const/16 v11, 0x3c

    if-ne v7, v11, :cond_24

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x28

    aput v11, v6, v7

    goto :goto_15

    :cond_24
    const/16 v11, 0x26

    if-ne v7, v11, :cond_25

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x1e

    aput v11, v6, v7

    goto :goto_15

    :cond_25
    const/16 v6, 0x27

    if-ne v7, v6, :cond_26

    const/16 v6, 0xc7

    const/16 v7, 0xca

    goto/16 :goto_14

    :cond_26
    const/16 v6, 0x22

    if-ne v7, v6, :cond_27

    const/16 v6, 0xce

    const/16 v7, 0xcb

    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :cond_27
    :goto_15
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_28

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x31

    aput v11, v6, v7

    goto :goto_16

    :cond_28
    const/16 v7, 0x3e

    if-ne v6, v7, :cond_29

    const/16 v7, 0x2b

    if-le v4, v7, :cond_2d

    goto/16 :goto_e

    :cond_29
    const/16 v7, 0x3c

    if-ne v6, v7, :cond_2a

    const/16 v6, 0x29

    if-le v4, v6, :cond_2d

    goto/16 :goto_f

    :cond_2a
    const/16 v7, 0xd

    if-ne v6, v7, :cond_2d

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x2

    aput v11, v6, v7

    goto :goto_16

    :pswitch_42
    const-wide v6, 0x100000200L

    and-long v6, v18, v6

    cmp-long v11, v6, v16

    if-nez v11, :cond_2b

    goto :goto_16

    :cond_2b
    const/16 v6, 0x1c

    if-le v4, v6, :cond_2c

    const/16 v4, 0x1c

    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_2d
    :goto_16
    if-ne v5, v3, :cond_2e

    const/4 v11, 0x1

    goto/16 :goto_25

    :cond_2e
    const/16 v14, 0x12

    goto/16 :goto_1

    :cond_2f
    const/16 v7, 0x80

    if-ge v6, v7, :cond_45

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v18, 0x1

    shl-long v18, v18, v6

    :goto_17
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v6, v5

    const/4 v11, 0x1

    if-eq v7, v11, :cond_39

    const/4 v14, 0x5

    if-eq v7, v14, :cond_37

    const/16 v14, 0x9

    if-eq v7, v14, :cond_38

    const/16 v14, 0xa

    if-eq v7, v14, :cond_36

    const/16 v14, 0x2f

    if-eq v7, v14, :cond_35

    const/16 v14, 0x30

    if-eq v7, v14, :cond_34

    sparse-switch v7, :sswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    packed-switch v7, :pswitch_data_4

    packed-switch v7, :pswitch_data_5

    goto :goto_18

    :pswitch_43
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x6f

    if-ne v7, v14, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x54

    aput v14, v6, v7

    goto :goto_18

    :pswitch_44
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x74

    if-ne v6, v7, :cond_30

    const/16 v6, 0x2f

    if-le v4, v6, :cond_30

    const/16 v4, 0x2f

    :cond_30
    :goto_18
    const/16 v7, 0x21

    const/16 v14, 0x2f

    goto/16 :goto_22

    :pswitch_45
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_30

    if-le v4, v15, :cond_30

    const/16 v4, 0x2e

    goto :goto_18

    :pswitch_46
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x6e

    if-ne v6, v7, :cond_30

    const/16 v6, 0xde

    const/16 v7, 0xdf

    :goto_19
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_18

    :pswitch_47
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_30

    const/16 v6, 0x2c

    if-le v4, v6, :cond_30

    const/16 v4, 0x2c

    goto :goto_18

    :pswitch_48
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x74

    if-ne v6, v7, :cond_30

    const/16 v7, 0x2b

    if-le v4, v7, :cond_30

    const/16 v4, 0x2b

    goto :goto_18

    :pswitch_49
    const/16 v7, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x67

    if-ne v6, v14, :cond_30

    const/16 v6, 0xe0

    const/16 v14, 0xe1

    :goto_1a
    invoke-direct {v0, v6, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_18

    :pswitch_4a
    const/16 v7, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v13, :cond_30

    if-le v4, v8, :cond_30

    const/16 v4, 0x2a

    goto :goto_18

    :pswitch_4b
    const/16 v7, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x74

    if-ne v6, v14, :cond_30

    const/16 v6, 0x29

    if-le v4, v6, :cond_30

    const/16 v4, 0x29

    goto :goto_18

    :pswitch_4c
    const/16 v7, 0x2b

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x6c

    if-ne v6, v14, :cond_30

    const/16 v6, 0xe2

    const/16 v14, 0xe3

    goto :goto_1a

    :pswitch_4d
    const/16 v7, 0x2b

    iget-char v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7b

    if-ne v14, v7, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x47

    aput v14, v6, v7

    goto :goto_18

    :pswitch_4e
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x73

    if-ne v7, v14, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x46

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_4f
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v13, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x45

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_50
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x74

    if-ne v7, v14, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x44

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_51
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_30

    :goto_1b
    const/16 v6, 0x40

    const/16 v7, 0x41

    :goto_1c
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_18

    :pswitch_52
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x7b

    if-ne v7, v14, :cond_31

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x47

    aput v14, v6, v7

    goto/16 :goto_18

    :cond_31
    const/16 v14, 0x73

    if-ne v7, v14, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x42

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_53
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v13, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x3f

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_54
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_30

    const/16 v6, 0x38

    invoke-direct {v0, v10, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_18

    :pswitch_55
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_30

    const/16 v6, 0xda

    const/16 v7, 0xdd

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_18

    :pswitch_56
    const-wide v6, 0x7fffffe87fffffeL

    and-long v6, v18, v6

    cmp-long v14, v6, v16

    if-nez v14, :cond_32

    goto/16 :goto_18

    :cond_32
    const/16 v6, 0x3f

    if-le v4, v6, :cond_33

    const/16 v7, 0x3f

    goto :goto_1d

    :cond_33
    move v7, v4

    :goto_1d
    const/16 v4, 0x35

    invoke-direct {v0, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    move v4, v7

    goto/16 :goto_18

    :pswitch_57
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x6f

    if-ne v7, v14, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x25

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_58
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x72

    if-ne v6, v7, :cond_30

    const/16 v6, 0x28

    if-le v4, v6, :cond_30

    :goto_1e
    const/16 v4, 0x28

    goto/16 :goto_18

    :pswitch_59
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x7c

    if-ne v7, v14, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x23

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_5a
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7c

    if-ne v6, v7, :cond_30

    const/16 v7, 0x28

    if-le v4, v7, :cond_30

    goto :goto_1e

    :pswitch_5b
    const/16 v7, 0x28

    iget-char v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v14, v9, :cond_30

    iget v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v14, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0x21

    aput v7, v6, v14

    goto/16 :goto_18

    :pswitch_5c
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x6e

    if-ne v7, v14, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x20

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_5d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x64

    if-ne v6, v7, :cond_30

    const/16 v7, 0x27

    if-le v4, v7, :cond_30

    const/16 v4, 0x27

    goto/16 :goto_18

    :pswitch_5e
    const/16 v7, 0x27

    const-wide v20, 0x7e0000007eL

    and-long v20, v18, v20

    cmp-long v6, v20, v16

    if-eqz v6, :cond_30

    const/16 v6, 0xce

    const/16 v14, 0xcb

    invoke-direct {v0, v14, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_18

    :pswitch_5f
    const/16 v7, 0x27

    const-wide v20, 0x7e0000007eL

    and-long v20, v18, v20

    cmp-long v14, v20, v16

    if-eqz v14, :cond_30

    iget v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v14, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0x13

    aput v7, v6, v14

    goto/16 :goto_18

    :pswitch_60
    const-wide v20, 0x7e0000007eL

    and-long v20, v18, v20

    cmp-long v7, v20, v16

    if-eqz v7, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x12

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_61
    const-wide v20, 0x7e0000007eL

    and-long v20, v18, v20

    cmp-long v7, v20, v16

    if-eqz v7, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x11

    aput v14, v6, v7

    goto/16 :goto_18

    :pswitch_62
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v14, 0x75

    if-ne v7, v14, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x10

    aput v14, v6, v7

    goto/16 :goto_18

    :sswitch_0
    const-wide v6, 0x7fffffe87fffffeL

    and-long v6, v18, v6

    cmp-long v14, v6, v16

    if-eqz v14, :cond_30

    const/16 v6, 0x40

    if-le v4, v6, :cond_30

    const/16 v4, 0x40

    goto/16 :goto_18

    :sswitch_1
    const-wide v6, 0x2000000020L

    and-long v6, v18, v6

    cmp-long v14, v6, v16

    if-eqz v14, :cond_30

    const/16 v6, 0xee

    const/16 v7, 0xef

    goto/16 :goto_19

    :sswitch_2
    const-wide v6, 0x2000000020L

    and-long v6, v18, v6

    cmp-long v14, v6, v16

    if-eqz v14, :cond_30

    const/16 v6, 0xec

    const/16 v7, 0xed

    goto/16 :goto_19

    :sswitch_3
    const-wide v6, 0x2000000020L

    and-long v6, v18, v6

    cmp-long v14, v6, v16

    if-eqz v14, :cond_30

    const/16 v6, 0xea

    const/16 v7, 0xeb

    goto/16 :goto_19

    :sswitch_4
    const/16 v6, 0x12

    if-le v4, v6, :cond_30

    const/16 v4, 0x12

    goto/16 :goto_18

    :sswitch_5
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x74

    if-ne v6, v7, :cond_30

    goto/16 :goto_1b

    :sswitch_6
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_30

    invoke-direct {v0, v2, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_18

    :sswitch_7
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_30

    const/16 v6, 0x39

    const/16 v7, 0x3a

    goto/16 :goto_1c

    :sswitch_8
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v12, :cond_30

    const/16 v6, 0xd6

    const/16 v7, 0xd7

    goto/16 :goto_19

    :sswitch_9
    const/16 v6, 0xc7

    const/16 v7, 0xca

    goto/16 :goto_19

    :cond_34
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v13, :cond_30

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x2f

    aput v14, v6, v7

    goto/16 :goto_18

    :cond_35
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x71

    if-ne v6, v7, :cond_30

    if-le v4, v2, :cond_30

    const/16 v4, 0x2d

    goto/16 :goto_18

    :cond_36
    const-wide v6, 0x14404400000000L

    and-long v6, v18, v6

    cmp-long v14, v6, v16

    if-eqz v14, :cond_30

    :cond_37
    :sswitch_a
    const/16 v6, 0xce

    const/16 v7, 0xcb

    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_18

    :cond_38
    const/16 v6, 0xce

    const/16 v7, 0xcb

    iget-char v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v14, v12, :cond_30

    const/16 v14, 0xe4

    const/16 v2, 0xe9

    invoke-direct {v0, v14, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_18

    :cond_39
    const-wide v20, 0x7fffffe87fffffeL

    and-long v20, v18, v20

    cmp-long v2, v20, v16

    const/16 v7, 0x3f

    if-eqz v2, :cond_3b

    if-le v4, v7, :cond_3a

    const/16 v4, 0x3f

    :cond_3a
    const/16 v2, 0x35

    invoke-direct {v0, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1f

    :cond_3b
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v12, :cond_3c

    const/16 v2, 0xda

    const/16 v6, 0xdd

    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1f

    :cond_3c
    const/16 v14, 0x7c

    if-ne v2, v14, :cond_3d

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v2, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x23

    aput v14, v6, v2

    :cond_3d
    :goto_1f
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v6, 0x6e

    if-ne v2, v6, :cond_3e

    const/16 v2, 0xde

    const/16 v6, 0xdf

    :goto_20
    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_18

    :cond_3e
    const/16 v6, 0x67

    if-ne v2, v6, :cond_3f

    const/16 v2, 0xe0

    const/16 v6, 0xe1

    goto :goto_20

    :cond_3f
    const/16 v6, 0x6c

    if-ne v2, v6, :cond_40

    const/16 v2, 0xe2

    const/16 v6, 0xe3

    goto :goto_20

    :cond_40
    if-ne v2, v13, :cond_42

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v6, 0x1

    iput v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x2f

    aput v14, v2, v6

    :cond_41
    :goto_21
    const/16 v7, 0x21

    goto :goto_22

    :cond_42
    const/16 v14, 0x2f

    const/16 v6, 0x6f

    if-ne v2, v6, :cond_43

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0x25

    aput v7, v2, v6

    goto :goto_21

    :cond_43
    if-ne v2, v9, :cond_41

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0x21

    aput v7, v2, v6

    :goto_22
    if-ne v5, v3, :cond_44

    goto/16 :goto_25

    :cond_44
    const/16 v2, 0x2d

    goto/16 :goto_17

    :cond_45
    const/4 v11, 0x1

    shr-int/lit8 v2, v6, 0x8

    shr-int/lit8 v7, v6, 0xe

    and-int/lit8 v8, v2, 0x3f

    const-wide/16 v9, 0x1

    shl-long v8, v9, v8

    and-int/lit16 v10, v6, 0xff

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v6

    :cond_46
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v6, v6, v5

    const/4 v14, 0x5

    if-eq v6, v14, :cond_4b

    const/16 v14, 0x17

    if-eq v6, v14, :cond_4a

    const/16 v14, 0x4a

    if-eq v6, v14, :cond_48

    :cond_47
    const/16 v6, 0x12

    goto :goto_23

    :cond_48
    move/from16 v24, v2

    move/from16 v25, v7

    move/from16 v26, v10

    move-wide/from16 v27, v8

    move-wide/from16 v29, v12

    invoke-static/range {v24 .. v30}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_47

    const/16 v6, 0x12

    if-le v4, v6, :cond_49

    const/16 v4, 0x12

    :cond_49
    :goto_23
    const/16 v14, 0xce

    const/16 v15, 0xcb

    goto :goto_24

    :cond_4a
    const/16 v6, 0x12

    move/from16 v24, v2

    move/from16 v25, v7

    move/from16 v26, v10

    move-wide/from16 v27, v8

    move-wide/from16 v29, v12

    invoke-static/range {v24 .. v30}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v14

    if-eqz v14, :cond_49

    const/16 v14, 0xc7

    const/16 v15, 0xca

    invoke-direct {v0, v14, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_23

    :cond_4b
    const/16 v6, 0x12

    move/from16 v24, v2

    move/from16 v25, v7

    move/from16 v26, v10

    move-wide/from16 v27, v8

    move-wide/from16 v29, v12

    invoke-static/range {v24 .. v30}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v14

    if-eqz v14, :cond_49

    const/16 v14, 0xce

    const/16 v15, 0xcb

    invoke-direct {v0, v15, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    :goto_24
    if-ne v5, v3, :cond_46

    :goto_25
    const v2, 0x7fffffff

    if-eq v4, v2, :cond_4c

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v2, 0x7fffffff

    const v4, 0x7fffffff

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x6c

    if-ne v5, v3, :cond_4d

    return v1

    :cond_4d
    :try_start_0
    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3e
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_30
        :pswitch_2e
        :pswitch_0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_a
        0x17 -> :sswitch_9
        0x1a -> :sswitch_8
        0x39 -> :sswitch_7
        0x3b -> :sswitch_6
        0x3f -> :sswitch_5
        0x4a -> :sswitch_4
        0x5d -> :sswitch_3
        0x62 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_56
        :pswitch_56
        :pswitch_55
        :pswitch_54
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x42
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4c
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch
.end method

.method private jjMoveNfa_6(II)I
    .locals 35

    move-object/from16 v0, p0

    const/16 v1, 0x33

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7fffffff

    move/from16 v1, p2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    :goto_0
    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v6, v2

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x40

    const/4 v10, 0x4

    const/16 v14, 0x5f

    const/16 v15, 0x5d

    const/16 v2, 0x1f

    const/16 v11, 0x12

    const/16 v8, 0xf

    const/16 v9, 0x24

    const/16 v12, 0x48

    const-wide/16 v21, 0x0

    if-ge v6, v7, :cond_1c

    const-wide/16 v23, 0x1

    shl-long v23, v23, v6

    :goto_1
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v6, v5

    const/16 v13, 0x20

    const-wide v26, -0x1800002401L

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_e

    :pswitch_1
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_1

    invoke-direct {v0, v2, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_1
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_1a

    if-le v4, v8, :cond_1a

    :goto_2
    const/16 v4, 0xf

    goto/16 :goto_e

    :pswitch_2
    and-long v6, v23, v26

    cmp-long v13, v6, v21

    if-nez v13, :cond_2

    goto/16 :goto_e

    :cond_2
    if-le v4, v12, :cond_3

    const/16 v4, 0x48

    :cond_3
    const/16 v6, 0x32

    :goto_3
    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_e

    :pswitch_3
    and-long v6, v23, v26

    cmp-long v13, v6, v21

    if-eqz v13, :cond_1a

    const/16 v6, 0x31

    invoke-direct {v0, v6, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_e

    :pswitch_4
    and-long v6, v23, v26

    cmp-long v13, v6, v21

    if-nez v13, :cond_4

    goto/16 :goto_e

    :cond_4
    if-le v4, v12, :cond_5

    const/16 v4, 0x48

    :cond_5
    invoke-direct {v0, v15, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_e

    :pswitch_5
    const-wide v6, -0x800000001L

    and-long v6, v23, v6

    cmp-long v13, v6, v21

    if-eqz v13, :cond_1a

    if-le v4, v11, :cond_1a

    const/16 v4, 0x12

    goto/16 :goto_e

    :pswitch_6
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v13, 0x2a

    if-ne v7, v13, :cond_1a

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2e

    aput v13, v6, v7

    goto/16 :goto_e

    :pswitch_7
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v13, 0x2a

    if-ne v7, v13, :cond_1a

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2d

    aput v13, v6, v7

    goto/16 :goto_e

    :pswitch_8
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x28

    if-ne v6, v7, :cond_1a

    const/16 v6, 0xe

    if-le v4, v6, :cond_1a

    const/16 v4, 0xe

    goto/16 :goto_e

    :pswitch_9
    const-wide v6, 0x100000200L

    and-long v6, v23, v6

    cmp-long v13, v6, v21

    if-eqz v13, :cond_1a

    const/16 v6, 0x71

    const/16 v7, 0x72

    :goto_4
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_e

    :pswitch_a
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x23

    if-ne v6, v7, :cond_1a

    const/16 v6, 0x60

    const/16 v7, 0x62

    goto :goto_4

    :pswitch_b
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v6, v9, :cond_6

    goto/16 :goto_e

    :cond_6
    if-le v4, v8, :cond_7

    const/16 v4, 0xf

    :cond_7
    :goto_5
    invoke-direct {v0, v2, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_e

    :pswitch_c
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_1a

    const/16 v6, 0x10

    if-le v4, v6, :cond_1a

    const/16 v4, 0x10

    goto/16 :goto_e

    :pswitch_d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_1a

    goto :goto_5

    :pswitch_e
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_1a

    if-le v4, v8, :cond_1a

    goto/16 :goto_2

    :pswitch_f
    const-wide/high16 v6, 0x3ff000000000000L

    and-long v6, v23, v6

    cmp-long v13, v6, v21

    if-eqz v13, :cond_1a

    const/16 v6, 0x17

    const/16 v7, 0x18

    goto :goto_4

    :pswitch_10
    const-wide/high16 v26, 0x3ff000000000000L

    and-long v26, v23, v26

    cmp-long v7, v26, v21

    if-nez v7, :cond_8

    goto/16 :goto_e

    :cond_8
    const/16 v7, 0xd

    if-le v4, v7, :cond_9

    const/16 v4, 0xd

    :cond_9
    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x15

    aput v13, v6, v7

    goto/16 :goto_e

    :pswitch_11
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x23

    if-ne v6, v7, :cond_1a

    const/16 v6, 0x5b

    const/16 v13, 0x5c

    invoke-direct {v0, v6, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_e

    :pswitch_12
    const/16 v6, 0x5c

    const/16 v7, 0x23

    iget-char v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v11, v9, :cond_a

    invoke-direct {v0, v2, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_6

    :cond_a
    if-ne v11, v7, :cond_b

    const/16 v7, 0x5b

    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    :cond_b
    :goto_6
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_1a

    if-le v4, v8, :cond_1a

    goto/16 :goto_2

    :pswitch_13
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1a

    const/16 v6, 0x49

    if-le v4, v6, :cond_1a

    const/16 v4, 0x49

    goto/16 :goto_e

    :pswitch_14
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_1a

    const/16 v6, 0xc

    goto/16 :goto_3

    :pswitch_15
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_1a

    goto/16 :goto_c

    :pswitch_16
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xd

    if-ne v6, v7, :cond_1a

    const/16 v6, 0x8

    goto/16 :goto_3

    :pswitch_17
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-eq v6, v7, :cond_c

    goto/16 :goto_e

    :cond_c
    const/16 v6, 0x47

    if-le v4, v6, :cond_d

    const/16 v4, 0x47

    :cond_d
    :goto_7
    const/16 v6, 0x70

    const/16 v7, 0x6e

    :goto_8
    invoke-direct {v0, v7, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_e

    :pswitch_18
    const/16 v6, 0x70

    const/16 v7, 0x6e

    and-long v17, v23, v26

    cmp-long v11, v17, v21

    if-eqz v11, :cond_1a

    goto :goto_8

    :pswitch_19
    const-wide/16 v6, 0x2400

    and-long v6, v23, v6

    cmp-long v11, v6, v21

    if-nez v11, :cond_e

    goto/16 :goto_e

    :cond_e
    const/16 v6, 0x47

    if-le v4, v6, :cond_d

    const/16 v4, 0x47

    goto :goto_7

    :pswitch_1a
    and-long v6, v23, v26

    cmp-long v11, v6, v21

    if-eqz v11, :cond_1a

    const/16 v6, 0x6b

    const/16 v7, 0x6d

    goto/16 :goto_d

    :pswitch_1b
    const-wide v6, -0x1900002601L

    and-long v6, v23, v6

    cmp-long v11, v6, v21

    if-eqz v11, :cond_1a

    goto :goto_a

    :pswitch_1c
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0xd

    if-ne v7, v11, :cond_1a

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x2

    aput v11, v6, v7

    goto/16 :goto_e

    :pswitch_1d
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1a

    const/16 v6, 0x1d

    if-le v4, v6, :cond_1a

    const/16 v4, 0x1d

    goto/16 :goto_e

    :pswitch_1e
    and-long v6, v23, v26

    cmp-long v11, v6, v21

    if-eqz v11, :cond_10

    if-le v4, v12, :cond_f

    const/16 v4, 0x48

    :cond_f
    invoke-direct {v0, v15, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_9

    :cond_10
    const-wide/16 v6, 0x2400

    and-long v6, v23, v6

    cmp-long v11, v6, v21

    if-eqz v11, :cond_11

    const/16 v6, 0x1d

    if-le v4, v6, :cond_14

    const/16 v4, 0x1d

    goto :goto_9

    :cond_11
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x23

    if-ne v6, v7, :cond_12

    const/16 v6, 0x60

    const/16 v7, 0x62

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_9

    :cond_12
    if-ne v6, v9, :cond_14

    if-le v4, v8, :cond_13

    const/16 v4, 0xf

    :cond_13
    invoke-direct {v0, v2, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_14
    :goto_9
    const-wide v6, -0x1900002601L

    and-long v6, v23, v6

    cmp-long v11, v6, v21

    if-eqz v11, :cond_15

    :goto_a
    const/16 v6, 0x66

    const/16 v7, 0x63

    goto/16 :goto_8

    :cond_15
    const-wide v6, 0x100000200L

    and-long v6, v23, v6

    cmp-long v11, v6, v21

    if-eqz v11, :cond_17

    const/16 v6, 0x1c

    if-le v4, v6, :cond_16

    :goto_b
    const/16 v4, 0x1c

    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_17
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_18

    :goto_c
    const/16 v6, 0x67

    const/16 v7, 0x6a

    :goto_d
    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_e

    :cond_18
    const/16 v7, 0xd

    if-ne v6, v7, :cond_1a

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x2

    aput v11, v6, v7

    goto :goto_e

    :pswitch_1f
    const-wide v6, 0x100000200L

    and-long v6, v23, v6

    cmp-long v11, v6, v21

    if-nez v11, :cond_19

    goto :goto_e

    :cond_19
    const/16 v6, 0x1c

    if-le v4, v6, :cond_16

    goto :goto_b

    :cond_1a
    :goto_e
    if-ne v5, v3, :cond_1b

    goto/16 :goto_22

    :cond_1b
    const/16 v11, 0x12

    goto/16 :goto_1

    :cond_1c
    const/16 v7, 0x80

    if-ge v6, v7, :cond_3e

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v23, 0x1

    shl-long v23, v23, v6

    :goto_f
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v6, v5

    const-wide/32 v26, -0x10000001

    const/4 v11, 0x1

    if-eq v7, v11, :cond_37

    const/4 v11, 0x7

    if-eq v7, v11, :cond_36

    const/16 v11, 0xc

    if-eq v7, v11, :cond_34

    if-eq v7, v8, :cond_33

    const/16 v11, 0x1d

    if-eq v7, v11, :cond_32

    const/16 v11, 0x23

    if-eq v7, v2, :cond_31

    if-eq v7, v11, :cond_30

    const/16 v11, 0x2e

    if-eq v7, v11, :cond_2f

    if-eq v7, v10, :cond_2e

    const/4 v11, 0x5

    if-eq v7, v11, :cond_2d

    const/16 v11, 0x11

    if-eq v7, v11, :cond_2c

    const/16 v11, 0x12

    if-eq v7, v11, :cond_29

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    :cond_1d
    :goto_10
    const/16 v11, 0x23

    :cond_1e
    :goto_11
    const/16 v13, 0x1d

    goto/16 :goto_19

    :pswitch_20
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_1f

    const/16 v6, 0x73

    const/16 v11, 0x74

    invoke-direct {v0, v6, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    :cond_1f
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v7, :cond_20

    const/16 v6, 0x1e

    const/16 v11, 0x1d

    invoke-direct {v0, v11, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_20
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v7, :cond_1d

    const/16 v6, 0x1b

    const/16 v7, 0x1c

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_10

    :pswitch_21
    and-long v6, v23, v26

    cmp-long v11, v6, v21

    if-nez v11, :cond_21

    goto :goto_10

    :cond_21
    if-le v4, v12, :cond_22

    const/16 v4, 0x48

    :cond_22
    const/16 v6, 0x32

    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    :goto_12
    const/16 v7, 0x5c

    const/16 v11, 0x23

    :goto_13
    const/16 v13, 0x1d

    goto/16 :goto_1b

    :pswitch_22
    and-long v6, v23, v26

    cmp-long v11, v6, v21

    if-eqz v11, :cond_1d

    const/16 v6, 0x31

    invoke-direct {v0, v6, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_10

    :pswitch_23
    and-long v6, v23, v26

    cmp-long v11, v6, v21

    if-nez v11, :cond_23

    goto :goto_10

    :cond_23
    if-le v4, v12, :cond_24

    const/16 v4, 0x48

    :cond_24
    invoke-direct {v0, v15, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_12

    :pswitch_24
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x7b

    if-ne v7, v11, :cond_1d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2b

    aput v11, v6, v7

    goto :goto_10

    :pswitch_25
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x73

    if-ne v7, v11, :cond_1d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2a

    aput v11, v6, v7

    goto :goto_10

    :pswitch_26
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x65

    if-ne v7, v11, :cond_1d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x29

    aput v11, v6, v7

    goto/16 :goto_10

    :pswitch_27
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x74

    if-ne v7, v11, :cond_1d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x28

    aput v11, v6, v7

    goto/16 :goto_10

    :pswitch_28
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_1d

    const/16 v6, 0x25

    invoke-direct {v0, v9, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_10

    :pswitch_29
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x7b

    if-ne v7, v11, :cond_25

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x2b

    aput v11, v6, v7

    goto/16 :goto_10

    :cond_25
    const/16 v11, 0x73

    if-ne v7, v11, :cond_1d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x26

    aput v11, v6, v7

    goto/16 :goto_10

    :pswitch_2a
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v11, 0x65

    if-ne v7, v11, :cond_1d

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x23

    aput v11, v6, v7

    goto/16 :goto_11

    :pswitch_2b
    const/16 v11, 0x23

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_1e

    const/16 v6, 0x1b

    const/16 v13, 0x1c

    invoke-direct {v0, v6, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_11

    :pswitch_2c
    const/16 v7, 0x5c

    const/16 v11, 0x23

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v6, v7, :cond_1e

    const/16 v6, 0x75

    const/16 v7, 0x78

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_11

    :pswitch_2d
    const/16 v11, 0x23

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_1e

    const/16 v6, 0xd

    if-le v4, v6, :cond_1e

    const/16 v4, 0xd

    :goto_14
    const/16 v7, 0x5c

    goto/16 :goto_13

    :pswitch_2e
    const/16 v11, 0x23

    const-wide v6, 0x7fffffe87fffffeL

    and-long v6, v23, v6

    cmp-long v13, v6, v21

    if-eqz v13, :cond_1e

    :goto_15
    const/16 v6, 0x18

    const/16 v7, 0x19

    invoke-direct {v0, v6, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_11

    :pswitch_2f
    const/16 v11, 0x23

    const-wide v6, 0x7fffffe87ffffffL

    and-long v6, v23, v6

    cmp-long v13, v6, v21

    if-eqz v13, :cond_1e

    goto :goto_15

    :pswitch_30
    const/16 v11, 0x23

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v13, 0x7b

    if-ne v7, v13, :cond_1e

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x17

    aput v13, v6, v7

    goto/16 :goto_11

    :pswitch_31
    const/16 v11, 0x23

    const-wide v6, 0x7fffffe87fffffeL

    and-long v6, v23, v6

    cmp-long v13, v6, v21

    if-nez v13, :cond_26

    goto/16 :goto_11

    :cond_26
    const/16 v7, 0xd

    if-le v4, v7, :cond_27

    :goto_16
    const/16 v4, 0xd

    :cond_27
    const/16 v6, 0x15

    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_14

    :pswitch_32
    const/16 v7, 0xd

    const/16 v11, 0x23

    const-wide v25, 0x7fffffe87ffffffL

    and-long v25, v23, v25

    cmp-long v6, v25, v21

    if-nez v6, :cond_28

    goto/16 :goto_11

    :cond_28
    if-le v4, v7, :cond_27

    goto :goto_16

    :cond_29
    const/16 v7, 0xd

    const/16 v11, 0x23

    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v13, 0x5c

    if-ne v6, v13, :cond_2a

    const/16 v6, 0x1e

    const/16 v2, 0x1d

    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_2a
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v13, :cond_2b

    const/16 v2, 0x1b

    const/16 v6, 0x1c

    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_17

    :cond_2b
    const/16 v6, 0x1c

    :goto_17
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v13, :cond_1e

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0x11

    aput v7, v2, v6

    goto/16 :goto_11

    :cond_2c
    const/16 v11, 0x23

    const/16 v13, 0x5c

    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v13, :cond_1e

    const/16 v2, 0x73

    const/16 v6, 0x74

    :goto_18
    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_11

    :cond_2d
    const/16 v11, 0x23

    and-long v6, v23, v26

    cmp-long v2, v6, v21

    if-eqz v2, :cond_1e

    const/16 v2, 0x6b

    const/16 v6, 0x6d

    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_11

    :cond_2e
    const/16 v11, 0x23

    and-long v6, v23, v26

    cmp-long v2, v6, v21

    if-eqz v2, :cond_1e

    const/16 v2, 0x66

    const/16 v6, 0x63

    invoke-direct {v0, v6, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_11

    :cond_2f
    const/16 v2, 0x12

    const/16 v11, 0x23

    if-le v4, v2, :cond_1e

    const/16 v4, 0x12

    goto/16 :goto_14

    :cond_30
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v6, 0x74

    if-ne v2, v6, :cond_1e

    const/16 v2, 0x25

    invoke-direct {v0, v9, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_11

    :cond_31
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v2, v7, :cond_1e

    const/16 v2, 0x19

    const/16 v6, 0x1a

    goto :goto_18

    :cond_32
    const/16 v7, 0x5c

    const/16 v11, 0x23

    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v7, :cond_1e

    const/16 v2, 0x1e

    const/16 v13, 0x1d

    invoke-direct {v0, v13, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_19

    :cond_33
    const/16 v7, 0x5c

    const/16 v11, 0x23

    const/16 v13, 0x1d

    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v7, :cond_35

    iget v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v2, 0x1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v7, 0xe

    aput v7, v6, v2

    goto :goto_19

    :cond_34
    const/16 v11, 0x23

    const/16 v13, 0x1d

    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v6, 0x5b

    if-ne v2, v6, :cond_35

    const/16 v2, 0x49

    if-le v4, v2, :cond_35

    const/16 v2, 0x49

    const/16 v4, 0x49

    :cond_35
    :goto_19
    const/16 v7, 0x5c

    goto :goto_1b

    :cond_36
    const/16 v11, 0x23

    const/16 v13, 0x1d

    and-long v6, v23, v26

    cmp-long v2, v6, v21

    if-eqz v2, :cond_35

    const/16 v2, 0x70

    const/16 v6, 0x6e

    invoke-direct {v0, v6, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_19

    :cond_37
    const/16 v11, 0x23

    const/16 v13, 0x1d

    and-long v6, v23, v26

    cmp-long v2, v6, v21

    if-eqz v2, :cond_39

    if-le v4, v12, :cond_38

    const/16 v4, 0x48

    :cond_38
    invoke-direct {v0, v15, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v7, 0x5c

    goto :goto_1a

    :cond_39
    iget-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_3a

    const/16 v6, 0x75

    const/16 v8, 0x78

    invoke-direct {v0, v6, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :cond_3a
    :goto_1a
    if-eqz v2, :cond_3b

    const/16 v2, 0x66

    const/16 v6, 0x63

    invoke-direct {v0, v6, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1b

    :cond_3b
    iget-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v2, v7, :cond_3c

    const/16 v2, 0x73

    const/16 v6, 0x74

    invoke-direct {v0, v2, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    :cond_3c
    :goto_1b
    if-ne v5, v3, :cond_3d

    goto/16 :goto_22

    :cond_3d
    const/16 v2, 0x1f

    const/16 v8, 0xf

    goto/16 :goto_f

    :cond_3e
    shr-int/lit8 v2, v6, 0x8

    shr-int/lit8 v7, v6, 0xe

    and-int/lit8 v8, v2, 0x3f

    const-wide/16 v19, 0x1

    shl-long v8, v19, v8

    and-int/lit16 v11, v6, 0xff

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v6, v6, 0x3f

    shl-long v19, v19, v6

    :goto_1c
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v6, v6, v5

    const/4 v13, 0x1

    if-eq v6, v13, :cond_49

    const/4 v13, 0x7

    if-eq v6, v13, :cond_47

    const/16 v13, 0x2e

    if-eq v6, v13, :cond_46

    if-eq v6, v10, :cond_45

    const/4 v13, 0x5

    if-eq v6, v13, :cond_44

    packed-switch v6, :pswitch_data_4

    :goto_1d
    goto :goto_1e

    :pswitch_33
    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_1d

    :cond_3f
    if-le v4, v12, :cond_40

    const/16 v4, 0x48

    :cond_40
    const/16 v6, 0x32

    invoke-direct {v0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_41
    :goto_1e
    const/16 v6, 0x66

    :goto_1f
    const/16 v10, 0x63

    const/16 v13, 0x70

    goto/16 :goto_21

    :pswitch_34
    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_41

    const/16 v6, 0x31

    invoke-direct {v0, v6, v10}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_1e

    :pswitch_35
    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-nez v6, :cond_42

    goto :goto_1d

    :cond_42
    if-le v4, v12, :cond_43

    const/16 v4, 0x48

    :cond_43
    invoke-direct {v0, v15, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1e

    :cond_44
    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_41

    const/16 v6, 0x6b

    const/16 v13, 0x6d

    invoke-direct {v0, v6, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1e

    :cond_45
    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_41

    const/16 v6, 0x66

    const/16 v13, 0x63

    invoke-direct {v0, v13, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1f

    :cond_46
    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_41

    const/16 v6, 0x12

    if-le v4, v6, :cond_41

    const/16 v4, 0x12

    goto :goto_1e

    :cond_47
    const/16 v6, 0x12

    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v13

    if-eqz v13, :cond_48

    const/16 v6, 0x6e

    const/16 v13, 0x70

    invoke-direct {v0, v6, v13}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :goto_20
    const/16 v6, 0x66

    const/16 v10, 0x63

    goto :goto_21

    :cond_48
    const/16 v13, 0x70

    goto :goto_20

    :cond_49
    const/16 v6, 0x6e

    const/16 v13, 0x70

    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v16

    const/16 v6, 0x66

    const/16 v10, 0x63

    if-eqz v16, :cond_4a

    invoke-direct {v0, v10, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :cond_4a
    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v31, v8

    move-wide/from16 v33, v19

    invoke-static/range {v28 .. v34}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v16

    if-eqz v16, :cond_4c

    if-le v4, v12, :cond_4b

    const/16 v4, 0x48

    :cond_4b
    invoke-direct {v0, v15, v14}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :cond_4c
    :goto_21
    if-ne v5, v3, :cond_4f

    :goto_22
    const v2, 0x7fffffff

    if-eq v4, v2, :cond_4d

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v2, 0x7fffffff

    const v4, 0x7fffffff

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x33

    if-ne v5, v3, :cond_4e

    return v1

    :cond_4e
    :try_start_0
    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    return v1

    :cond_4f
    const/4 v10, 0x4

    goto/16 :goto_1c

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method

.method private jjMoveNfa_7(II)I
    .locals 29

    move-object/from16 v0, p0

    const/16 v1, 0x22

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7fffffff

    :goto_0
    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/16 v9, 0x10

    const/16 v10, 0x20

    const/16 v13, 0x49

    const/16 v14, 0x11

    const/16 v15, 0xe

    const-wide/16 v16, 0x1

    const/16 v1, 0xf

    const/16 v11, 0x12

    const-wide/16 v18, 0x0

    if-ge v7, v8, :cond_d

    shl-long v20, v16, v7

    :cond_1
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    const/16 v12, 0x2a

    const-wide v16, 0x100000200L

    const/16 v3, 0x24

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    const-wide v7, -0x800000001L

    and-long v7, v20, v7

    cmp-long v3, v7, v18

    if-eqz v3, :cond_c

    if-le v6, v11, :cond_c

    const/16 v6, 0x12

    goto/16 :goto_7

    :pswitch_2
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v12, :cond_c

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v10, v7, v3

    goto/16 :goto_7

    :pswitch_3
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v12, :cond_c

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1f

    aput v8, v7, v3

    goto/16 :goto_7

    :pswitch_4
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x28

    if-ne v3, v7, :cond_c

    if-le v6, v15, :cond_c

    const/16 v6, 0xe

    goto/16 :goto_7

    :pswitch_5
    and-long v7, v20, v16

    cmp-long v3, v7, v18

    if-eqz v3, :cond_c

    const/16 v3, 0xb2

    const/16 v7, 0xb3

    :goto_1
    invoke-direct {v0, v3, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_7

    :pswitch_6
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x23

    if-ne v3, v7, :cond_c

    const/16 v3, 0xab

    const/16 v7, 0xad

    goto :goto_1

    :pswitch_7
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v7, v3, :cond_2

    goto/16 :goto_7

    :cond_2
    if-le v6, v1, :cond_3

    const/16 v6, 0xf

    :cond_3
    :goto_2
    invoke-direct {v0, v14, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_7

    :pswitch_8
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v3, v7, :cond_c

    if-le v6, v9, :cond_c

    const/16 v6, 0x10

    goto/16 :goto_7

    :pswitch_9
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v3, :cond_c

    goto :goto_2

    :pswitch_a
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v3, :cond_c

    if-le v6, v1, :cond_c

    const/16 v6, 0xf

    goto/16 :goto_7

    :pswitch_b
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x2e

    if-ne v3, v7, :cond_c

    if-le v6, v13, :cond_c

    const/16 v6, 0x49

    goto/16 :goto_7

    :pswitch_c
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v3, v7, :cond_c

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_7

    :pswitch_d
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v3, :cond_c

    goto :goto_4

    :pswitch_e
    const-wide/high16 v16, 0x3ff000000000000L

    and-long v16, v20, v16

    cmp-long v3, v16, v18

    if-nez v3, :cond_4

    goto/16 :goto_7

    :cond_4
    const/16 v3, 0x3f

    if-le v6, v3, :cond_5

    const/16 v6, 0x3f

    :cond_5
    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x5

    aput v8, v7, v3

    goto/16 :goto_7

    :pswitch_f
    const-wide/16 v7, 0x2400

    and-long v7, v20, v7

    cmp-long v12, v7, v18

    if-eqz v12, :cond_6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_a

    const/16 v6, 0x1e

    goto :goto_3

    :cond_6
    and-long v7, v20, v16

    cmp-long v12, v7, v18

    if-eqz v12, :cond_7

    const/16 v7, 0xa8

    const/16 v8, 0xaa

    invoke-direct {v0, v7, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_3

    :cond_7
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x23

    if-ne v7, v8, :cond_8

    const/16 v7, 0xab

    const/16 v8, 0xad

    invoke-direct {v0, v7, v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_3

    :cond_8
    if-ne v7, v3, :cond_a

    if-le v6, v1, :cond_9

    const/16 v6, 0xf

    :cond_9
    invoke-direct {v0, v14, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_a
    :goto_3
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v3, :cond_b

    :goto_4
    const/16 v3, 0xae

    const/16 v7, 0xb1

    :goto_5
    invoke-direct {v0, v3, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    :cond_b
    const/16 v3, 0xd

    if-ne v7, v3, :cond_c

    iget-object v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x2

    aput v8, v3, v7

    goto :goto_7

    :pswitch_10
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0xd

    if-ne v3, v8, :cond_c

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x2

    aput v8, v7, v3

    goto :goto_7

    :pswitch_11
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0xa

    if-ne v3, v7, :cond_c

    const/16 v3, 0x1e

    if-le v6, v3, :cond_c

    :goto_6
    const/16 v6, 0x1e

    goto :goto_7

    :pswitch_12
    const/16 v3, 0x1e

    const-wide/16 v7, 0x2400

    and-long v7, v20, v7

    cmp-long v12, v7, v18

    if-eqz v12, :cond_c

    if-le v6, v3, :cond_c

    goto :goto_6

    :pswitch_13
    and-long v7, v20, v16

    cmp-long v3, v7, v18

    if-eqz v3, :cond_c

    const/16 v3, 0xa8

    const/16 v7, 0xaa

    goto :goto_5

    :cond_c
    :goto_7
    if-ne v5, v4, :cond_1

    :goto_8
    const v7, 0x7fffffff

    goto/16 :goto_10

    :cond_d
    const/16 v3, 0x80

    if-ge v7, v3, :cond_21

    and-int/lit8 v3, v7, 0x3f

    shl-long v20, v16, v3

    :goto_9
    iget-object v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v3, v5

    const/4 v8, 0x4

    const/16 v12, 0x5c

    if-eq v7, v8, :cond_1d

    const/4 v8, 0x5

    if-eq v7, v8, :cond_19

    const/4 v8, 0x7

    if-eq v7, v8, :cond_18

    const/16 v8, 0xa

    if-eq v7, v8, :cond_17

    if-eq v7, v1, :cond_16

    if-eq v7, v14, :cond_15

    const/16 v8, 0x15

    if-eq v7, v8, :cond_14

    if-eq v7, v10, :cond_13

    const/16 v8, 0xc

    if-eq v7, v8, :cond_12

    const/16 v8, 0xd

    if-eq v7, v8, :cond_10

    packed-switch v7, :pswitch_data_1

    :cond_e
    :goto_a
    const/16 v3, 0x3f

    const/4 v7, 0x5

    const/16 v8, 0xd

    goto/16 :goto_e

    :pswitch_14
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_e

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1d

    aput v8, v3, v7

    goto :goto_a

    :pswitch_15
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x73

    if-ne v7, v8, :cond_e

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1c

    aput v8, v3, v7

    goto :goto_a

    :pswitch_16
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x65

    if-ne v7, v8, :cond_e

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1b

    aput v8, v3, v7

    goto :goto_a

    :pswitch_17
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x74

    if-ne v7, v8, :cond_e

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1a

    aput v8, v3, v7

    goto :goto_a

    :pswitch_18
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x7d

    if-ne v3, v7, :cond_e

    const/16 v3, 0x16

    const/16 v7, 0x17

    invoke-direct {v0, v3, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_a

    :pswitch_19
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_f

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1d

    aput v8, v3, v7

    goto :goto_a

    :cond_f
    const/16 v8, 0x73

    if-ne v7, v8, :cond_e

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x18

    aput v8, v3, v7

    goto :goto_a

    :pswitch_1a
    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0x65

    if-ne v7, v8, :cond_e

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x15

    aput v8, v3, v7

    goto/16 :goto_a

    :cond_10
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v8, 0xd

    if-ne v3, v12, :cond_11

    invoke-direct {v0, v8, v15}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_11
    :goto_b
    const/16 v3, 0x3f

    goto :goto_c

    :cond_12
    const/16 v8, 0xd

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v12, :cond_11

    const/16 v3, 0xb4

    const/16 v7, 0xb7

    invoke-direct {v0, v3, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_b

    :cond_13
    const/16 v8, 0xd

    if-le v6, v11, :cond_11

    const/16 v3, 0x3f

    const/16 v6, 0x12

    :goto_c
    const/4 v7, 0x5

    goto/16 :goto_e

    :cond_14
    const/16 v8, 0xd

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x74

    if-ne v3, v7, :cond_11

    const/16 v3, 0x16

    const/16 v7, 0x17

    invoke-direct {v0, v3, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_b

    :cond_15
    const/16 v8, 0xd

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v12, :cond_11

    const/16 v3, 0xb8

    const/16 v7, 0xb9

    invoke-direct {v0, v3, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_b

    :cond_16
    const/16 v8, 0xd

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v12, :cond_11

    invoke-direct {v0, v1, v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_b

    :cond_17
    const/16 v8, 0xd

    iget-char v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v7, v12, :cond_11

    iget v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v7, 0x1

    iput v12, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x9

    aput v12, v3, v7

    goto :goto_b

    :cond_18
    const/16 v8, 0xd

    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v7, 0x5b

    if-ne v3, v7, :cond_11

    if-le v6, v13, :cond_11

    const/16 v3, 0x3f

    const/16 v6, 0x49

    goto :goto_c

    :cond_19
    const/16 v8, 0xd

    const-wide v16, 0x7fffffe87fffffeL

    and-long v16, v20, v16

    cmp-long v3, v16, v18

    if-nez v3, :cond_1a

    goto :goto_b

    :cond_1a
    const/16 v3, 0x3f

    if-le v6, v3, :cond_1b

    const/16 v6, 0x3f

    :cond_1b
    const/4 v7, 0x5

    :cond_1c
    :goto_d
    invoke-direct {v0, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_e

    :cond_1d
    const/16 v3, 0x3f

    const/4 v7, 0x5

    const/16 v8, 0xd

    const-wide v16, 0x7fffffe87fffffeL

    and-long v16, v20, v16

    cmp-long v22, v16, v18

    if-eqz v22, :cond_1e

    if-le v6, v3, :cond_1c

    const/16 v6, 0x3f

    goto :goto_d

    :cond_1e
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v12, :cond_1f

    const/16 v1, 0xb4

    const/16 v12, 0xb7

    invoke-direct {v0, v1, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    :cond_1f
    :goto_e
    if-ne v5, v4, :cond_20

    goto/16 :goto_8

    :cond_20
    const/16 v1, 0xf

    goto/16 :goto_9

    :cond_21
    shr-int/lit8 v1, v7, 0x8

    shr-int/lit8 v3, v7, 0xe

    and-int/lit8 v8, v1, 0x3f

    shl-long v8, v16, v8

    and-int/lit16 v12, v7, 0xff

    shr-int/lit8 v12, v12, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long v13, v16, v7

    :cond_22
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eq v7, v10, :cond_23

    goto :goto_f

    :cond_23
    move/from16 v22, v1

    move/from16 v23, v3

    move/from16 v24, v12

    move-wide/from16 v25, v8

    move-wide/from16 v27, v13

    invoke-static/range {v22 .. v28}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_24

    if-le v6, v11, :cond_24

    const/16 v6, 0x12

    :cond_24
    :goto_f
    if-ne v5, v4, :cond_22

    goto/16 :goto_8

    :goto_10
    if-eq v6, v7, :cond_25

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_25
    add-int/lit8 v2, v2, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x22

    if-ne v5, v4, :cond_26

    return v2

    :cond_26
    :try_start_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v3, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method private jjMoveNfa_8(II)I
    .locals 25

    move-object/from16 v0, p0

    const/16 v1, 0xc

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v4, p2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v8, v1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v8, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const/4 v10, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x6

    const-wide/16 v13, 0x1

    const/16 v15, 0x9

    if-ge v8, v9, :cond_e

    shl-long v16, v13, v8

    :goto_1
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v9, v8, v5

    const/16 v13, 0x2a

    if-eqz v9, :cond_b

    if-eq v9, v1, :cond_a

    const/4 v14, 0x2

    if-eq v9, v14, :cond_9

    const/16 v13, 0x24

    const/16 v1, 0xa

    const/16 v3, 0xf

    if-eq v9, v10, :cond_7

    if-eq v9, v12, :cond_6

    if-eq v9, v11, :cond_5

    if-eq v9, v1, :cond_4

    const/16 v8, 0xb

    if-eq v9, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v8, v13, :cond_2

    goto/16 :goto_4

    :cond_2
    if-le v6, v3, :cond_3

    :goto_2
    const/16 v6, 0xf

    :cond_3
    :goto_3
    invoke-direct {v0, v15, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4

    :cond_4
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v3, 0x21

    if-ne v1, v3, :cond_c

    const/16 v1, 0x10

    if-le v6, v1, :cond_c

    const/16 v6, 0x10

    goto :goto_4

    :cond_5
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v13, :cond_c

    goto :goto_3

    :cond_6
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    if-le v6, v3, :cond_c

    const/16 v6, 0xf

    goto :goto_4

    :cond_7
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v9, v13, :cond_8

    if-le v6, v3, :cond_3

    goto :goto_2

    :cond_8
    const/16 v1, 0x23

    if-ne v9, v1, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v14, v8, v1

    goto :goto_4

    :cond_9
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v2, v8, v1

    goto :goto_4

    :cond_a
    const-wide v8, -0x800000001L

    and-long v8, v16, v8

    const-wide/16 v13, 0x0

    cmp-long v1, v8, v13

    if-eqz v1, :cond_c

    const/16 v1, 0x12

    if-le v6, v1, :cond_c

    const/16 v6, 0x12

    goto :goto_4

    :cond_b
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    aput v3, v8, v1

    :cond_c
    :goto_4
    if-ne v5, v7, :cond_d

    :goto_5
    const/4 v14, 0x1

    :goto_6
    const v15, 0x7fffffff

    goto/16 :goto_9

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x80

    if-ge v8, v1, :cond_16

    :cond_f
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_14

    const/16 v3, 0x5c

    if-eq v1, v10, :cond_13

    const/4 v8, 0x5

    if-eq v1, v8, :cond_12

    const/4 v8, 0x7

    if-eq v1, v8, :cond_11

    if-eq v1, v15, :cond_10

    goto :goto_7

    :cond_10
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    const/16 v1, 0x59

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :cond_11
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    invoke-direct {v0, v8, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_12
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    invoke-direct {v0, v8, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_13
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    const/16 v1, 0x55

    const/16 v3, 0x58

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    :cond_14
    const/16 v1, 0x12

    if-le v6, v1, :cond_15

    const/16 v6, 0x12

    :cond_15
    :goto_7
    if-ne v5, v7, :cond_f

    goto :goto_5

    :cond_16
    shr-int/lit8 v1, v8, 0x8

    shr-int/lit8 v3, v8, 0xe

    and-int/lit8 v9, v1, 0x3f

    shl-long v9, v13, v9

    and-int/lit16 v11, v8, 0xff

    shr-int/2addr v11, v12

    and-int/lit8 v8, v8, 0x3f

    shl-long v12, v13, v8

    :cond_17
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v8, v5

    const/4 v14, 0x1

    if-eq v8, v14, :cond_19

    :cond_18
    const/16 v8, 0x12

    goto :goto_8

    :cond_19
    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v11

    move-wide/from16 v21, v9

    move-wide/from16 v23, v12

    invoke-static/range {v18 .. v24}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v8

    if-eqz v8, :cond_18

    const/16 v8, 0x12

    if-le v6, v8, :cond_1a

    const/16 v6, 0x12

    :cond_1a
    :goto_8
    if-ne v5, v7, :cond_17

    goto/16 :goto_6

    :goto_9
    if-eq v6, v15, :cond_1b

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v7, v7, 0xc

    if-ne v5, v7, :cond_1c

    return v4

    :cond_1c
    :try_start_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v3, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v4
.end method

.method private jjMoveNfa_9(II)I
    .locals 25

    move-object/from16 v0, p0

    const/16 v1, 0xc

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v4, p2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    add-int/2addr v8, v1

    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjround:I

    if-ne v8, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const/4 v10, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x6

    const-wide/16 v13, 0x1

    const/16 v15, 0x9

    if-ge v8, v9, :cond_e

    shl-long v16, v13, v8

    :goto_1
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v9, v8, v5

    const/16 v13, 0x2a

    if-eqz v9, :cond_b

    if-eq v9, v1, :cond_a

    const/4 v14, 0x2

    if-eq v9, v14, :cond_9

    const/16 v13, 0x24

    const/16 v1, 0xa

    const/16 v3, 0xf

    if-eq v9, v10, :cond_7

    if-eq v9, v12, :cond_6

    if-eq v9, v11, :cond_5

    if-eq v9, v1, :cond_4

    const/16 v8, 0xb

    if-eq v9, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-eq v8, v13, :cond_2

    goto/16 :goto_4

    :cond_2
    if-le v6, v3, :cond_3

    :goto_2
    const/16 v6, 0xf

    :cond_3
    :goto_3
    invoke-direct {v0, v15, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4

    :cond_4
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v3, 0x21

    if-ne v1, v3, :cond_c

    const/16 v1, 0x10

    if-le v6, v1, :cond_c

    const/16 v6, 0x10

    goto :goto_4

    :cond_5
    iget-char v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v3, v13, :cond_c

    goto :goto_3

    :cond_6
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    if-le v6, v3, :cond_c

    const/16 v6, 0xf

    goto :goto_4

    :cond_7
    iget-char v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v9, v13, :cond_8

    if-le v6, v3, :cond_3

    goto :goto_2

    :cond_8
    const/16 v1, 0x23

    if-ne v9, v1, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v14, v8, v1

    goto :goto_4

    :cond_9
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    aput v2, v8, v1

    goto :goto_4

    :cond_a
    const-wide v8, -0x800000001L

    and-long v8, v16, v8

    const-wide/16 v13, 0x0

    cmp-long v1, v8, v13

    if-eqz v1, :cond_c

    const/16 v1, 0x12

    if-le v6, v1, :cond_c

    const/16 v6, 0x12

    goto :goto_4

    :cond_b
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v13, :cond_c

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    aput v3, v8, v1

    :cond_c
    :goto_4
    if-ne v5, v7, :cond_d

    :goto_5
    const/4 v14, 0x1

    :goto_6
    const v15, 0x7fffffff

    goto/16 :goto_9

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x80

    if-ge v8, v1, :cond_16

    :cond_f
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_14

    const/16 v3, 0x5c

    if-eq v1, v10, :cond_13

    const/4 v8, 0x5

    if-eq v1, v8, :cond_12

    const/4 v8, 0x7

    if-eq v1, v8, :cond_11

    if-eq v1, v15, :cond_10

    goto :goto_7

    :cond_10
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    const/16 v1, 0x59

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :cond_11
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    invoke-direct {v0, v8, v11}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_12
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    invoke-direct {v0, v8, v12}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_7

    :cond_13
    iget-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    if-ne v1, v3, :cond_15

    const/16 v1, 0x55

    const/16 v3, 0x58

    invoke-direct {v0, v1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    :cond_14
    const/16 v1, 0x12

    if-le v6, v1, :cond_15

    const/16 v6, 0x12

    :cond_15
    :goto_7
    if-ne v5, v7, :cond_f

    goto :goto_5

    :cond_16
    shr-int/lit8 v1, v8, 0x8

    shr-int/lit8 v3, v8, 0xe

    and-int/lit8 v9, v1, 0x3f

    shl-long v9, v13, v9

    and-int/lit16 v11, v8, 0xff

    shr-int/2addr v11, v12

    and-int/lit8 v8, v8, 0x3f

    shl-long v12, v13, v8

    :cond_17
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v8, v5

    const/4 v14, 0x1

    if-eq v8, v14, :cond_19

    :cond_18
    const/16 v8, 0x12

    goto :goto_8

    :cond_19
    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v11

    move-wide/from16 v21, v9

    move-wide/from16 v23, v12

    invoke-static/range {v18 .. v24}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v8

    if-eqz v8, :cond_18

    const/16 v8, 0x12

    if-le v6, v8, :cond_1a

    const/16 v6, 0x12

    :cond_1a
    :goto_8
    if-ne v5, v7, :cond_17

    goto/16 :goto_6

    :goto_9
    if-eq v6, v15, :cond_1b

    iput v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v7, v7, 0xc

    if-ne v5, v7, :cond_1c

    return v4

    :cond_1c
    :try_start_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v3, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v4
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 3

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x66

    if-eq v0, v1, :cond_3

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v2, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x42

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x41

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_5
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x2a0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 3

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x66

    if-eq v0, v1, :cond_3

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v2, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x42

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x41

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_5
    const/16 v0, 0xa

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_6
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x2a0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_10()I
    .locals 2

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_10(II)I

    move-result v0

    return v0

    :cond_0
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_10(J)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0xa0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_10(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_11()I
    .locals 2

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_11(II)I

    move-result v0

    return v0

    :cond_0
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_11(J)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0xa0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_11(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_12()I
    .locals 2

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_12(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0xa0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_12(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_13()I
    .locals 2

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_13(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x2a0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_13(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 3

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x42

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x41

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_3
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x2a0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_2(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 5

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_9

    const/16 v2, 0x25

    const/4 v3, 0x0

    if-eq v0, v2, :cond_8

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_6

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_5

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    const/16 v2, 0x74

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, v3, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x24

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_5
    const/16 v0, 0x30

    const/16 v1, 0x31

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_3(III)I

    move-result v0

    return v0

    :cond_6
    invoke-direct {p0, v3, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_7
    const/16 v0, 0x22

    const/16 v1, 0x5e

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_3(III)I

    move-result v0

    return v0

    :cond_8
    const/16 v0, 0x26

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0xa0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_4()I
    .locals 6

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_9

    const/16 v2, 0x25

    const/4 v3, 0x0

    if-eq v0, v2, :cond_8

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_7

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_6

    const/16 v4, 0x5b

    const/4 v5, 0x3

    if-eq v0, v4, :cond_5

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_4

    const/16 v4, 0x66

    if-eq v0, v4, :cond_3

    const/16 v4, 0x74

    if-eq v0, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7d

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v5, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0, v3, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_4(J)I

    move-result v0

    return v0

    :pswitch_2
    const/16 v0, 0x22

    const/16 v1, 0x64

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_4(III)I

    move-result v0

    return v0

    :pswitch_3
    const/4 v0, 0x5

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_4
    invoke-direct {p0, v3, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_5
    const/16 v0, 0x24

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_6
    const/16 v0, 0xb

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_7
    const/16 v0, 0xa

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x9

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x8

    const/16 v1, 0x40

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_4(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_4(J)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_4(J)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_5
    invoke-direct {p0, v3, v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_6
    const/16 v0, 0x30

    const/16 v1, 0x31

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_4(III)I

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x7

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_8
    const/16 v0, 0x26

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x2a0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_4(J)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_5()I
    .locals 5

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_9

    const/16 v2, 0x25

    const/4 v3, 0x0

    if-eq v0, v2, :cond_8

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_7

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_6

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_5

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_4

    const/16 v4, 0x66

    if-eq v0, v4, :cond_3

    const/16 v4, 0x74

    if-eq v0, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7d

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_5(II)I

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0, v3, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_5(J)I

    move-result v0

    return v0

    :pswitch_2
    const/16 v0, 0x22

    const/16 v1, 0x60

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_5(III)I

    move-result v0

    return v0

    :pswitch_3
    const/4 v0, 0x5

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_4
    invoke-direct {p0, v3, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_5
    const/16 v0, 0x24

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_6
    const/16 v0, 0xc

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x9

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_5(J)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_5(J)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_5
    const/4 v0, 0x3

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_6
    const/16 v0, 0x30

    const/16 v1, 0x2d

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_5(III)I

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x7

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_8
    const/16 v0, 0x26

    invoke-direct {p0, v3, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x2a0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_5(J)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_6()I
    .locals 4

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_6(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x46

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/16 v0, 0x20

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_6(JJ)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x2a0000

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_6(JJ)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_7()I
    .locals 3

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_7(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x42

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x41

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x2a0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_7(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_8()I
    .locals 2

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_8(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0xa0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_8(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_9()I
    .locals 2

    iget-char v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_9(II)I

    move-result v0

    return v0

    :cond_0
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_9(J)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0xa0000

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa1_9(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa1_0(J)I
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x23

    const/16 v3, 0x15

    const-wide/16 v4, 0x0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_3

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_2

    const/16 v0, 0x61

    if-eq v1, v0, :cond_1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide v0, 0x200000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v1, 0x80000

    and-long/2addr v1, p1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    const/16 p1, 0x13

    invoke-direct {p0, v0, p1, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_4
    const-wide/32 v1, 0x200000

    and-long/2addr v1, p1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    invoke-direct {p0, v0, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_5
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa1_1(J)I
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x23

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_3

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_2

    const/16 v0, 0x61

    if-eq v1, v0, :cond_1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide v0, 0x200000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v1, 0x80000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/16 p1, 0x13

    const/16 p2, 0x17

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result p1

    return p1

    :cond_4
    const-wide/32 v1, 0x200000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/16 p1, 0x15

    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_5
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_1(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_1(IJJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa1_10(J)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x23

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v1, 0x5b

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_10(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/16 p1, 0x13

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_10(III)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/16 p1, 0x18

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_10(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_10(IJ)I

    return v1
.end method

.method private jjMoveStringLiteralDfa1_11(J)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x23

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v1, 0x5b

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_11(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/16 p1, 0x13

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_11(III)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v2, 0x800000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/16 p1, 0x17

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_11(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_11(IJ)I

    return v1
.end method

.method private jjMoveStringLiteralDfa1_12(J)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v0, 0x5b

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_12(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const/16 p1, 0x13

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_12(III)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_12(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_12(IJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa1_13(J)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x23

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v1, 0x5b

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_13(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/16 p1, 0x13

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_13(III)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/16 p1, 0x15

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_13(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_13(IJ)I

    return v1
.end method

.method private jjMoveStringLiteralDfa1_2(J)I
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x23

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_2(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v1, 0x80000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/16 p1, 0x13

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_2(III)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v1, 0x200000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/16 p1, 0x15

    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_2(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_2(IJJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa1_3(J)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    const/16 v0, 0x5b

    if-eq v2, v0, :cond_2

    const/16 v0, 0x61

    if-eq v2, v0, :cond_1

    const/16 v0, 0x72

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_3(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide v0, 0x200000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_3(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_3(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    const/16 p1, 0x13

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_3(III)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_3(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa1_4(J)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x23

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    const/16 v1, 0x5b

    if-eq v2, v1, :cond_2

    const/16 v1, 0x61

    if-eq v2, v1, :cond_1

    const/16 v1, 0x72

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_4(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide v0, 0x200000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_4(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_4(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const/4 p1, 0x6

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_4
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const/16 p1, 0x13

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_4(III)I

    move-result p1

    return p1

    :cond_5
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const/16 p1, 0x15

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_6
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_4(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    return v1
.end method

.method private jjMoveStringLiteralDfa1_5(J)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x23

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    const/16 v1, 0x5b

    if-eq v2, v1, :cond_2

    const/16 v1, 0x61

    if-eq v2, v1, :cond_1

    const/16 v1, 0x72

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_5(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide v0, 0x200000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_5(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_5(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const/4 p1, 0x6

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_4
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const/16 p1, 0x13

    const/16 p2, 0x49

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_5(III)I

    move-result p1

    return p1

    :cond_5
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const/16 p1, 0x15

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_6
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_5(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_5(IJ)I

    return v1
.end method

.method private jjMoveStringLiteralDfa1_6(JJ)I
    .locals 9

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x23

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x20

    and-long/2addr v1, p3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/16 p1, 0x45

    const/16 p2, 0x33

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_6(III)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v3, 0x20000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_6(JJJJ)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v1, 0x80000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/16 p1, 0x13

    const/16 p2, 0x2d

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_6(III)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v1, 0x200000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/16 p1, 0x15

    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_6(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_6(IJJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa1_7(J)I
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x23

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_7(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v1, 0x80000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/16 p1, 0x13

    const/16 p2, 0x1f

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_7(III)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v1, 0x200000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/16 p1, 0x15

    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_7(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_7(IJJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa1_8(J)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v0, 0x5b

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_8(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const/16 p1, 0x13

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_8(III)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_8(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_8(IJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa1_9(J)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_2

    const/16 v0, 0x5b

    if-eq v2, v0, :cond_1

    const/16 v0, 0x5d

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_9(JJ)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa2_9(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/16 p1, 0x13

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_9(III)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_9(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_9(IJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa2_0(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_3

    const/16 p1, 0x6c

    if-eq p2, p1, :cond_2

    const/16 p1, 0x75

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x100000000L

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide p1, 0x200000000L

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v0, 0x20000

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_4

    const/16 p2, 0x11

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa2_1(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_1(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_3

    const/16 p1, 0x6c

    if-eq p2, p1, :cond_2

    const/16 p1, 0x75

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x100000000L

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide p1, 0x200000000L

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v0, 0x20000

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_4

    const/16 p2, 0x11

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_1(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_1(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa2_10(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_10(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_10(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_10(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa2_11(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_11(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_11(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_11(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa2_12(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_12(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_12(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_12(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa2_13(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_13(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_13(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_13(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa2_2(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_2(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x20000

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_2

    const/16 p2, 0x11

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_2(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_2(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa2_3(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_3(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_3

    const/16 p2, 0x6c

    if-eq v2, p2, :cond_2

    const/16 p2, 0x75

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x100000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_3(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide p1, 0x200000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_3(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_4

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_3(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa2_4(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_4(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_3

    const/16 p2, 0x6c

    if-eq v2, p2, :cond_2

    const/16 p2, 0x75

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x100000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_4(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide p1, 0x200000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_4(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_4

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_4(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa2_5(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_5(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_3

    const/16 p2, 0x6c

    if-eq v2, p2, :cond_2

    const/16 p2, 0x75

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x100000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_5(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide p1, 0x200000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa3_5(JJ)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_4

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_5(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_5(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa2_6(JJJJ)I
    .locals 9

    move-object v6, p0

    and-long v0, p3, p1

    and-long v2, p7, p5

    or-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_6(IJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x2

    :try_start_0
    iget-object v3, v6, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v3}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v3

    iput-char v3, v6, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x5b

    if-eq v3, v7, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x20000

    and-long/2addr v7, v0

    cmp-long v3, v7, v4

    if-eqz v3, :cond_2

    const/16 v0, 0x11

    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v2

    move-wide p3, v0

    move-wide p5, v3

    invoke-direct/range {p1 .. p6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_6(IJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v0

    move-wide p5, v4

    invoke-direct/range {p1 .. p6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_6(IJJ)I

    return v2
.end method

.method private jjMoveStringLiteralDfa2_7(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_7(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x20000

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_2

    const/16 p2, 0x11

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_7(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_7(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa2_8(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_8(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_8(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_8(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa2_9(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_9(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    const/16 p1, 0x11

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    const/16 p1, 0x19

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_9(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_9(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa3_0(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x65

    if-eq p2, v0, :cond_2

    const/16 p1, 0x73

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x200000000L

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide v0, 0x100000000L

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_3

    const/16 p2, 0x20

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa3_1(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_1(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x65

    if-eq p2, v0, :cond_2

    const/16 p1, 0x73

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x200000000L

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide v0, 0x100000000L

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_3

    const/16 p2, 0x20

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_1(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_1(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa3_3(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_3(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    const/4 p2, 0x3

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 p2, 0x73

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x200000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa4_3(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    const/16 p1, 0x20

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_3(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa3_4(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_4(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    const/4 p2, 0x3

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 p2, 0x73

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x200000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa4_4(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    const/16 p1, 0x20

    const/16 p3, 0x3e

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_4(III)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_4(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa3_5(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_5(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    const/4 p2, 0x3

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 p2, 0x73

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x200000000L

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa4_5(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    const/16 p1, 0x20

    const/16 p3, 0x35

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_5(III)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_5(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_5(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa4_0(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x2

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x4

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x65

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide v0, 0x200000000L

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_2

    const/16 p2, 0x21

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa4_1(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x2

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_1(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x4

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x65

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide v0, 0x200000000L

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_2

    const/16 p2, 0x21

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_1(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_1(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa4_3(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x2

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_3(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    const/4 p2, 0x4

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 p1, 0x21

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_3(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa4_4(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x2

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_4(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    const/4 p2, 0x4

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 p1, 0x21

    const/16 p3, 0x3e

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_4(III)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_4(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    return p2
.end method

.method private jjMoveStringLiteralDfa4_5(JJ)I
    .locals 5

    and-long/2addr p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const/4 p3, 0x2

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_5(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    const/4 p2, 0x4

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 p1, 0x21

    const/16 p3, 0x35

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfaWithStates_5(III)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStartNfa_5(IJ)I

    move-result p1

    return p1

    :catch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_5(IJ)I

    return p2
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_1(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_10(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_10(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_11(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_11(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_12(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_12(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_13(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_13(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_2(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_3(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_4(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_4(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_5(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_5(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_6(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_6(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_7(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_7(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_8(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_8(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStartNfaWithStates_9(III)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_9(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfa_0(IJJ)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_1(IJJ)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_1(IJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_10(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_10(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_10(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_11(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_11(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_11(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_12(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_12(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_12(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_13(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_13(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_13(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_2(IJJ)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_2(IJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_4(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_4(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_5(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_5(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_5(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_6(IJJ)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_6(IJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_6(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_7(IJJ)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_7(IJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_7(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_8(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_8(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_8(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_9(IJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjStopStringLiteralDfa_9(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveNfa_9(II)I

    move-result p1

    return p1
.end method

.method private jjStopAtPos(II)I
    .locals 0

    iput p2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_0(IJJ)I
    .locals 3

    const-wide/16 p4, 0x0

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const-wide/32 v1, 0x80000

    and-long p1, p2, v1

    cmp-long p3, p1, p4

    if-eqz p3, :cond_1

    const/16 p1, 0x15

    return p1

    :cond_1
    return v0

    :cond_2
    const-wide/32 v1, 0x3a0000

    and-long p1, p2, v1

    cmp-long p3, p1, p4

    if-eqz p3, :cond_3

    const/16 p1, 0xf

    return p1

    :cond_3
    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJJ)I
    .locals 7

    const-wide p4, 0x300000000L

    const/16 v0, 0x3f

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    return v1

    :cond_0
    const-wide v5, 0x200000000L

    and-long/2addr v5, p2

    cmp-long p1, v5, v2

    if-eqz p1, :cond_1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput p4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_1
    const-wide p4, 0x100000000L

    and-long p1, p2, p4

    cmp-long p3, p1, v2

    if-eqz p3, :cond_2

    return v4

    :cond_2
    return v1

    :cond_3
    and-long p1, p2, p4

    cmp-long p3, p1, v2

    if-eqz p3, :cond_4

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v5, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_4
    return v1

    :cond_5
    const-wide/32 v5, 0x80000

    and-long/2addr v5, p2

    cmp-long p1, v5, v2

    if-eqz p1, :cond_6

    const/16 p1, 0x17

    return p1

    :cond_6
    and-long p1, p2, p4

    cmp-long p3, p1, v2

    if-eqz p3, :cond_7

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_7
    return v1

    :cond_8
    and-long/2addr p4, p2

    cmp-long p1, p4, v2

    if-eqz p1, :cond_9

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    return v4

    :cond_9
    const-wide/32 p4, 0x3a0000

    and-long p1, p2, p4

    cmp-long p3, p1, v2

    if-eqz p3, :cond_a

    const/16 p1, 0x11

    return p1

    :cond_a
    return v1
.end method

.method private final jjStopStringLiteralDfa_10(IJ)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    return v2

    :cond_0
    const-wide/32 v3, 0x80000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v2

    :cond_2
    const-wide/32 v3, 0x1a0000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v2
.end method

.method private final jjStopStringLiteralDfa_11(IJ)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    return v2

    :cond_0
    const-wide/32 v3, 0x80000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v2

    :cond_2
    const-wide/32 v3, 0x1a0000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v2
.end method

.method private final jjStopStringLiteralDfa_12(IJ)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    return v2

    :cond_0
    const-wide/32 v3, 0x80000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v2

    :cond_2
    const-wide/32 v3, 0x1a0000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v2
.end method

.method private final jjStopStringLiteralDfa_13(IJ)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    return v2

    :cond_0
    const-wide/32 v3, 0x80000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v2

    :cond_2
    const-wide/32 v3, 0x3a0000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v2
.end method

.method private final jjStopStringLiteralDfa_2(IJJ)I
    .locals 3

    const-wide/16 p4, 0x0

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const-wide/32 v1, 0x80000

    and-long p1, p2, v1

    cmp-long p3, p1, p4

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0

    :cond_2
    const-wide/32 v1, 0x3a0000

    and-long p1, p2, v1

    cmp-long p3, p1, p4

    if-eqz p3, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 5

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    return v0

    :cond_0
    const-wide/32 v3, 0x80000

    and-long p1, p2, v3

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0

    :cond_2
    const-wide v3, 0x400000000L

    and-long/2addr v3, p2

    cmp-long p1, v3, v1

    if-eqz p1, :cond_3

    const/16 p1, 0x5e

    return p1

    :cond_3
    const-wide/32 v3, 0x1a0000

    and-long/2addr v3, p2

    cmp-long p1, v3, v1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    return p1

    :cond_4
    const-wide/high16 v3, 0x1000000000000L

    and-long p1, p2, v3

    cmp-long p3, p1, v1

    if-eqz p3, :cond_5

    const/16 p1, 0x31

    return p1

    :cond_5
    return v0
.end method

.method private final jjStopStringLiteralDfa_4(IJ)I
    .locals 11

    const-wide v0, 0x300000000L

    const/4 v2, 0x2

    const/16 v3, 0x3b

    const/16 v4, 0x3e

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_8

    const/4 v8, 0x1

    if-eq p1, v8, :cond_5

    if-eq p1, v2, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v5

    :cond_0
    const-wide v1, 0x100000000L

    and-long/2addr v1, p2

    cmp-long p1, v1, v6

    if-eqz p1, :cond_1

    return v4

    :cond_1
    const-wide v1, 0x200000000L

    and-long p1, p2, v1

    cmp-long p3, p1, v6

    if-eqz p3, :cond_2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_2
    return v5

    :cond_3
    and-long p1, p2, v0

    cmp-long p3, p1, v6

    if-eqz p3, :cond_4

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_4
    return v5

    :cond_5
    const-wide/32 v9, 0x80000

    and-long/2addr v9, p2

    cmp-long p1, v9, v6

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    and-long p1, p2, v0

    cmp-long p3, p1, v6

    if-eqz p3, :cond_7

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v8, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_7
    return v5

    :cond_8
    and-long/2addr v0, p2

    cmp-long p1, v0, v6

    if-eqz p1, :cond_9

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    return v4

    :cond_9
    const-wide/32 v0, 0x3a0000

    and-long/2addr v0, p2

    cmp-long p1, v0, v6

    if-eqz p1, :cond_a

    return v2

    :cond_a
    const-wide/16 v0, 0x40

    and-long/2addr v0, p2

    cmp-long p1, v0, v6

    if-eqz p1, :cond_b

    const/16 p1, 0x39

    return p1

    :cond_b
    const-wide v0, 0x400000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v6

    if-eqz p1, :cond_c

    const/16 p1, 0x64

    return p1

    :cond_c
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v6

    if-eqz p1, :cond_d

    const/16 p1, 0x31

    return p1

    :cond_d
    const-wide/16 v0, 0x100

    and-long p1, p2, v0

    cmp-long p3, p1, v6

    if-eqz p3, :cond_e

    const/16 p1, 0x40

    return p1

    :cond_e
    return v5
.end method

.method private final jjStopStringLiteralDfa_5(IJ)I
    .locals 10

    const-wide v0, 0x300000000L

    const/16 v2, 0x3f

    const/16 v3, 0x35

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_8

    const/4 v7, 0x1

    if-eq p1, v7, :cond_5

    const/4 v7, 0x2

    if-eq p1, v7, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v4

    :cond_0
    const-wide v7, 0x100000000L

    and-long/2addr v7, p2

    cmp-long p1, v7, v5

    if-eqz p1, :cond_1

    return v3

    :cond_1
    const-wide v7, 0x200000000L

    and-long p1, p2, v7

    cmp-long p3, p1, v5

    if-eqz p3, :cond_2

    iput v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v3

    :cond_2
    return v4

    :cond_3
    and-long p1, p2, v0

    cmp-long p3, p1, v5

    if-eqz p3, :cond_4

    iput v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v3

    :cond_4
    return v4

    :cond_5
    const-wide/32 v8, 0x80000

    and-long/2addr v8, p2

    cmp-long p1, v8, v5

    if-eqz p1, :cond_6

    const/16 p1, 0x49

    return p1

    :cond_6
    and-long p1, p2, v0

    cmp-long p3, p1, v5

    if-eqz p3, :cond_7

    iput v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    return v3

    :cond_7
    return v4

    :cond_8
    const-wide v7, 0x400000000L

    and-long/2addr v7, p2

    cmp-long p1, v7, v5

    if-eqz p1, :cond_9

    const/16 p1, 0x60

    return p1

    :cond_9
    const-wide/high16 v7, 0x1000000000000L

    and-long/2addr v7, p2

    cmp-long p1, v7, v5

    if-eqz p1, :cond_a

    const/16 p1, 0x2d

    return p1

    :cond_a
    and-long/2addr v0, p2

    cmp-long p1, v0, v5

    if-eqz p1, :cond_b

    iput v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    return v3

    :cond_b
    const-wide/16 v0, 0x40

    and-long/2addr v0, p2

    cmp-long p1, v0, v5

    if-eqz p1, :cond_c

    const/16 p1, 0x6b

    return p1

    :cond_c
    const-wide/32 v0, 0x3a0000

    and-long p1, p2, v0

    cmp-long p3, p1, v5

    if-eqz p3, :cond_d

    const/16 p1, 0x43

    return p1

    :cond_d
    return v4
.end method

.method private final jjStopStringLiteralDfa_6(IJJ)I
    .locals 5

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    return v0

    :cond_0
    const-wide/32 v3, 0x80000

    and-long p1, p2, v3

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    const/16 p1, 0x2d

    return p1

    :cond_1
    const-wide/16 p1, 0x20

    and-long/2addr p1, p4

    cmp-long p3, p1, v1

    if-eqz p3, :cond_2

    const/16 p1, 0x33

    return p1

    :cond_2
    return v0

    :cond_3
    const-wide/32 v3, 0x3a0000

    and-long p1, p2, v3

    cmp-long p3, p1, v1

    if-eqz p3, :cond_4

    const/16 p1, 0x27

    return p1

    :cond_4
    const-wide/16 p1, 0x60

    and-long/2addr p1, p4

    cmp-long p3, p1, v1

    if-eqz p3, :cond_5

    const/16 p1, 0x12

    return p1

    :cond_5
    return v0
.end method

.method private final jjStopStringLiteralDfa_7(IJJ)I
    .locals 3

    const-wide/16 p4, 0x0

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const-wide/32 v1, 0x80000

    and-long p1, p2, v1

    cmp-long p3, p1, p4

    if-eqz p3, :cond_1

    const/16 p1, 0x1f

    return p1

    :cond_1
    return v0

    :cond_2
    const-wide/32 v1, 0x3a0000

    and-long p1, p2, v1

    cmp-long p3, p1, p4

    if-eqz p3, :cond_3

    const/16 p1, 0x19

    return p1

    :cond_3
    return v0
.end method

.method private final jjStopStringLiteralDfa_8(IJ)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    return v2

    :cond_0
    const-wide/32 v3, 0x80000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v2

    :cond_2
    const-wide/32 v3, 0x1a0000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v2
.end method

.method private final jjStopStringLiteralDfa_9(IJ)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    return v2

    :cond_0
    const-wide/32 v3, 0x80000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v2

    :cond_2
    const-wide/32 v3, 0x1a0000

    and-long p1, p2, v3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v2
.end method


# virtual methods
.method public MoreLexicalActions()V
    .locals 7

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v6, v0}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez v0, :cond_e

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eqz v0, :cond_0

    if-eq v0, v5, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    iput-boolean v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    :cond_1
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "# :  going to 4"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eq v0, v5, :cond_3

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPush()Z

    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v6, v0}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez v0, :cond_e

    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPush()Z

    :cond_4
    const/16 v0, 0xa

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v6, v0}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v0, v2}, Lorg/apache/velocity/runtime/parser/CharStream;->backup(I)V

    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eq v0, v5, :cond_5

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPush()Z

    :cond_5
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v6, v0}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez v0, :cond_e

    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_6

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPush()Z

    :cond_6
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v6, v0}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez v0, :cond_e

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eqz v0, :cond_7

    if-ne v0, v5, :cond_8

    :cond_7
    iput-boolean v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    :cond_8
    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "$!  : going to 7"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_9
    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eq v0, v5, :cond_a

    if-eq v0, v3, :cond_a

    :goto_1
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPush()Z

    :cond_a
    invoke-virtual {p0, v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v6, v0}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez v0, :cond_e

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eqz v0, :cond_b

    if-ne v0, v5, :cond_c

    :cond_b
    iput-boolean v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    :cond_c
    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "$  : going to 7"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eq v0, v5, :cond_a

    if-eq v0, v3, :cond_a

    goto :goto_1

    :cond_e
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/velocity/runtime/parser/CharStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/velocity/runtime/parser/CharStream;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInit(Lorg/apache/velocity/runtime/parser/CharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SkipLexicalActions(Lorg/apache/velocity/runtime/parser/Token;)V
    .locals 4

    .line 1
    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    .line 2
    .line 3
    const/16 v0, 0x43

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    const/16 v0, 0x44

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    .line 16
    .line 17
    iget v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    .line 18
    .line 19
    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    .line 20
    .line 21
    add-int/2addr v3, v1

    .line 22
    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 23
    .line 24
    invoke-static {v2, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 32
    .line 33
    const-string v0, "DIRECTIVE_TERM :"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    .line 39
    .line 40
    invoke-interface {p1, v1}, Lorg/apache/velocity/runtime/parser/CharStream;->backup(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    .line 50
    .line 51
    iget v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    .line 52
    .line 53
    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    .line 54
    .line 55
    add-int/2addr v3, v1

    .line 56
    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 57
    .line 58
    invoke-static {v2, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    .line 62
    .line 63
    invoke-interface {p1, v1}, Lorg/apache/velocity/runtime/parser/CharStream;->backup(I)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    .line 68
    .line 69
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 74
    .line 75
    const-string v0, "REF_TERM :"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_1
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/apache/velocity/runtime/parser/TokenMgrError;

    .line 11
    .line 12
    const-string v1, "Error: Ignoring invalid lexical state : "

    .line 13
    .line 14
    const-string v2, ". State unchanged."

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, p1, v1}, Lorg/apache/velocity/runtime/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public TokenLexicalActions(Lorg/apache/velocity/runtime/parser/Token;)V
    .locals 9

    iget v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    const/16 v4, 0xe

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-eq v0, v4, :cond_c

    const/16 v4, 0x42

    if-eq v0, v4, :cond_b

    const/16 v4, 0x36

    const/4 v7, 0x0

    if-eq v0, v4, :cond_9

    const/16 v1, 0x37

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3f

    const/4 v4, 0x7

    if-eq v0, v1, :cond_7

    const/16 v1, 0x40

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    add-int/2addr v1, v3

    invoke-interface {v0, v1}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 1
    :goto_0
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 2
    invoke-virtual {p0, v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    add-int/2addr v1, v3

    invoke-interface {v0, v1}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    goto/16 :goto_4

    :pswitch_4
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 3
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 4
    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-ne p1, v5, :cond_11

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inSet:Z

    if-nez p1, :cond_11

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    if-nez p1, :cond_11

    :goto_2
    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 5
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 6
    iput-boolean v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 7
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 8
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " NEWLINE :"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inSet:Z

    if-eqz p1, :cond_11

    iput-boolean v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inSet:Z

    goto/16 :goto_4

    :pswitch_7
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 9
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 10
    iput-boolean v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    goto :goto_1

    :pswitch_8
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 11
    invoke-static {v1, v4, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 12
    iput-boolean v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_11

    goto :goto_2

    :pswitch_9
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 13
    invoke-static {v1, v4, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 14
    iput-boolean v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_11

    goto :goto_2

    :pswitch_a
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 15
    invoke-static {v1, v4, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 16
    iput-boolean v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_11

    goto/16 :goto_2

    :pswitch_b
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 17
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 18
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez p1, :cond_11

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eqz p1, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    iput-boolean v7, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    :cond_3
    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPush()Z

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_4

    :pswitch_c
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 19
    invoke-static {v1, v4, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 20
    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_4

    :pswitch_d
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 21
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 22
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->RPARENHandler()V

    goto/16 :goto_4

    :pswitch_e
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 23
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 24
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez p1, :cond_4

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    :cond_4
    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-ne p1, v2, :cond_11

    :goto_3
    invoke-virtual {p0, v6}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 25
    invoke-static {v3, v4, v1, v0}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 26
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v0, v2}, Lorg/apache/velocity/runtime/parser/CharStream;->backup(I)V

    const-string v0, "."

    iput-object v0, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DOT : switching to 1"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_4

    :cond_7
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 27
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 28
    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-ne p1, v4, :cond_11

    invoke-virtual {p0, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_4

    :cond_8
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 29
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 30
    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inSet:Z

    if-nez p1, :cond_11

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eq p1, v6, :cond_11

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v5, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v8, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v8, v2

    iput v8, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 31
    invoke-static {v5, v8, v4, v0}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 32
    iget-object v0, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v0, v3}, Lorg/apache/velocity/runtime/parser/CharStream;->backup(I)V

    iget-object v0, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 33
    invoke-static {v0, v3, v7}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 34
    iput-object v0, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    :cond_a
    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inSet:Z

    if-nez p1, :cond_11

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-eq p1, v6, :cond_11

    if-eq p1, v1, :cond_11

    goto/16 :goto_2

    :cond_b
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    add-int/2addr v1, v3

    invoke-interface {v0, v1}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    .line 35
    invoke-static {v1, v3, v0, p1}, Lorg/apache/ftpserver/main/a;->s(IILorg/apache/velocity/runtime/parser/CharStream;Ljava/lang/StringBuilder;)V

    .line 36
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    if-eqz p1, :cond_d

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "#set :  going to 4"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPush()Z

    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inSet:Z

    invoke-virtual {p0, v5}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    :cond_e
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    if-nez p1, :cond_11

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    iget p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    if-ne p1, v2, :cond_11

    goto/16 :goto_3

    :cond_f
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    add-int/2addr v1, v3

    invoke-interface {v0, v1}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_10
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    iget v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lengthOfMatch:I

    add-int/2addr v3, v4

    invoke-interface {v0, v3}, Lorg/apache/velocity/runtime/parser/CharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPush()Z

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    :cond_11
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearStateVars()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->rparen:I

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inReference:Z

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inComment:Z

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inSet:Z

    return-void
.end method

.method public getNextToken()Lorg/apache/velocity/runtime/parser/Token;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v6}, Lorg/apache/velocity/runtime/parser/CharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjimageLen:I

    :goto_1
    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    const/16 v7, 0x1a

    const/16 v8, 0x43

    const v9, 0x7fffffff

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_13()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const/16 v7, 0x44

    if-le v6, v7, :cond_1

    :goto_2
    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_4

    :pswitch_1
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_12()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    if-le v6, v7, :cond_1

    goto :goto_2

    :pswitch_2
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_11()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    if-le v6, v7, :cond_1

    goto :goto_2

    :pswitch_3
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_10()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    if-le v6, v7, :cond_1

    goto :goto_2

    :pswitch_4
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_9()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const/16 v7, 0x1b

    if-le v6, v7, :cond_1

    goto :goto_2

    :pswitch_5
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_8()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    if-le v6, v8, :cond_1

    :goto_3
    iput v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_4

    :pswitch_6
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_7()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    if-le v6, v8, :cond_1

    goto :goto_3

    :pswitch_7
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_6()I

    move-result v5

    goto :goto_4

    :pswitch_8
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_5()I

    move-result v5

    goto :goto_4

    :pswitch_9
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_4()I

    move-result v5

    goto :goto_4

    :pswitch_a
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v5

    goto :goto_4

    :pswitch_b
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    if-le v6, v8, :cond_1

    goto :goto_3

    :pswitch_c
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    if-le v6, v8, :cond_1

    goto :goto_3

    :pswitch_d
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v5

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_1

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    if-le v6, v8, :cond_1

    goto :goto_3

    :cond_1
    :goto_4
    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    const/4 v7, 0x1

    if-eq v6, v9, :cond_9

    iget v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v8, v6, 0x1

    if-ge v8, v5, :cond_2

    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    sub-int v6, v5, v6

    sub-int/2addr v6, v7

    invoke-interface {v8, v6}, Lorg/apache/velocity/runtime/parser/CharStream;->backup(I)V

    :cond_2
    sget-object v6, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjtoToken:[J

    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v10, v8, 0x6

    aget-wide v10, v6, v10

    and-int/lit8 v6, v8, 0x3f

    const-wide/16 v12, 0x1

    shl-long v14, v12, v6

    and-long/2addr v10, v14

    const/4 v6, -0x1

    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-eqz v16, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjFillToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iput-object v4, v1, Lorg/apache/velocity/runtime/parser/Token;->specialToken:Lorg/apache/velocity/runtime/parser/Token;

    invoke-virtual {v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->TokenLexicalActions(Lorg/apache/velocity/runtime/parser/Token;)V

    sget-object v2, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    if-eq v2, v6, :cond_3

    iput v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    :cond_3
    return-object v1

    :cond_4
    sget-object v10, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v11, v8, 0x6

    aget-wide v16, v10, v11

    and-int/lit8 v10, v8, 0x3f

    shl-long v10, v12, v10

    and-long v10, v16, v10

    cmp-long v16, v10, v14

    if-eqz v16, :cond_7

    sget-object v7, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v9, v8, 0x6

    aget-wide v9, v7, v9

    and-int/lit8 v7, v8, 0x3f

    shl-long v7, v12, v7

    and-long/2addr v7, v9

    cmp-long v9, v7, v14

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjFillToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v7

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    iput-object v4, v7, Lorg/apache/velocity/runtime/parser/Token;->specialToken:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v7, v4, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    :goto_5
    invoke-virtual {v0, v7}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SkipLexicalActions(Lorg/apache/velocity/runtime/parser/Token;)V

    move-object v4, v7

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SkipLexicalActions(Lorg/apache/velocity/runtime/parser/Token;)V

    :goto_6
    sget-object v7, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewLexState:[I

    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    aget v7, v7, v8

    if-eq v7, v6, :cond_0

    iput v7, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->MoreLexicalActions()V

    sget-object v5, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjnewLexState:[I

    iget v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    aget v5, v5, v8

    if-eq v5, v6, :cond_8

    iput v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    :cond_8
    iput v9, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    :try_start_1
    iget-object v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v5}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    move-result v5

    iput-char v5, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_0
    const/4 v5, 0x0

    :cond_9
    iget-object v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v4}, Lorg/apache/velocity/runtime/parser/CharStream;->getEndLine()I

    move-result v4

    iget-object v6, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v6}, Lorg/apache/velocity/runtime/parser/CharStream;->getEndColumn()I

    move-result v6

    :try_start_2
    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v8}, Lorg/apache/velocity/runtime/parser/CharStream;->readChar()C

    iget-object v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v8, v7}, Lorg/apache/velocity/runtime/parser/CharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v11, v4

    move v12, v6

    const/4 v9, 0x0

    goto :goto_9

    :catch_1
    nop

    if-gt v5, v7, :cond_a

    move-object v2, v1

    goto :goto_7

    :cond_a
    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    :goto_7
    iget-char v8, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/16 v9, 0xa

    if-eq v8, v9, :cond_c

    const/16 v9, 0xd

    if-ne v8, v9, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v3, v6, 0x1

    move v12, v3

    move v11, v4

    const/4 v9, 0x1

    goto :goto_9

    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move v11, v4

    const/4 v9, 0x1

    const/4 v12, 0x0

    :goto_9
    if-nez v9, :cond_e

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2, v7}, Lorg/apache/velocity/runtime/parser/CharStream;->backup(I)V

    if-gt v5, v7, :cond_d

    goto :goto_a

    :cond_d
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_a
    move-object v13, v1

    goto :goto_b

    :cond_e
    move-object v13, v2

    :goto_b
    new-instance v1, Lorg/apache/velocity/runtime/parser/TokenMgrError;

    iget v10, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    iget-char v14, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curChar:C

    const/4 v15, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lorg/apache/velocity/runtime/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    :catch_2
    iput v3, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjFillToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iput-object v4, v1, Lorg/apache/velocity/runtime/parser/Token;->specialToken:Lorg/apache/velocity/runtime/parser/Token;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public jjFillToken()Lorg/apache/velocity/runtime/parser/Token;
    .locals 6

    sget-object v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/parser/CharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/CharStream;->getBeginLine()I

    move-result v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/CharStream;->getBeginColumn()I

    move-result v2

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v3}, Lorg/apache/velocity/runtime/parser/CharStream;->getEndLine()I

    move-result v3

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->input_stream:Lorg/apache/velocity/runtime/parser/CharStream;

    invoke-interface {v4}, Lorg/apache/velocity/runtime/parser/CharStream;->getEndColumn()I

    move-result v4

    iget v5, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lorg/apache/velocity/runtime/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    iput v1, v0, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    iput v3, v0, Lorg/apache/velocity/runtime/parser/Token;->endLine:I

    iput v2, v0, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    iput v4, v0, Lorg/apache/velocity/runtime/parser/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method

.method public stateStackPop()Z
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " stack pop ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") : lparen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;->lparen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newstate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;->lexstate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;->lparen:I

    iput v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    iget v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;->rparen:I

    iput v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->rparen:I

    iget v0, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;->lexstate:I

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    return v2

    :catch_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    return v0
.end method

.method public stateStackPush()Z
    .locals 3

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->debugPrint:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") pushing cur state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;-><init>(Lorg/apache/velocity/runtime/parser/ParserTokenManager$1;)V

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;->lparen:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->rparen:I

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;->rparen:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    iput v1, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;->lexstate:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->lparen:I

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method
