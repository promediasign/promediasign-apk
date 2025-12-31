.class public Lorg/h2/value/ValueInt;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field public static final DISPLAY_SIZE:I = 0xb

.field private static final DYNAMIC_CACHE:[Lorg/h2/value/ValueInt;

.field private static final DYNAMIC_SIZE:I = 0x100

.field public static final PRECISION:I = 0xa

.field private static final STATIC_CACHE:[Lorg/h2/value/ValueInt;

.field private static final STATIC_SIZE:I = 0x80


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x80

    new-array v1, v0, [Lorg/h2/value/ValueInt;

    sput-object v1, Lorg/h2/value/ValueInt;->STATIC_CACHE:[Lorg/h2/value/ValueInt;

    const/16 v1, 0x100

    new-array v1, v1, [Lorg/h2/value/ValueInt;

    sput-object v1, Lorg/h2/value/ValueInt;->DYNAMIC_CACHE:[Lorg/h2/value/ValueInt;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lorg/h2/value/ValueInt;->STATIC_CACHE:[Lorg/h2/value/ValueInt;

    new-instance v3, Lorg/h2/value/ValueInt;

    invoke-direct {v3, v1}, Lorg/h2/value/ValueInt;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput p1, p0, Lorg/h2/value/ValueInt;->value:I

    return-void
.end method

.method private static checkRange(J)Lorg/h2/value/ValueInt;
    .locals 3

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    long-to-int p1, p0

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x55f3

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static get(I)Lorg/h2/value/ValueInt;
    .locals 4

    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/h2/value/ValueInt;->STATIC_CACHE:[Lorg/h2/value/ValueInt;

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/h2/value/ValueInt;->DYNAMIC_CACHE:[Lorg/h2/value/ValueInt;

    and-int/lit16 v1, p0, 0xff

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    iget v3, v2, Lorg/h2/value/ValueInt;->value:I

    if-eq v3, p0, :cond_2

    :cond_1
    new-instance v2, Lorg/h2/value/ValueInt;

    invoke-direct {v2, p0}, Lorg/h2/value/ValueInt;-><init>(I)V

    aput-object v2, v0, v1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    check-cast p1, Lorg/h2/value/ValueInt;

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    int-to-long v0, v0

    iget p1, p1, Lorg/h2/value/ValueInt;->value:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueInt;->checkRange(J)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1
.end method

.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    check-cast p1, Lorg/h2/value/ValueInt;

    iget p2, p0, Lorg/h2/value/ValueInt;->value:I

    iget p1, p1, Lorg/h2/value/ValueInt;->value:I

    invoke-static {p2, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    check-cast p1, Lorg/h2/value/ValueInt;

    iget p1, p1, Lorg/h2/value/ValueInt;->value:I

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    invoke-virtual {p0}, Lorg/h2/value/ValueInt;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/h2/value/ValueInt;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    check-cast p1, Lorg/h2/value/ValueInt;

    iget p1, p1, Lorg/h2/value/ValueInt;->value:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getInt()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    return v0
.end method

.method public getLong()J
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueInt;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignum()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    return v0
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    check-cast p1, Lorg/h2/value/ValueInt;

    iget p1, p1, Lorg/h2/value/ValueInt;->value:I

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    rem-int/2addr v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    invoke-virtual {p0}, Lorg/h2/value/ValueInt;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    check-cast p1, Lorg/h2/value/ValueInt;

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    int-to-long v0, v0

    iget p1, p1, Lorg/h2/value/ValueInt;->value:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueInt;->checkRange(J)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    int-to-long v0, v0

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueInt;->checkRange(J)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    check-cast p1, Lorg/h2/value/ValueInt;

    iget v0, p0, Lorg/h2/value/ValueInt;->value:I

    int-to-long v0, v0

    iget p1, p1, Lorg/h2/value/ValueInt;->value:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueInt;->checkRange(J)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1
.end method
