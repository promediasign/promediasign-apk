.class public Lorg/spongycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field private G:Lorg/spongycastle/math/ec/ECPoint;

.field private curve:Lorg/spongycastle/math/ec/ECCurve;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->G:Lorg/spongycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->seed:[B

    return-void
.end method
