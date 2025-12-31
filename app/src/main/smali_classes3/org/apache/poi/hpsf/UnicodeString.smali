.class Lorg/apache/poi/hpsf/UnicodeString;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/UnicodeString;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    iput-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    .line 24
    .line 25
    add-int/lit8 v3, v1, -0x2

    .line 26
    .line 27
    aget-byte v3, v2, v3

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    aget-byte v1, v2, v1

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p1, "UnicodeString started at offset #"

    .line 42
    .line 43
    const-string v1, " is not NULL-terminated"

    .line 44
    .line 45
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public setJavaValue(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x4b0

    invoke-static {p1, v0}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    return-void
.end method

.method public toJavaString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v3, v2

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v3, v2

    shr-int/2addr v3, v1

    invoke-static {v2, v0, v3}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x5

    if-ne v3, v4, :cond_1

    sget-object v3, Lorg/apache/poi/hpsf/UnicodeString;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "String terminator (\\0) for UnicodeString property value not found.Continue without trimming and hope for the best."

    aput-object v4, v1, v0

    invoke-virtual {v3, v5, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_2

    sget-object v4, Lorg/apache/poi/hpsf/UnicodeString;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "String terminator (\\0) for UnicodeString property value occured before the end of string. Trimming and hope for the best."

    aput-object v6, v1, v0

    invoke-virtual {v4, v5, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method
