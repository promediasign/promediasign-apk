.class public Lorg/apache/poi/hpsf/VariantSupport;
.super Lorg/apache/poi/hpsf/Variant;
.source "SourceFile"


# static fields
.field public static final SUPPORTED_TYPES:[I

.field private static logUnsupportedTypes:Z

.field private static final logger:Lorg/apache/poi/util/POILogger;

.field private static final paddingBytes:[B

.field private static unsupportedMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/hpsf/VariantSupport;->SUPPORTED_TYPES:[I

    const-class v1, Lorg/apache/poi/hpsf/VariantSupport;

    invoke-static {v1}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hpsf/VariantSupport;->logger:Lorg/apache/poi/util/POILogger;

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->paddingBytes:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x14
        0x5
        0x40
        0x1e
        0x1f
        0x47
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hpsf/Variant;-><init>()V

    return-void
.end method

.method public static codepageToEncoding(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLogUnsupportedTypes()Z
    .locals 1

    sget-boolean v0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    return v0
.end method

.method public static read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;IJI)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    new-instance v1, Lorg/apache/poi/hpsf/TypedPropertyValue;

    long-to-int v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    const/16 p1, 0xb

    if-eq v2, p1, :cond_5

    const/16 p1, 0x40

    if-eq v2, p1, :cond_4

    const/16 p1, 0x47

    if-eq v2, p1, :cond_3

    const/4 p1, 0x2

    if-eq v2, p1, :cond_2

    const/4 p1, 0x3

    if-eq v2, p1, :cond_6

    const/4 p1, 0x4

    if-eq v2, p1, :cond_6

    const/4 p1, 0x5

    if-eq v2, p1, :cond_6

    const/16 p1, 0x1e

    if-eq v2, p1, :cond_1

    const/16 p1, 0x1f

    if-eq v2, p1, :cond_0

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->setReadIndex(I)V

    new-array p4, p1, [B

    invoke-virtual {p0, p4, v3, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    new-instance p0, Lorg/apache/poi/hpsf/ReadingNotSupportedException;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/hpsf/ReadingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/UnicodeString;->toJavaString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-virtual {p0, p4}, Lorg/apache/poi/hpsf/CodePageString;->getJavaValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClipboardData;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/Filetime;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Filetime;->getJavaValue()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/VariantBool;->getValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    :pswitch_0
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p4, p1, [B

    invoke-virtual {p0, p4, v3, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    new-instance p0, Lorg/apache/poi/hpsf/ReadingNotSupportedException;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/hpsf/ReadingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static read([BIIJI)Ljava/lang/Object;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/poi/hpsf/VariantSupport;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;IJI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setLogUnsupportedTypes(Z)V
    .locals 0

    sput-boolean p0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    return-void
.end method

.method public static write(Ljava/io/OutputStream;JLjava/lang/Object;I)I
    .locals 11

    long-to-int v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, -0x1

    if-eqz v0, :cond_10

    const/16 v5, 0xb

    const/4 v6, 0x2

    if-eq v0, v5, :cond_d

    const/16 v5, 0x40

    if-eq v0, v5, :cond_b

    const/16 v7, 0x47

    if-eq v0, v7, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v7, 0x5

    const/16 v8, 0x8

    if-eq v0, v7, :cond_6

    const/16 v7, 0x1e

    if-eq v0, v7, :cond_5

    const/16 p4, 0x1f

    if-eq v0, p4, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_f

    instance-of p4, p3, Ljava/math/BigInteger;

    if-eqz p4, :cond_0

    move-object p4, p3

    check-cast p4, Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p4

    :goto_0
    invoke-virtual {p4}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, v5, :cond_3

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p4

    new-array v0, v8, [B

    array-length v5, p4

    array-length v6, p4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-byte v9, p4, v7

    if-gt v5, v8, :cond_1

    add-int/lit8 v10, v5, -0x1

    aput-byte v9, v0, v10

    :cond_1
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    const/16 v6, 0x8

    goto/16 :goto_9

    :cond_3
    new-instance p0, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p0

    :pswitch_1
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, p0}, Lorg/apache/poi/util/LittleEndian;->putLong(JLjava/io/OutputStream;)V

    goto :goto_2

    :pswitch_2
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    :goto_3
    invoke-static {v5, v6, p0}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    :goto_4
    const/4 v6, 0x4

    goto/16 :goto_9

    :pswitch_3
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-static {p4, p0}, Lorg/apache/poi/util/LittleEndian;->putUShort(ILjava/io/OutputStream;)V

    goto/16 :goto_9

    :cond_4
    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_f

    new-instance p4, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-direct {p4}, Lorg/apache/poi/hpsf/UnicodeString;-><init>()V

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Lorg/apache/poi/hpsf/UnicodeString;->setJavaValue(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lorg/apache/poi/hpsf/UnicodeString;->write(Ljava/io/OutputStream;)I

    move-result v6

    goto/16 :goto_9

    :cond_5
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_f

    new-instance v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/CodePageString;-><init>()V

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, p4}, Lorg/apache/poi/hpsf/CodePageString;->setJavaValue(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/hpsf/CodePageString;->write(Ljava/io/OutputStream;)I

    move-result v6

    goto/16 :goto_9

    :cond_6
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6, p0}, Lorg/apache/poi/util/LittleEndian;->putDouble(DLjava/io/OutputStream;)V

    goto :goto_2

    :cond_7
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    :goto_5
    invoke-static {p4, p0}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    goto :goto_4

    :cond_8
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    goto :goto_5

    :cond_9
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->shortValue()S

    move-result p4

    invoke-static {p0, p4}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    goto :goto_9

    :cond_a
    instance-of p4, p3, [B

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, [B

    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write([B)V

    array-length v6, p4

    goto :goto_9

    :cond_b
    instance-of p4, p3, Ljava/util/Date;

    if-eqz p4, :cond_c

    new-instance p4, Lorg/apache/poi/hpsf/Filetime;

    move-object v0, p3

    check-cast v0, Ljava/util/Date;

    invoke-direct {p4, v0}, Lorg/apache/poi/hpsf/Filetime;-><init>(Ljava/util/Date;)V

    goto :goto_6

    :cond_c
    new-instance p4, Lorg/apache/poi/hpsf/Filetime;

    invoke-direct {p4}, Lorg/apache/poi/hpsf/Filetime;-><init>()V

    :goto_6
    invoke-virtual {p4, p0}, Lorg/apache/poi/hpsf/Filetime;->write(Ljava/io/OutputStream;)I

    move-result v6

    goto :goto_9

    :cond_d
    instance-of p4, p3, Ljava/lang/Boolean;

    if-eqz p4, :cond_f

    move-object p4, p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_e

    const/16 p4, 0xff

    goto :goto_7

    :cond_e
    const/4 p4, 0x0

    :goto_7
    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v6, -0x1

    goto :goto_9

    :cond_10
    const-wide/16 v5, 0x0

    goto/16 :goto_3

    :goto_9
    if-ne v6, v4, :cond_12

    instance-of p4, p3, [B

    if-eqz p4, :cond_11

    move-object p4, p3

    check-cast p4, [B

    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write([B)V

    array-length v6, p4

    new-instance p4, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    invoke-direct {p4, p1, p2, p3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    invoke-static {p4}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    goto :goto_a

    :cond_11
    new-instance p0, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p0

    :cond_12
    :goto_a
    and-int/lit8 p1, v6, 0x3

    sub-int/2addr v3, p1

    and-int/lit8 p1, v3, 0x3

    sget-object p2, Lorg/apache/poi/hpsf/VariantSupport;->paddingBytes:[B

    invoke-virtual {p0, p2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v6, p1

    return v6

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V
    .locals 4

    invoke-static {}, Lorg/apache/poi/hpsf/VariantSupport;->isLogUnsupportedTypes()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/VariantTypeException;->getVariantType()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x7

    invoke-virtual {v1, p0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    sget-object p0, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public isSupportedType(I)Z
    .locals 5

    sget-object v0, Lorg/apache/poi/hpsf/VariantSupport;->SUPPORTED_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
