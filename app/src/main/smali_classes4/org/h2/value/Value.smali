.class public abstract Lorg/h2/value/Value;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/value/Value$ValueBlob;,
        Lorg/h2/value/Value$ValueClob;
    }
.end annotation


# static fields
.field public static final ARRAY:I = 0x11

.field public static final BLOB:I = 0xf

.field public static final BOOLEAN:I = 0x1

.field public static final BYTE:I = 0x2

.field public static final BYTES:I = 0xc

.field public static final CLOB:I = 0x10

.field public static final DATE:I = 0xa

.field public static final DECIMAL:I = 0x6

.field public static final DOUBLE:I = 0x7

.field public static final ENUM:I = 0x19

.field public static final FLOAT:I = 0x8

.field public static final GEOMETRY:I = 0x16

.field public static final INT:I = 0x4

.field public static final JAVA_OBJECT:I = 0x13

.field public static final LONG:I = 0x5

.field private static final MAX_LONG_DECIMAL:Ljava/math/BigDecimal;

.field private static final MIN_LONG_DECIMAL:Ljava/math/BigDecimal;

.field public static final NULL:I = 0x0

.field public static final RESULT_SET:I = 0x12

.field public static final SHORT:I = 0x3

.field public static final STRING:I = 0xd

.field public static final STRING_FIXED:I = 0x15

.field public static final STRING_IGNORECASE:I = 0xe

.field public static final TIME:I = 0x9

.field public static final TIMESTAMP:I = 0xb

.field public static final TIMESTAMP_TZ:I = 0x18

.field public static final TYPE_COUNT:I = 0x19

.field public static final UNKNOWN:I = -0x1

.field public static final UUID:I = 0x14

.field private static softCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/h2/value/Value;->MAX_LONG_DECIMAL:Ljava/math/BigDecimal;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/h2/value/Value;->MIN_LONG_DECIMAL:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->OBJECT_CACHE:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/h2/value/Value;->hashCode()I

    move-result v0

    sget-object v1, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    :cond_0
    sget-object v1, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/h2/value/Value;

    if-nez v1, :cond_1

    sget v1, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_SIZE:I

    new-array v1, v1, [Lorg/h2/value/Value;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    :cond_1
    sget v2, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_SIZE:I

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getType()I

    move-result v3

    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    aput-object p0, v1, v0

    :cond_3
    return-object p0
.end method

.method public static clearCache()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static convertToByte(J)B
    .locals 3

    const-wide/16 v0, 0x7f

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x80

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    long-to-int p1, p0

    int-to-byte p0, p1

    return p0

    :cond_0
    const/16 v0, 0x55f3

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToInt(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    long-to-int p1, p0

    return p1

    :cond_0
    const/16 v0, 0x55f3

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToLong(D)J
    .locals 3

    .line 1
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/16 v0, 0x55f3

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToLong(Ljava/math/BigDecimal;)J
    .locals 2

    .line 2
    sget-object v0, Lorg/h2/value/Value;->MAX_LONG_DECIMAL:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/h2/value/Value;->MIN_LONG_DECIMAL:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 v0, 0x55f3

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToShort(J)S
    .locals 3

    const-wide/16 v0, 0x7fff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x8000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    long-to-int p1, p0

    int-to-short p0, p1

    return p0

    :cond_0
    const/16 v0, 0x55f3

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getHigherOrder(II)I
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const v0, 0xc354

    if-eq p0, p1, :cond_6

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    :cond_1
    if-ne p0, p1, :cond_2

    return p0

    :cond_2
    invoke-static {p0}, Lorg/h2/value/Value;->getOrder(I)I

    move-result v0

    invoke-static {p1}, Lorg/h2/value/Value;->getOrder(I)I

    move-result v1

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move p0, p1

    :goto_0
    return p0

    :cond_4
    const-string p0, "?, NULL"

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_5
    const-string p0, "NULL, ?"

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "?, ?"

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getOrder(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/h2/api/CustomDataTypesHandler;->getDataTypeOrder(I)I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_1
    const p0, 0xcb20

    return p0

    :pswitch_2
    const p0, 0x84d0

    return p0

    :pswitch_3
    const p0, 0xabe0

    return p0

    :pswitch_4
    const/16 p0, 0x2ee0

    return p0

    :pswitch_5
    const p0, 0xa7f8

    return p0

    :pswitch_6
    const p0, 0xa410

    return p0

    :pswitch_7
    const p0, 0xc738

    return p0

    :pswitch_8
    const p0, 0xc350

    return p0

    :pswitch_9
    const/16 p0, 0x2af8

    return p0

    :pswitch_a
    const p0, 0xa028

    return p0

    :pswitch_b
    const/16 p0, 0x32c8

    return p0

    :pswitch_c
    const/16 p0, 0x2710

    return p0

    :pswitch_d
    const p0, 0x9c40

    return p0

    :pswitch_e
    const/16 p0, 0x7d00

    return p0

    :pswitch_f
    const/16 p0, 0x7918

    return p0

    :pswitch_10
    const/16 p0, 0x7530

    return p0

    :pswitch_11
    const/16 p0, 0x6590

    return p0

    :pswitch_12
    const/16 p0, 0x6978

    return p0

    :pswitch_13
    const/16 p0, 0x61a8

    return p0

    :pswitch_14
    const/16 p0, 0x5dc0

    return p0

    :pswitch_15
    const/16 p0, 0x59d8

    return p0

    :pswitch_16
    const/16 p0, 0x55f0

    return p0

    :pswitch_17
    const/16 p0, 0x5208

    return p0

    :pswitch_18
    const/16 p0, 0x4e20

    return p0

    :pswitch_19
    const/16 p0, 0x7d0

    return p0

    :pswitch_1a
    const/16 p0, 0x3e8

    return p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "+"

    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public checkPrecision(J)Z
    .locals 3

    invoke-virtual {p0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
.end method

.method public final compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/h2/value/Value;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lorg/h2/value/Value;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public final compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/h2/value/Value;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public convertScale(ZI)Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public convertTo(I)Lorg/h2/value/Value;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    const/4 v5, 0x5

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/16 v12, 0x8

    const/4 v13, 0x2

    const-string v2, "type="

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v3

    if-ne v3, v0, :cond_0

    return-object v1

    :cond_0
    const/16 v3, 0xf

    const/16 v4, 0x5602

    if-eq v0, v3, :cond_4d

    const/16 v6, 0x16

    const/16 v9, 0x13

    if-eq v0, v6, :cond_49

    const/16 v14, 0x19

    if-eq v0, v14, :cond_47

    if-eq v0, v9, :cond_44

    const/16 v14, 0x14

    if-eq v0, v14, :cond_3f

    const-wide/16 v14, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v14

    if-eq v14, v13, :cond_7

    if-eq v14, v10, :cond_6

    if-eq v14, v11, :cond_5

    if-eq v14, v5, :cond_4

    if-eq v14, v3, :cond_3

    if-eq v14, v6, :cond_2

    if-eq v14, v7, :cond_1

    if-eq v14, v9, :cond_3

    const/16 v5, 0x14

    if-eq v14, v5, :cond_2

    goto/16 :goto_6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    const/16 v0, 0x38

    shr-long v14, v2, v0

    long-to-int v0, v14

    int-to-byte v0, v0

    const/16 v6, 0x30

    shr-long v14, v2, v6

    long-to-int v6, v14

    int-to-byte v6, v6

    const/16 v9, 0x28

    shr-long v14, v2, v9

    long-to-int v9, v14

    int-to-byte v9, v9

    const/16 v14, 0x20

    shr-long v14, v2, v14

    long-to-int v15, v14

    int-to-byte v14, v15

    shr-long v4, v2, v7

    long-to-int v5, v4

    int-to-byte v4, v5

    shr-long v7, v2, v8

    long-to-int v5, v7

    int-to-byte v5, v5

    shr-long v7, v2, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    long-to-int v3, v2

    int-to-byte v2, v3

    new-array v3, v12, [B

    const/4 v8, 0x0

    aput-byte v0, v3, v8

    const/4 v0, 0x1

    aput-byte v6, v3, v0

    aput-byte v9, v3, v13

    aput-byte v14, v3, v10

    aput-byte v4, v3, v11

    const/4 v0, 0x5

    aput-byte v5, v3, v0

    const/4 v0, 0x6

    aput-byte v7, v3, v0

    const/4 v0, 0x7

    aput-byte v2, v3, v0

    invoke-static {v3}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    int-to-byte v0, v0

    new-array v5, v11, [B

    const/4 v6, 0x0

    aput-byte v2, v5, v6

    const/4 v2, 0x1

    aput-byte v3, v5, v2

    aput-byte v4, v5, v13

    aput-byte v0, v5, v10

    invoke-static {v5}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    int-to-byte v0, v0

    new-array v3, v13, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    const/4 v2, 0x1

    aput-byte v0, v3, v2

    invoke-static {v3}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    invoke-static {v2}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_a

    const/16 v5, 0xa

    if-eq v4, v5, :cond_9

    if-eq v4, v7, :cond_8

    goto/16 :goto_6

    :cond_8
    move-object v0, v1

    check-cast v0, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampTimeZone;->getDateValue()J

    move-result-wide v2

    move-object v0, v1

    check-cast v0, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeNanos()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    :cond_9
    move-object v0, v1

    check-cast v0, Lorg/h2/value/ValueDate;

    invoke-virtual {v0}, Lorg/h2/value/ValueDate;->getDateValue()J

    move-result-wide v2

    invoke-static {v2, v3, v14, v15}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    :cond_a
    move-object v0, v1

    check-cast v0, Lorg/h2/value/ValueTime;

    invoke-virtual {v0}, Lorg/h2/value/ValueTime;->getNanos()J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3}, Lorg/h2/util/DateTimeUtils;->normalizeTimestamp(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_d

    const/16 v5, 0xb

    if-eq v4, v5, :cond_c

    if-eq v4, v7, :cond_b

    goto/16 :goto_6

    :cond_b
    move-object v0, v1

    check-cast v0, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampTimeZone;->getDateValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    :cond_c
    move-object v0, v1

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getDateValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    :cond_d
    const-wide/16 v2, 0x7b2

    const/4 v0, 0x1

    invoke-static {v2, v3, v0, v0}, Lorg/h2/util/DateTimeUtils;->dateValue(JII)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_10

    const/16 v5, 0xb

    if-eq v4, v5, :cond_f

    if-eq v4, v7, :cond_e

    goto/16 :goto_6

    :cond_e
    move-object v0, v1

    check-cast v0, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    :cond_f
    move-object v0, v1

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getTimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {v14, v15}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    if-eq v4, v7, :cond_12

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    long-to-float v0, v2

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_11
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    if-eq v4, v12, :cond_15

    if-eq v4, v7, :cond_14

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_13
    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1f

    if-eq v4, v13, :cond_1e

    if-eq v4, v10, :cond_1d

    if-eq v4, v11, :cond_1c

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1b

    const-string v5, ""

    const/4 v6, 0x7

    if-eq v4, v6, :cond_19

    if-eq v4, v12, :cond_17

    if-eq v4, v7, :cond_16

    goto/16 :goto_6

    :cond_16
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const-wide/16 v2, 0x1

    goto :goto_2

    :cond_20
    move-wide v2, v14

    :goto_2
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    if-eq v4, v13, :cond_29

    if-eq v4, v10, :cond_28

    if-eq v4, v11, :cond_27

    const/4 v5, 0x6

    if-eq v4, v5, :cond_26

    const/4 v5, 0x7

    if-eq v4, v5, :cond_25

    if-eq v4, v12, :cond_24

    const/16 v5, 0xc

    if-eq v4, v5, :cond_22

    if-eq v4, v7, :cond_21

    goto/16 :goto_6

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    if-ne v2, v12, :cond_23

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/h2/util/Utils;->readLong([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/Value;->convertToLong(Ljava/math/BigDecimal;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-wide/16 v2, 0x1

    goto :goto_3

    :cond_2b
    move-wide v2, v14

    :goto_3
    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    if-eq v4, v13, :cond_34

    if-eq v4, v10, :cond_33

    const/4 v5, 0x5

    if-eq v4, v5, :cond_32

    const/4 v5, 0x6

    if-eq v4, v5, :cond_31

    const/4 v5, 0x7

    if-eq v4, v5, :cond_30

    if-eq v4, v12, :cond_2f

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2e

    if-eq v4, v7, :cond_2d

    const/16 v5, 0x19

    if-eq v4, v5, :cond_2c

    goto/16 :goto_6

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/Value;->convertToLong(Ljava/math/BigDecimal;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_39

    if-eq v4, v13, :cond_38

    const/16 v5, 0xc

    if-eq v4, v5, :cond_37

    if-eq v4, v7, :cond_36

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_6

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/Value;->convertToLong(Ljava/math/BigDecimal;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :cond_38
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3c

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3b

    if-eq v4, v7, :cond_3a

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_6

    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/Value;->convertToLong(Ljava/math/BigDecimal;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    if-eq v4, v9, :cond_3e

    const/16 v5, 0x14

    if-eq v4, v5, :cond_3e

    if-eq v4, v7, :cond_3e

    packed-switch v4, :pswitch_data_5

    goto/16 :goto_6

    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getSignum()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v14, 0x1

    goto :goto_4

    :cond_3d
    const/4 v14, 0x0

    :goto_4
    invoke-static {v14}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    :cond_3e
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_43

    if-eq v4, v9, :cond_41

    if-eq v4, v7, :cond_40

    goto/16 :goto_6

    :cond_40
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/UUID;

    if-eqz v2, :cond_42

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/h2/value/ValueUuid;->get(JJ)Lorg/h2/value/ValueUuid;

    move-result-object v0

    return-object v0

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueUuid;->get([B)Lorg/h2/value/ValueUuid;

    move-result-object v0

    return-object v0

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_46

    if-eq v4, v3, :cond_46

    if-eq v4, v7, :cond_45

    goto :goto_6

    :cond_45
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_46
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object v0

    return-object v0

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    if-eq v4, v11, :cond_48

    const/16 v5, 0xd

    if-eq v4, v5, :cond_48

    goto :goto_5

    :cond_48
    return-object v1

    :cond_49
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4c

    if-eq v4, v9, :cond_4a

    if-eq v4, v7, :cond_4b

    goto :goto_6

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/DataType;->isGeometry(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {v0}, Lorg/h2/value/ValueGeometry;->getFromGeometry(Ljava/lang/Object;)Lorg/h2/value/ValueGeometry;

    move-result-object v0

    return-object v0

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueGeometry;->get([B)Lorg/h2/value/ValueGeometry;

    move-result-object v0

    return-object v0

    :cond_4d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_55

    if-eq v4, v7, :cond_54

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    packed-switch v0, :pswitch_data_6

    :pswitch_26
    sget-object v3, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v3, :cond_4e

    invoke-interface {v3, v1, v0}, Lorg/h2/api/CustomDataTypesHandler;->convert(Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_27
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestampTimeZone;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object v0

    return-object v0

    :pswitch_28
    invoke-static {v4}, Lorg/h2/value/ValueGeometry;->get(Ljava/lang/String;)Lorg/h2/value/ValueGeometry;

    move-result-object v0

    return-object v0

    :pswitch_29
    invoke-static {v4}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object v0

    return-object v0

    :pswitch_2a
    invoke-static {v4}, Lorg/h2/value/ValueUuid;->get(Ljava/lang/String;)Lorg/h2/value/ValueUuid;

    move-result-object v0

    return-object v0

    :pswitch_2b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object v0

    return-object v0

    :pswitch_2c
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    const-string v3, "X"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v0, v3, v6, v5, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object v0

    return-object v0

    :pswitch_2d
    invoke-static {v4}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v0

    return-object v0

    :pswitch_2e
    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v8, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :pswitch_2f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :pswitch_30
    invoke-static {v4}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object v0

    return-object v0

    :pswitch_31
    invoke-static {v4}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :pswitch_32
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    :pswitch_33
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestamp;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    :pswitch_34
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDate;->parse(Ljava/lang/String;)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    :pswitch_35
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTime;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    :pswitch_36
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_37
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :pswitch_38
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    :pswitch_39
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :pswitch_3a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :pswitch_3b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    :pswitch_3c
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :pswitch_3d
    const-string v0, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "t"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "y"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_4f
    const/4 v0, 0x1

    goto :goto_9

    :cond_50
    const-string v0, "false"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "f"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "no"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_51
    const/4 v0, 0x0

    goto :goto_8

    :cond_52
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_53

    const/4 v14, 0x1

    goto :goto_7

    :cond_53
    const/4 v14, 0x0

    :goto_7
    invoke-static {v14}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    :goto_8
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    :goto_9
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    :pswitch_3e
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    :cond_54
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5602

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_55
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5602

    invoke-static {v3, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1c
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
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
        :pswitch_26
        :pswitch_27
        :pswitch_31
    .end packed-switch
.end method

.method public copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public copyToResult()Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public copyToTemp()Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public getBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueDecimal;

    invoke-virtual {v0}, Lorg/h2/value/ValueDecimal;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueBoolean;

    invoke-virtual {v0}, Lorg/h2/value/ValueBoolean;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getByte()B
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueByte;

    invoke-virtual {v0}, Lorg/h2/value/ValueByte;->getByte()B

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueBytes;

    invoke-virtual {v0}, Lorg/h2/value/ValueBytes;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesNoCopy()[B
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueBytes;

    invoke-virtual {v0}, Lorg/h2/value/ValueBytes;->getBytesNoCopy()[B

    move-result-object v0

    return-object v0
.end method

.method public getDataHandler()Lorg/h2/store/DataHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate()Ljava/sql/Date;
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueDate;

    invoke-virtual {v0}, Lorg/h2/value/ValueDate;->getDate()Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDisplaySize()I
.end method

.method public getDouble()D
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueDouble;

    invoke-virtual {v0}, Lorg/h2/value/ValueDouble;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueFloat;

    invoke-virtual {v0}, Lorg/h2/value/ValueFloat;->getFloat()F

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getInt()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueInt;

    invoke-virtual {v0}, Lorg/h2/value/ValueInt;->getInt()I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueLong;

    invoke-virtual {v0}, Lorg/h2/value/ValueLong;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemory()I
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    iget v0, v0, Lorg/h2/value/DataType;->memory:I

    return v0
.end method

.method public abstract getObject()Ljava/lang/Object;
.end method

.method public abstract getPrecision()J
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2

    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 6

    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v3

    invoke-virtual {p0}, Lorg/h2/value/Value;->getScale()I

    move-result v4

    const-string v5, "X"

    invoke-virtual {v0, v5, v2, v3, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    invoke-virtual {p0}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract getSQL()Ljava/lang/String;
.end method

.method public getScale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShort()S
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueShort;

    invoke-virtual {v0}, Lorg/h2/value/ValueShort;->getShort()S

    move-result v0

    return v0
.end method

.method public getSignum()I
    .locals 1

    const-string v0, "SIGNUM"

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getSmall()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public getTableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTime()Ljava/sql/Time;
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueTime;

    invoke-virtual {v0}, Lorg/h2/value/ValueTime;->getTime()Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTraceSQL()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public abstract hashCode()I
.end method

.method public isLinkedToTable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "%"

    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "*"

    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 1

    const-string v0, "NEG"

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method

.method public abstract set(Ljava/sql/PreparedStatement;I)V
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v1

    iget-object v1, v1, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
