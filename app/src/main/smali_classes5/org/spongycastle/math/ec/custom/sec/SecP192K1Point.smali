.class public Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-ne p2, p1, :cond_2

    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of the field elements is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v6, v6, v0

    check-cast v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->createExt()[I

    move-result-object v7

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v9

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v10

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v5, v5, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    goto :goto_0

    :cond_3
    iget-object v12, v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v12, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v9, v4, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    iget-object v4, v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v9, v4, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    iget-object v4, v5, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v9, v4, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    move-object v4, v8

    move-object v5, v9

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v13, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v10, v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v10, v2, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    iget-object v2, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v10, v2, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    :goto_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v13

    invoke-static {v2, v4, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    invoke-static {v3, v5, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    invoke-static {v13}, Lorg/spongycastle/math/raw/Nat192;->isZero([I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat192;->isZero([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {v13, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v4

    invoke-static {v9, v13, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    invoke-static {v9, v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    invoke-static {v4, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->negate([I[I)V

    invoke-static {v3, v4, v7}, Lorg/spongycastle/math/raw/Nat192;->mul([I[I[I)V

    invoke-static {v9, v9, v4}, Lorg/spongycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v2

    invoke-static {v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v2, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v8, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v3, v4, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v4, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v5, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v9, v4, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    iget-object v4, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v4, v8, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiplyAddToExt([I[I[I)V

    iget-object v4, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v7, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v4, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v6, v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v6, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, p1, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v4, p1, v0

    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v6
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v0

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v5

    iget-object v6, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v6, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v6

    invoke-static {v5, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v7

    iget-object v8, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v8, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    invoke-static {v7, v7, v7}, Lorg/spongycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v8

    invoke-static {v8, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v2, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/4 v2, 0x2

    const/4 v8, 0x6

    invoke-static {v8, v5, v2, v0}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v2

    invoke-static {v2, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v2

    const/4 v9, 0x3

    invoke-static {v8, v6, v9, v0, v2}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v8

    invoke-static {v8, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    new-instance v8, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v8, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v6, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v7, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    iget-object v6, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v6, v5, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    iget-object v6, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v6, v5, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v6, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v9, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v10, v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    iget-object v5, v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v7, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    iget-object v5, v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v2, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v5, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->twice([I[I)V

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v4, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    :cond_2
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    const/4 v4, 0x1

    new-array v7, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v2, v7, v0

    iget-boolean v0, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    move-object v2, v1

    move-object v4, v8

    move-object v5, v6

    move-object v6, v7

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method
