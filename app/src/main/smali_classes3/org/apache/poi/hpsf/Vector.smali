.class Lorg/apache/poi/hpsf/Vector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _type:S

.field private _values:[Lorg/apache/poi/hpsf/TypedPropertyValue;


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-gtz v4, :cond_3

    .line 11
    .line 12
    long-to-int v1, v0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-short v2, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    .line 19
    .line 20
    const/16 v3, 0xc

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :cond_0
    :goto_0
    if-ge v4, v1, :cond_2

    .line 27
    .line 28
    new-instance v3, Lorg/apache/poi/hpsf/TypedPropertyValue;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-direct {v3, v2, v5}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v3, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-array p1, p1, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    .line 60
    .line 61
    iput-object p1, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 65
    .line 66
    const-string v2, "Vector is too long -- "

    .line 67
    .line 68
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method
