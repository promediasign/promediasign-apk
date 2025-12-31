.class public final Lorg/apache/xmlbeans/GDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/GDateSpecification;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final GMTZONE:Ljava/util/TimeZone;

.field private static final MINUSZONE:[Ljava/util/TimeZone;

.field private static final PLUSZONE:[Ljava/util/TimeZone;

.field static final _one:Ljava/math/BigDecimal;

.field private static final _onesDigit:[C

.field private static final _tensDigit:[C

.field static final _zero:Ljava/math/BigDecimal;

.field static synthetic class$org$apache$xmlbeans$GDate:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _CY:I

.field private _D:I

.field private _M:I

.field private _bits:I

.field private transient _canonicalString:Ljava/lang/String;

.field private _fs:Ljava/math/BigDecimal;

.field private _h:I

.field private _m:I

.field private _s:I

.field private transient _string:Ljava/lang/String;

.field private _tzh:I

.field private _tzm:I

.field private _tzsign:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/16 v10, 0x64

    const/4 v11, 0x1

    sget-object v12, Lorg/apache/xmlbeans/GDate;->class$org$apache$xmlbeans$GDate:Ljava/lang/Class;

    if-nez v12, :cond_0

    const-string v12, "org.apache.xmlbeans.GDate"

    invoke-static {v12}, Lorg/apache/xmlbeans/GDate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/apache/xmlbeans/GDate;->class$org$apache$xmlbeans$GDate:Ljava/lang/Class;

    :cond_0
    sput-boolean v11, Lorg/apache/xmlbeans/GDate;->$assertionsDisabled:Z

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v12

    sput-object v12, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v12

    sput-object v12, Lorg/apache/xmlbeans/GDate;->_one:Ljava/math/BigDecimal;

    new-array v12, v10, [C

    fill-array-data v12, :array_0

    sput-object v12, Lorg/apache/xmlbeans/GDate;->_tensDigit:[C

    new-array v10, v10, [C

    fill-array-data v10, :array_1

    sput-object v10, Lorg/apache/xmlbeans/GDate;->_onesDigit:[C

    const-string v10, "GMT"

    invoke-static {v10}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/GDate;->GMTZONE:Ljava/util/TimeZone;

    const-string v10, "GMT-00:00"

    invoke-static {v10}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    const-string v12, "GMT-01:00"

    invoke-static {v12}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    const-string v13, "GMT-02:00"

    invoke-static {v13}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    const-string v14, "GMT-03:00"

    invoke-static {v14}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    const-string v15, "GMT-04:00"

    invoke-static {v15}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    const-string v16, "GMT-05:00"

    invoke-static/range {v16 .. v16}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v16

    const-string v17, "GMT-06:00"

    invoke-static/range {v17 .. v17}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    const-string v18, "GMT-07:00"

    invoke-static/range {v18 .. v18}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    const-string v19, "GMT-08:00"

    invoke-static/range {v19 .. v19}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    const-string v20, "GMT-09:00"

    invoke-static/range {v20 .. v20}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    const-string v21, "GMT-10:00"

    invoke-static/range {v21 .. v21}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    const-string v22, "GMT-11:00"

    invoke-static/range {v22 .. v22}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    const-string v23, "GMT-12:00"

    invoke-static/range {v23 .. v23}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v23

    const-string v24, "GMT-13:00"

    invoke-static/range {v24 .. v24}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    const-string v25, "GMT-14:00"

    invoke-static/range {v25 .. v25}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    new-array v0, v9, [Ljava/util/TimeZone;

    aput-object v10, v0, v8

    aput-object v12, v0, v11

    aput-object v13, v0, v7

    aput-object v14, v0, v6

    aput-object v15, v0, v5

    aput-object v16, v0, v4

    aput-object v17, v0, v3

    aput-object v18, v0, v2

    aput-object v19, v0, v1

    const/16 v10, 0x9

    aput-object v20, v0, v10

    const/16 v10, 0xa

    aput-object v21, v0, v10

    const/16 v10, 0xb

    aput-object v22, v0, v10

    const/16 v10, 0xc

    aput-object v23, v0, v10

    const/16 v10, 0xd

    aput-object v24, v0, v10

    const/16 v10, 0xe

    aput-object v25, v0, v10

    sput-object v0, Lorg/apache/xmlbeans/GDate;->MINUSZONE:[Ljava/util/TimeZone;

    const-string v0, "GMT+00:00"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    const-string v10, "GMT+01:00"

    invoke-static {v10}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    const-string v12, "GMT+02:00"

    invoke-static {v12}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    const-string v13, "GMT+03:00"

    invoke-static {v13}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    const-string v14, "GMT+04:00"

    invoke-static {v14}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    const-string v15, "GMT+05:00"

    invoke-static {v15}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    const-string v16, "GMT+06:00"

    invoke-static/range {v16 .. v16}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v16

    const-string v17, "GMT+07:00"

    invoke-static/range {v17 .. v17}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    const-string v18, "GMT+08:00"

    invoke-static/range {v18 .. v18}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    const-string v19, "GMT+09:00"

    invoke-static/range {v19 .. v19}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    const-string v20, "GMT+10:00"

    invoke-static/range {v20 .. v20}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    const-string v21, "GMT+11:00"

    invoke-static/range {v21 .. v21}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    const-string v22, "GMT+12:00"

    invoke-static/range {v22 .. v22}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    const-string v23, "GMT+13:00"

    invoke-static/range {v23 .. v23}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v23

    const-string v24, "GMT+14:00"

    invoke-static/range {v24 .. v24}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    new-array v9, v9, [Ljava/util/TimeZone;

    aput-object v0, v9, v8

    aput-object v10, v9, v11

    aput-object v12, v9, v7

    aput-object v13, v9, v6

    aput-object v14, v9, v5

    aput-object v15, v9, v4

    aput-object v16, v9, v3

    aput-object v17, v9, v2

    aput-object v18, v9, v1

    const/16 v0, 0x9

    aput-object v19, v9, v0

    const/16 v0, 0xa

    aput-object v20, v9, v0

    const/16 v0, 0xb

    aput-object v21, v9, v0

    const/16 v0, 0xc

    aput-object v22, v9, v0

    const/16 v0, 0xd

    aput-object v23, v9, v0

    const/16 v0, 0xe

    aput-object v24, v9, v0

    sput-object v9, Lorg/apache/xmlbeans/GDate;->PLUSZONE:[Ljava/util/TimeZone;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(IIIIIILjava/math/BigDecimal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    iput p1, p0, Lorg/apache/xmlbeans/GDate;->_CY:I

    iput p2, p0, Lorg/apache/xmlbeans/GDate;->_M:I

    iput p3, p0, Lorg/apache/xmlbeans/GDate;->_D:I

    iput p4, p0, Lorg/apache/xmlbeans/GDate;->_h:I

    iput p5, p0, Lorg/apache/xmlbeans/GDate;->_m:I

    iput p6, p0, Lorg/apache/xmlbeans/GDate;->_s:I

    if-nez p7, :cond_0

    sget-object p7, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_0
    iput-object p7, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(IIIIIILjava/math/BigDecimal;III)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    iput p1, p0, Lorg/apache/xmlbeans/GDate;->_CY:I

    iput p2, p0, Lorg/apache/xmlbeans/GDate;->_M:I

    iput p3, p0, Lorg/apache/xmlbeans/GDate;->_D:I

    iput p4, p0, Lorg/apache/xmlbeans/GDate;->_h:I

    iput p5, p0, Lorg/apache/xmlbeans/GDate;->_m:I

    iput p6, p0, Lorg/apache/xmlbeans/GDate;->_s:I

    if-nez p7, :cond_0

    sget-object p7, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_0
    iput-object p7, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    iput p8, p0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    iput p9, p0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    iput p10, p0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 20

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/GDate;->isSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xmlbeans/GDate;->isSpace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sub-int v5, v2, v4

    const/16 v6, 0x3a

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-lt v5, v8, :cond_2

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_2

    iget v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v5, v8

    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x6

    if-lt v5, v9, :cond_8

    add-int/lit8 v5, v2, -0x3

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v2, -0x6

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v9, 0x2b

    if-eq v5, v9, :cond_5

    if-eq v5, v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v9, v2, -0x5

    invoke-static {v1, v9}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v9

    add-int/lit8 v10, v2, -0x2

    invoke-static {v1, v10}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v10

    const/16 v11, 0xe

    if-gt v9, v11, :cond_7

    const/16 v11, 0x3b

    if-gt v10, v11, :cond_6

    iget v11, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v11, v8

    iput v11, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    iput v9, v0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    add-int/lit8 v2, v2, -0x6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "time zone minute must be two digits between 00 and 59"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "time zone hour must be two digits between -14 and +14"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_3
    const/16 v5, 0x9

    if-ge v4, v2, :cond_1f

    add-int/lit8 v9, v4, 0x2

    if-ge v9, v2, :cond_9

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_1f

    :cond_9
    if-ge v4, v2, :cond_a

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x1

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    :goto_4
    neg-int v10, v4

    if-ge v4, v2, :cond_b

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result v11

    if-nez v11, :cond_b

    const/4 v11, 0x1

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    :goto_5
    const/4 v12, 0x0

    :goto_6
    if-ge v4, v2, :cond_c

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    goto :goto_7

    :cond_c
    const/4 v13, 0x0

    :goto_7
    invoke-static {v13}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result v14

    const/4 v15, 0x4

    if-nez v14, :cond_1c

    add-int/2addr v10, v4

    if-gt v10, v5, :cond_1b

    const/4 v11, 0x2

    if-lt v10, v15, :cond_f

    iget v10, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v10, v11

    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    if-eqz v9, :cond_d

    neg-int v12, v12

    :cond_d
    iput v12, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    if-eqz v12, :cond_e

    goto :goto_8

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "year must not be zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-gtz v10, :cond_1a

    :goto_8
    iget v10, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    const v12, 0x116bcc11

    if-gt v10, v12, :cond_19

    const v12, -0x116bc45f

    if-lt v10, v12, :cond_18

    if-eq v13, v7, :cond_11

    if-eqz v9, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasYear()Z

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_d

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_11
    add-int/lit8 v9, v4, 0x1

    sub-int v10, v2, v9

    if-lt v10, v11, :cond_12

    invoke-static {v1, v9}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v10

    if-lt v10, v8, :cond_12

    const/16 v12, 0xc

    if-gt v10, v12, :cond_12

    iget v9, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v9, v15

    iput v9, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_M:I

    add-int/lit8 v4, v4, 0x3

    goto :goto_9

    :cond_12
    move v4, v9

    :goto_9
    if-ge v4, v2, :cond_16

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v7, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v9, v4, 0x1

    sub-int v10, v2, v9

    if-lt v10, v11, :cond_14

    invoke-static {v1, v9}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v10

    if-lt v10, v8, :cond_14

    const/16 v11, 0x1f

    if-gt v10, v11, :cond_14

    iget v9, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    add-int/lit8 v4, v4, 0x3

    goto :goto_a

    :cond_14
    move v4, v9

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasMonth()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasYear()Z

    move-result v9

    if-nez v9, :cond_15

    if-ge v4, v2, :cond_15

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_15

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_16
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasMonth()Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_d

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "year values not supported: too small, must be bigger than -292275295"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "year value not supported: too big, must be less than 292277265"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "year must be four digits (may pad with zeroes, e.g., 0560)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "year too long (up to 9 digits)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    if-eqz v11, :cond_1e

    add-int v14, v4, v10

    if-ge v14, v15, :cond_1d

    goto :goto_c

    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "year value starting with zero must be 4 or less digits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    :goto_c
    mul-int/lit8 v12, v12, 0xa

    invoke-static {v13}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_1f
    :goto_d
    const/16 v7, 0x18

    if-ge v4, v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasYear()Z

    move-result v9

    if-nez v9, :cond_20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasMonth()Z

    move-result v9

    if-nez v9, :cond_20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v9

    if-eqz v9, :cond_21

    :cond_20
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x54

    if-ne v9, v10, :cond_2a

    add-int/lit8 v4, v4, 0x1

    :cond_21
    add-int/lit8 v9, v4, 0x8

    if-lt v2, v9, :cond_29

    add-int/lit8 v10, v4, 0x2

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_29

    add-int/lit8 v10, v4, 0x5

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_29

    invoke-static {v1, v4}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    if-gt v6, v7, :cond_28

    add-int/lit8 v10, v4, 0x3

    invoke-static {v1, v10}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v10

    const/16 v11, 0x3c

    if-ge v10, v11, :cond_27

    add-int/lit8 v12, v4, 0x6

    invoke-static {v1, v12}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v12

    if-ge v12, v11, :cond_26

    sget-object v11, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    if-ge v9, v2, :cond_25

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_24

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_25

    :goto_e
    if-ge v4, v2, :cond_23

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_22

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_23
    :try_start_0
    new-instance v11, Ljava/math/BigDecimal;

    invoke-interface {v1, v9, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    :catchall_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_25
    :goto_f
    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    iput v6, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_m:I

    iput v12, v0, Lorg/apache/xmlbeans/GDate;->_s:I

    iput-object v11, v0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    goto :goto_10

    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "second must be between 00 and 59"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minute must be between 00 and 59"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "hour must be between 00 and 23"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "date and time must be separated by \'T\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    if-ne v1, v7, :cond_2e

    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_m:I

    if-nez v1, :cond_2d

    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_s:I

    if-nez v1, :cond_2d

    iget-object v1, v0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    sget-object v2, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Lorg/apache/xmlbeans/GDateBuilder;

    iget v10, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    iget v11, v0, Lorg/apache/xmlbeans/GDate;->_M:I

    iget v12, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    iget v13, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    iget v14, v0, Lorg/apache/xmlbeans/GDate;->_m:I

    iget v15, v0, Lorg/apache/xmlbeans/GDate;->_s:I

    iget-object v2, v0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    iget v4, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    iget v5, v0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    iget v6, v0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    move-object v9, v1

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-direct/range {v9 .. v19}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(IIIIIILjava/math/BigDecimal;III)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->normalize24h()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->getDay()I

    move-result v2

    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->getMonth()I

    move-result v2

    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_M:I

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->getYear()I

    move-result v1

    iput v1, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    :goto_11
    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    goto :goto_12

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    goto :goto_11

    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "if hour is 24, minutes, seconds and fraction must be 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2f

    return-void

    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid date"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 21

    .line 4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->isSet(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->isSet(I)Z

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->isSet(I)Z

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->isSet(I)Z

    move-result v9

    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->isSet(I)Z

    move-result v11

    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->isSet(I)Z

    move-result v13

    const/16 v14, 0x9

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v15

    const/16 v14, 0xc

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v16

    const/16 v14, 0xd

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v17

    const/16 v14, 0xe

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v18

    const/16 v14, 0xf

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v19

    const/16 v14, 0x10

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v20

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v5, :cond_0

    instance-of v5, v1, Ljava/util/GregorianCalendar;

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_0

    neg-int v3, v3

    :cond_0
    iget v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v5, v6

    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    :cond_1
    if-eqz v7, :cond_2

    iget v3, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_M:I

    :cond_2
    if-eqz v9, :cond_3

    iget v3, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    :cond_3
    sget-object v3, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    if-eqz v11, :cond_4

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0xc

    goto :goto_0

    :cond_4
    if-eqz v13, :cond_5

    if-eqz v15, :cond_5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    mul-int/lit8 v6, v6, 0xc

    add-int/2addr v5, v6

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/16 v7, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-eqz v16, :cond_6

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move v7, v6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    if-eqz v17, :cond_7

    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move v8, v6

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x3

    if-eqz v18, :cond_8

    const/16 v10, 0xe

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v10, v3

    invoke-static {v10, v11, v9}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v6, 0x1

    :cond_8
    if-eqz v6, :cond_9

    iget v6, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v6, v14

    iput v6, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    iput v7, v0, Lorg/apache/xmlbeans/GDate;->_m:I

    iput v8, v0, Lorg/apache/xmlbeans/GDate;->_s:I

    iput-object v3, v0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    :cond_9
    if-eqz v19, :cond_f

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v20, :cond_a

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v3, v5

    :cond_a
    iget v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v5, v2

    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    const/4 v5, -0x1

    if-nez v3, :cond_d

    iput v4, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    iput v4, v0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    iput v4, v0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_f

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_c

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_b

    goto :goto_3

    :cond_b
    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    goto :goto_3

    :cond_c
    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    goto :goto_3

    :cond_d
    if-gez v3, :cond_e

    const/4 v2, -0x1

    :cond_e
    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    mul-int v3, v3, v2

    const v1, 0x36ee80

    div-int v2, v3, v1

    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    mul-int v2, v2, v1

    sub-int/2addr v3, v2

    const v1, 0xea60

    div-int/2addr v3, v1

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    :cond_f
    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/GDate;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_h:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_m:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_s:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_D:I

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_M:I

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/GDate;->_CY:I

    :cond_4
    return-void
.end method

.method private static final _padFourAppend([CII)I
    .locals 4

    if-gez p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    aput-char v1, p0, p1

    neg-int p2, p2

    move p1, v0

    :cond_0
    const/16 v0, 0x2710

    if-lt p2, v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_1
    div-int/lit8 v0, p2, 0x64

    mul-int/lit8 v1, v0, 0x64

    sub-int/2addr p2, v1

    sget-object v1, Lorg/apache/xmlbeans/GDate;->_tensDigit:[C

    aget-char v2, v1, v0

    aput-char v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    sget-object v3, Lorg/apache/xmlbeans/GDate;->_onesDigit:[C

    aget-char v0, v3, v0

    aput-char v0, p0, v2

    add-int/lit8 v0, p1, 0x2

    aget-char v1, v1, p2

    aput-char v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget-char p2, v3, p2

    aput-char p2, p0, v0

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private static final _padTwoAppend([CII)I
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/GDate;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/xmlbeans/GDate;->_tensDigit:[C

    aget-char v0, v0, p2

    aput-char v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lorg/apache/xmlbeans/GDate;->_onesDigit:[C

    aget-char p2, v1, p2

    aput-char p2, p0, v0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public static final digitVal(C)I
    .locals 0

    add-int/lit8 p0, p0, -0x30

    return p0
.end method

.method private ensureCanonicalString()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->getTimeZoneSign()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasMonth()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasYear()Z

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->getFraction()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->getFraction()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/GDateBuilder;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->normalize()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    return-void
.end method

.method public static formatGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/lang/String;
    .locals 8

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0x21

    new-array v2, v2, [C

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v3

    const/16 v4, 0x2d

    if-nez v3, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_5

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/apache/xmlbeans/GDate;->_padFourAppend([CII)I

    move-result v3

    goto :goto_2

    :cond_3
    aput-char v4, v2, v1

    const/4 v3, 0x1

    :goto_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    :goto_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x54

    aput-char v6, v2, v3

    move v3, v5

    :cond_7
    :goto_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v5

    const/16 v6, 0x3a

    if-eqz v5, :cond_8

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    aput-char v6, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    aput-char v6, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    sget-object v5, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    if-eq v0, v5, :cond_8

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v5, v7, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    add-int/2addr v3, v0

    :cond_8
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 p0, v3, 0x1

    const/16 v0, 0x5a

    aput-char v0, v2, v3

    move v3, p0

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v3, 0x1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v5

    if-lez v5, :cond_a

    const/16 v4, 0x2b

    :cond_a
    aput-char v4, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v3

    invoke-static {v2, v0, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    aput-char v6, v2, v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result p0

    invoke-static {v2, v3, p0}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    :cond_b
    :goto_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static final isDigit(C)Z
    .locals 1

    add-int/lit8 p0, p0, -0x30

    int-to-char p0, p0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSpace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final timeZoneForGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/util/TimeZone;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lorg/apache/xmlbeans/GDate;->GMTZONE:Ljava/util/TimeZone;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    if-gez v0, :cond_2

    sget-object v0, Lorg/apache/xmlbeans/GDate;->MINUSZONE:[Ljava/util/TimeZone;

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result p0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/xmlbeans/GDate;->PLUSZONE:[Ljava/util/TimeZone;

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result p0

    aget-object p0, v0, p0

    :goto_0
    return-object p0

    :cond_3
    const/16 v0, 0x9

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x54

    aput-char v2, v0, v1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v1

    if-gez v1, :cond_4

    const/16 v1, 0x2d

    goto :goto_1

    :cond_4
    const/16 v1, 0x2b

    :goto_1
    const/4 v2, 0x3

    aput-char v1, v0, v2

    const/4 v1, 0x4

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    const/4 v1, 0x6

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method private static final twoDigit(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v0}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    invoke-static {p0}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x64

    return p0
.end method


# virtual methods
.method public add(Lorg/apache/xmlbeans/GDurationSpecification;)Lorg/apache/xmlbeans/GDate;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->addGDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    return-object p1
.end method

.method public canonicalString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDate;->ensureCanonicalString()V

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    return-object v0
.end method

.method public compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->compareGDate(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/GDate;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/GDate;->ensureCanonicalString()V

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    check-cast p1, Lorg/apache/xmlbeans/GDate;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDate;->canonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBuiltinTypeCode()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-static {v0}, Lorg/apache/xmlbeans/GDateBuilder;->btcForFlags(I)I

    move-result v0

    return v0
.end method

.method public getCalendar()Lorg/apache/xmlbeans/XmlCalendar;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/XmlCalendar;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/XmlCalendar;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->dateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getDay()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_D:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    return v0
.end method

.method public final getFraction()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getHour()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_h:I

    return v0
.end method

.method public getJulianDate()I
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->julianDateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v0

    return v0
.end method

.method public getMillisecond()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMinute()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_m:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_M:I

    return v0
.end method

.method public final getSecond()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_s:I

    return v0
.end method

.method public final getTimeZoneHour()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    return v0
.end method

.method public final getTimeZoneMinute()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    return v0
.end method

.method public final getTimeZoneSign()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_CY:I

    return v0
.end method

.method public final hasDate()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    const/16 v1, 0xe

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasDay()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasMonth()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasTime()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasTimeZone()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final hasYear()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDate;->ensureCanonicalString()V

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isImmutable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->isValidGDate(Lorg/apache/xmlbeans/GDateSpecification;)Z

    move-result v0

    return v0
.end method

.method public subtract(Lorg/apache/xmlbeans/GDurationSpecification;)Lorg/apache/xmlbeans/GDate;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->subtractGDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_string:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/GDate;->formatGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/GDate;->_string:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_string:Ljava/lang/String;

    return-object v0
.end method
