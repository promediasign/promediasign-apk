.class public Lorg/h2/value/ValueEnumBase;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field private static final DISPLAY_SIZE:I = 0xb

.field private static final PRECISION:I = 0xa


# instance fields
.field private final label:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput-object p1, p0, Lorg/h2/value/ValueEnumBase;->label:Ljava/lang/String;

    iput p2, p0, Lorg/h2/value/ValueEnumBase;->ordinal:I

    return-void
.end method

.method public static get(Ljava/lang/String;I)Lorg/h2/value/ValueEnumBase;
    .locals 1

    new-instance v0, Lorg/h2/value/ValueEnumBase;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueEnumBase;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/value/Value;->add(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    invoke-virtual {p0}, Lorg/h2/value/ValueEnumBase;->getInt()I

    move-result p2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-static {p2, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/value/Value;->divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/h2/value/ValueEnumBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueEnumBase;->getInt()I

    move-result v0

    check-cast p1, Lorg/h2/value/ValueEnumBase;

    invoke-virtual {p1}, Lorg/h2/value/ValueEnumBase;->getInt()I

    move-result p1

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

    iget v0, p0, Lorg/h2/value/ValueEnumBase;->ordinal:I

    return v0
.end method

.method public getLong()J
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueEnumBase;->ordinal:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueEnumBase;->ordinal:I

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

    invoke-virtual {p0}, Lorg/h2/value/ValueEnumBase;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignum()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueEnumBase;->ordinal:I

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueEnumBase;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/h2/value/ValueEnumBase;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/h2/value/ValueEnumBase;->getInt()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/value/Value;->modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/value/Value;->multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueEnumBase;->ordinal:I

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/value/Value;->subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method
