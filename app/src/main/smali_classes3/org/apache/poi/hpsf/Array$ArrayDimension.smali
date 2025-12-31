.class Lorg/apache/poi/hpsf/Array$ArrayDimension;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpsf/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayDimension"
.end annotation


# instance fields
.field private _indexOffset:I

.field private _size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hpsf/Array$ArrayDimension;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_size:J

    return-wide v0
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_size:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_indexOffset:I

    return-void
.end method
