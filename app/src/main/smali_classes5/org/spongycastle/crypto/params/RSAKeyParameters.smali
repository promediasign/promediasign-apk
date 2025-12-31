.class public abstract Lorg/spongycastle/crypto/params/RSAKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"


# instance fields
.field private exponent:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method
