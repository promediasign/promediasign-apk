.class Lorg/apache/poi/hpsf/Currency;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/Currency;->_value:[B

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Currency;->_value:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    return-void
.end method
