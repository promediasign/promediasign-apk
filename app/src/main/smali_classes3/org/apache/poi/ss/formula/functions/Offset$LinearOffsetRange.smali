.class final Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Offset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearOffsetRange"
.end annotation


# instance fields
.field private final _length:I

.field private final _offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    iput p2, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "length may not be zero"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFirstIndex()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    int-to-short v0, v0

    return v0
.end method

.method public getLastIndex()S
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    iget v1, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    return v0
.end method

.method public isOutOfBounds(II)Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    const/4 v1, 0x1

    if-ge v0, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getLastIndex()S

    move-result p1

    if-le p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public normaliseAndTranslate(I)Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    .locals 4

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    iget v2, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    add-int/2addr p1, v2

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    return-object v1

    :cond_1
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    iget v2, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    const/4 v3, 0x1

    invoke-static {p1, v2, v0, v3}, LA/g;->a(IIII)I

    move-result p1

    neg-int v0, v0

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, " ["

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    const-string v1, "..."

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getLastIndex()S

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "]"

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
