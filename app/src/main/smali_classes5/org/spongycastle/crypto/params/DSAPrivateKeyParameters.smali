.class public Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/DSAKeyParameters;
.source "SourceFile"


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/params/DSAKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-void
.end method
