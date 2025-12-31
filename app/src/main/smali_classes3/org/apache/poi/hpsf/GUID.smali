.class Lorg/apache/poi/hpsf/GUID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _data1:I

.field private _data2:S

.field private _data3:S

.field private _data4:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/GUID;->_data1:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hpsf/GUID;->_data2:S

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hpsf/GUID;->_data3:S

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/GUID;->_data4:J

    return-void
.end method
