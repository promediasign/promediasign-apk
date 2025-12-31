.class Lorg/apache/poi/hpsf/TypedPropertyValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _type:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    iput-object p2, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method public static skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/hpsf/TypedPropertyValue;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TypedPropertyValue padding at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MUST be 0, but it\'s value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x5

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    return-void
.end method

.method public readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5

    iget v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x101e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x101f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1047

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1048

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown (possibly, incorrect) TypedPropertyValue type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    const/16 p1, 0x9

    new-array p1, p1, [B

    const/4 v2, 0x0

    const/16 v3, 0x8

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v4, v1, v2

    if-gt v3, v0, :cond_0

    aput-byte v4, p1, v3

    :cond_0
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result p1

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUByte()I

    move-result p1

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_3

    :sswitch_0
    new-instance v0, Lorg/apache/poi/hpsf/Array;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Array;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Array;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    :sswitch_1
    new-instance v0, Lorg/apache/poi/hpsf/VersionedStream;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/VersionedStream;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/VersionedStream;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    :sswitch_2
    new-instance v0, Lorg/apache/poi/hpsf/GUID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/GUID;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/GUID;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_3

    :sswitch_3
    new-instance v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClipboardData;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/ClipboardData;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/IndirectPropertyName;-><init>()V

    :goto_5
    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/CodePageString;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    :sswitch_5
    new-instance v0, Lorg/apache/poi/hpsf/Blob;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Blob;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Blob;->read(Lorg/apache/poi/util/LittleEndianInput;)V

    goto :goto_1

    :sswitch_6
    new-instance v0, Lorg/apache/poi/hpsf/Filetime;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Filetime;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Filetime;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    :sswitch_7
    new-instance v0, Lorg/apache/poi/hpsf/Decimal;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Decimal;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Decimal;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lorg/apache/poi/hpsf/Date;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Date;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Date;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lorg/apache/poi/hpsf/Currency;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Currency;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Currency;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_3

    :pswitch_8
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_b
    const/4 p1, 0x0

    goto/16 :goto_3

    :cond_2
    :pswitch_c
    :sswitch_8
    new-instance v1, Lorg/apache/poi/hpsf/Vector;

    and-int/lit16 v0, v0, 0xfff

    int-to-short v0, v0

    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/Vector;-><init>(S)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/hpsf/Vector;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto :goto_6

    :cond_3
    new-instance v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/UnicodeString;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/UnicodeString;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto/16 :goto_1

    :cond_4
    :pswitch_d
    new-instance v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/CodePageString;-><init>()V

    goto :goto_5

    :cond_5
    new-instance v0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/VariantBool;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/VariantBool;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto/16 :goto_1

    :cond_6
    :pswitch_e
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v0

    goto/16 :goto_2

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_7
        0x40 -> :sswitch_6
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_4
        0x44 -> :sswitch_4
        0x45 -> :sswitch_4
        0x46 -> :sswitch_5
        0x47 -> :sswitch_3
        0x48 -> :sswitch_2
        0x49 -> :sswitch_1
        0x1040 -> :sswitch_8
        0x2002 -> :sswitch_0
        0x2003 -> :sswitch_0
        0x2004 -> :sswitch_0
        0x2005 -> :sswitch_0
        0x2006 -> :sswitch_0
        0x2007 -> :sswitch_0
        0x2008 -> :sswitch_0
        0x200a -> :sswitch_0
        0x200b -> :sswitch_0
        0x200c -> :sswitch_0
        0x200e -> :sswitch_0
        0x2010 -> :sswitch_0
        0x2011 -> :sswitch_0
        0x2012 -> :sswitch_0
        0x2013 -> :sswitch_0
        0x2016 -> :sswitch_0
        0x2017 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1002
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100a
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1010
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
