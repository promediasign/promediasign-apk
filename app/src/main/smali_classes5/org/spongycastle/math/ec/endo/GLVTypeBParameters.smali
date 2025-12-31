.class public Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final beta:Ljava/math/BigInteger;

.field protected final bits:I

.field protected final g1:Ljava/math/BigInteger;

.field protected final g2:Ljava/math/BigInteger;

.field protected final lambda:Ljava/math/BigInteger;

.field protected final v1A:Ljava/math/BigInteger;

.field protected final v1B:Ljava/math/BigInteger;

.field protected final v2A:Ljava/math/BigInteger;

.field protected final v2B:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v1"

    invoke-static {p3, v0}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "v2"

    invoke-static {p4, v0}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    const/4 p1, 0x0

    aget-object p2, p3, p1

    iput-object p2, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    const/4 p2, 0x1

    aget-object p3, p3, p2

    iput-object p3, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    aget-object p1, p4, p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    aget-object p1, p4, p2

    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    iput p7, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    return-void
.end method

.method private static checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v0, p0, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    aget-object p0, p0, v0

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "\'"

    .line 21
    .line 22
    const-string v1, "\' must consist of exactly 2 (non-null) values"

    .line 23
    .line 24
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method


# virtual methods
.method public getBeta()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object v0
.end method
