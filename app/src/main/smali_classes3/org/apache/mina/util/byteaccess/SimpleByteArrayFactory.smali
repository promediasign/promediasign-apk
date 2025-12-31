.class public Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArrayFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory$1;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory$1;-><init>(Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Buffer size must not be negative:"

    .line 16
    .line 17
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method
