.class Lorg/apache/poi/hpsf/Array;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hpsf/Array$ArrayHeader;,
        Lorg/apache/poi/hpsf/Array$ArrayDimension;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

.field private _values:[Lorg/apache/poi/hpsf/TypedPropertyValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Array$ArrayHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    iget-object v0, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->getNumberOfScalarValues()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    long-to-int v1, v0

    new-array v0, v1, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    iput-object v0, p0, Lorg/apache/poi/hpsf/Array;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    iget-object v0, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-static {v0}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->access$100(Lorg/apache/poi/hpsf/Array$ArrayHeader;)I

    move-result v0

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-static {v0}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->access$100(Lorg/apache/poi/hpsf/Array$ArrayHeader;)I

    move-result v0

    :goto_0
    if-ge v3, v1, :cond_2

    new-instance v2, Lorg/apache/poi/hpsf/TypedPropertyValue;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    iget-object v4, p0, Lorg/apache/poi/hpsf/Array;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    aput-object v2, v4, v3

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Sorry, but POI can\'t store array of properties with size of "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " in memory"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
