.class Lorg/h2/mvstore/type/ObjectDataType$BigDecimalType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigDecimalType"
.end annotation


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lorg/h2/mvstore/type/ObjectDataType;->isBigDecimal(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->isBigDecimal(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lorg/h2/mvstore/type/ObjectDataType;->isBigDecimal(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x96

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 2

    packed-switch p2, :pswitch_data_0

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p2

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0

    :pswitch_0
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p2

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object p1

    :pswitch_3
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->isBigDecimal(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p2, 0x2e

    :goto_0
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    :cond_1
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p2, 0x2f

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_4

    if-nez v0, :cond_3

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_1

    :cond_3
    const/16 v1, 0x31

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    :goto_1
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    :goto_2
    return-void
.end method
