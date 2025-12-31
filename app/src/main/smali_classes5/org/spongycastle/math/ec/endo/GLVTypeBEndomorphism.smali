.class public Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/math/ec/endo/ECEndomorphism;


# instance fields
.field protected final curve:Lorg/spongycastle/math/ec/ECCurve;

.field protected final parameters:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

.field protected final pointMap:Lorg/spongycastle/math/ec/ECPointMap;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iput-object p2, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v0, Lorg/spongycastle/math/ec/ScaleXPointMap;

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getBeta()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/math/ec/ScaleXPointMap;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lorg/spongycastle/math/ec/ECPointMap;

    return-void
.end method
