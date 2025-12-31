.class Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
.super Lorg/apache/mina/core/write/WriteRequestWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/ssl/SslFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptedWriteRequest"
.end annotation


# instance fields
.field private final encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteRequestWrapper;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/ssl/SslFilter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method
