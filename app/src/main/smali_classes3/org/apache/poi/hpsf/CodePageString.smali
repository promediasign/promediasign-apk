.class Lorg/apache/poi/hpsf/CodePageString;
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

    const-class v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/CodePageString;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJavaValue(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x4e4

    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-static {v3, p1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v2, :cond_1

    sget-object v2, Lorg/apache/poi/hpsf/CodePageString;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "String terminator (\\0) for CodePageString property value not found.Continue without trimming and hope for the best."

    aput-object v3, v0, v1

    invoke-virtual {v2, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    if-eq v3, v2, :cond_2

    sget-object v2, Lorg/apache/poi/hpsf/CodePageString;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "String terminator (\\0) for CodePageString property value occured before the end of string. Trimming and hope for the best."

    aput-object v5, v0, v1

    invoke-virtual {v2, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    iput-object v3, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    .line 21
    .line 22
    sub-int/2addr v2, v0

    .line 23
    aget-byte v2, v3, v2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const-string v2, "CodePageString started at offset #"

    .line 28
    .line 29
    const-string v3, " is not NULL-terminated"

    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lorg/apache/poi/hpsf/CodePageString;->LOG:Lorg/apache/poi/util/POILogger;

    .line 36
    .line 37
    const/4 v3, 0x5

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v1, v0, v4

    .line 42
    .line 43
    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public setJavaValue(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x4e4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    return-void
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method
