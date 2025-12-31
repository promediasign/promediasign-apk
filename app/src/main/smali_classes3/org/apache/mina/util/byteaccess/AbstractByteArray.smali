.class abstract Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/mina/util/byteaccess/ByteArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/mina/util/byteaccess/ByteArray;

    invoke-interface {p0}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v3

    if-ne v1, v3, :cond_6

    invoke-interface {p0}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v3

    if-ne v1, v3, :cond_6

    invoke-interface {p0}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/apache/mina/util/byteaccess/ByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v3

    :cond_3
    if-lez v3, :cond_5

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_4
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v4

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method public final length()I
    .locals 2

    invoke-interface {p0}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
