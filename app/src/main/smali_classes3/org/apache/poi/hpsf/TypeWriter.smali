.class public Lorg/apache/poi/hpsf/TypeWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeToStream(Ljava/io/OutputStream;D)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putDouble(DLjava/io/OutputStream;)V

    const/16 p0, 0x8

    return p0
.end method

.method public static writeToStream(Ljava/io/OutputStream;I)I
    .locals 0

    .line 2
    invoke-static {p1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    const/4 p0, 0x4

    return p0
.end method

.method public static writeToStream(Ljava/io/OutputStream;J)I
    .locals 0

    .line 3
    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putLong(JLjava/io/OutputStream;)V

    const/16 p0, 0x8

    return p0
.end method

.method public static writeToStream(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)I
    .locals 3

    .line 4
    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    return v0
.end method

.method public static writeToStream(Ljava/io/OutputStream;S)I
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    const/4 p0, 0x2

    return p0
.end method

.method public static writeToStream(Ljava/io/OutputStream;[Lorg/apache/poi/hpsf/Property;I)V
    .locals 5

    .line 6
    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    invoke-virtual {v2, p2}, Lorg/apache/poi/hpsf/Property;->getSize(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    long-to-int v3, v2

    int-to-long v2, v3

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v2, v3, v1, p2}, Lorg/apache/poi/hpsf/VariantSupport;->write(Ljava/io/OutputStream;JLjava/lang/Object;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static writeUIntToStream(Ljava/io/OutputStream;J)I
    .locals 7

    const-wide v0, -0x100000000L

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " cannot be represented by 4 bytes."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    const/4 p0, 0x4

    return p0
.end method

.method public static writeUShortToStream(Ljava/io/OutputStream;I)V
    .locals 2

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1, p0}, Lorg/apache/poi/util/LittleEndian;->putUShort(ILjava/io/OutputStream;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    .line 11
    .line 12
    const-string v0, "Value "

    .line 13
    .line 14
    const-string v1, " cannot be represented by 2 bytes."

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method
