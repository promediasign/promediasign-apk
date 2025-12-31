.class Lorg/apache/poi/hpsf/Array$ArrayHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpsf/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayHeader"
.end annotation


# instance fields
.field private _dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

.field private _type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/hpsf/Array$ArrayHeader;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    return p0
.end method


# virtual methods
.method public getNumberOfScalarValues()J
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    array-length v1, v0

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/apache/poi/hpsf/Array$ArrayDimension;->access$000(Lorg/apache/poi/hpsf/Array$ArrayDimension;)J

    move-result-wide v5

    mul-long v2, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    const-wide/16 v2, 0x1f

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    long-to-int v1, v0

    new-array v0, v1, [Lorg/apache/poi/hpsf/Array$ArrayDimension;

    iput-object v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Lorg/apache/poi/hpsf/Array$ArrayDimension;

    invoke-direct {v2}, Lorg/apache/poi/hpsf/Array$ArrayDimension;-><init>()V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hpsf/Array$ArrayDimension;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    iget-object v3, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Array dimension number "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is not in [1; 31] range"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
