.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$3;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 11

    new-instance v8, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "9ba48cba5ebcb9b6bd33b92830b2a2e0e192f10a"

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v0, "c39c6c3b3a36d7701b9c71a1f5804ae5d0003f4"

    invoke-direct {v3, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/math/BigInteger;

    const-string v4, "9162fbe73984472a0a9e"

    invoke-direct {v0, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "-96341f1138933bc2f505"

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/math/BigInteger;

    const/4 v9, 0x0

    aput-object v0, v7, v9

    const/4 v0, 0x1

    aput-object v5, v7, v0

    new-instance v5, Ljava/math/BigInteger;

    const-string v10, "127971af8721782ecffa3"

    invoke-direct {v5, v10, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-array v4, v6, [Ljava/math/BigInteger;

    aput-object v5, v4, v9

    aput-object v10, v4, v0

    new-instance v5, Ljava/math/BigInteger;

    const-string v0, "9162fbe73984472a0a9d0590"

    invoke-direct {v5, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "96341f1138933bc2f503fd44"

    invoke-direct {v6, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v9, 0xb0

    move-object v0, v8

    move-object v2, v3

    move-object v3, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP160K1Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160K1Curve;-><init>()V

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->access$100(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string v0, "043B4C382CE37AA192A4019E763036F4F5DD4D7EBB938CF935318FDCED6BC28286531733C3F03C4FEE"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
