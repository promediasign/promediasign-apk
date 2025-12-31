.class Lorg/apache/poi/hpsf/ClipboardData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _format:I

.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/ClipboardData;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

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
    const/4 v3, 0x4

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    const-string p1, "ClipboardData at offset "

    .line 14
    .line 15
    const-string v2, " size less than 4 bytes (doesn\'t even have format field!). Setting to format == 0 and hope for the best"

    .line 16
    .line 17
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v1, Lorg/apache/poi/hpsf/ClipboardData;->LOG:Lorg/apache/poi/util/POILogger;

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    const/4 v3, 0x1

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p1, v3, v0

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    .line 33
    .line 34
    new-array p1, v0, [B

    .line 35
    .line 36
    iput-object p1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    .line 44
    .line 45
    sub-int/2addr v2, v3

    .line 46
    new-array v0, v2, [B

    .line 47
    .line 48
    iput-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    iget v2, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    iget-object v2, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
