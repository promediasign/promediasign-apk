.class public final Lj$/time/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/r;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj$/time/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lj$/time/r;-><init>(III)V

    sput-object v0, Lj$/time/r;->d:Lj$/time/r;

    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    .line 0
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    aput-object v3, v0, v1

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->h([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/r;->a:I

    iput p2, p0, Lj$/time/r;->b:I

    iput p3, p0, Lj$/time/r;->c:I

    return-void
.end method

.method public static c(I)Lj$/time/r;
    .locals 2

    if-nez p0, :cond_0

    .line 0
    sget-object p0, Lj$/time/r;->d:Lj$/time/r;

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lj$/time/r;-><init>(III)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static d(Ljava/io/DataInput;)Lj$/time/r;
    .locals 3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    or-int v2, v0, v1

    or-int/2addr v2, p0

    if-nez v2, :cond_0

    .line 0
    sget-object p0, Lj$/time/r;->d:Lj$/time/r;

    goto :goto_0

    :cond_0
    new-instance v2, Lj$/time/r;

    invoke-direct {v2, v0, v1, p0}, Lj$/time/r;-><init>(III)V

    move-object p0, v2

    :goto_0
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/time/s;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/temporal/Temporal;
    .locals 5

    .line 0
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/l;

    if-eqz v0, :cond_1

    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    invoke-virtual {v1, v0}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lj$/time/c;

    invoke-interface {v0}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chronology mismatch, expected: ISO, actual: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    .line 0
    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/r;->b:I

    if-nez v0, :cond_2

    iget v0, p0, Lj$/time/r;->a:I

    if-eqz v0, :cond_3

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    :goto_1
    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lj$/time/r;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    goto :goto_1

    :cond_3
    :goto_2
    iget v0, p0, Lj$/time/r;->c:I

    if-eqz v0, :cond_4

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lj$/time/r;->c:I

    return v0
.end method

.method public final e()J
    .locals 4

    iget v0, p0, Lj$/time/r;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lj$/time/r;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/r;

    iget v1, p1, Lj$/time/r;->a:I

    iget v3, p0, Lj$/time/r;->a:I

    if-ne v3, v1, :cond_1

    iget v1, p0, Lj$/time/r;->b:I

    iget v3, p1, Lj$/time/r;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/r;->c:I

    iget p1, p1, Lj$/time/r;->c:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method final f(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lj$/time/r;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lj$/time/r;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lj$/time/r;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lj$/time/r;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget v1, p0, Lj$/time/r;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lj$/time/r;->c:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lj$/time/r;->d:Lj$/time/r;

    if-ne p0, v0, :cond_0

    const-string v0, "P0D"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lj$/time/r;->a:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lj$/time/r;->b:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lj$/time/r;->c:I

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
