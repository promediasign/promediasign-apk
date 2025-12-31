.class public final enum Lj$/time/DayOfWeek;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/DayOfWeek;",
        ">;",
        "Lj$/time/temporal/TemporalAccessor;",
        "Lj$/time/temporal/m;"
    }
.end annotation


# static fields
.field public static final enum FRIDAY:Lj$/time/DayOfWeek;

.field public static final enum MONDAY:Lj$/time/DayOfWeek;

.field public static final enum SATURDAY:Lj$/time/DayOfWeek;

.field public static final enum SUNDAY:Lj$/time/DayOfWeek;

.field public static final enum THURSDAY:Lj$/time/DayOfWeek;

.field public static final enum TUESDAY:Lj$/time/DayOfWeek;

.field public static final enum WEDNESDAY:Lj$/time/DayOfWeek;

.field private static final a:[Lj$/time/DayOfWeek;

.field private static final synthetic b:[Lj$/time/DayOfWeek;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lj$/time/DayOfWeek;

    .line 0
    const-string v8, "MONDAY"

    invoke-direct {v7, v8, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v7, Lj$/time/DayOfWeek;->MONDAY:Lj$/time/DayOfWeek;

    new-instance v8, Lj$/time/DayOfWeek;

    .line 0
    const-string v9, "TUESDAY"

    invoke-direct {v8, v9, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v8, Lj$/time/DayOfWeek;->TUESDAY:Lj$/time/DayOfWeek;

    new-instance v9, Lj$/time/DayOfWeek;

    .line 0
    const-string v10, "WEDNESDAY"

    invoke-direct {v9, v10, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v9, Lj$/time/DayOfWeek;->WEDNESDAY:Lj$/time/DayOfWeek;

    new-instance v10, Lj$/time/DayOfWeek;

    .line 0
    const-string v11, "THURSDAY"

    invoke-direct {v10, v11, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v10, Lj$/time/DayOfWeek;->THURSDAY:Lj$/time/DayOfWeek;

    new-instance v11, Lj$/time/DayOfWeek;

    .line 0
    const-string v12, "FRIDAY"

    invoke-direct {v11, v12, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v11, Lj$/time/DayOfWeek;->FRIDAY:Lj$/time/DayOfWeek;

    new-instance v12, Lj$/time/DayOfWeek;

    .line 0
    const-string v13, "SATURDAY"

    invoke-direct {v12, v13, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v12, Lj$/time/DayOfWeek;->SATURDAY:Lj$/time/DayOfWeek;

    new-instance v13, Lj$/time/DayOfWeek;

    .line 0
    const-string v14, "SUNDAY"

    invoke-direct {v13, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v13, Lj$/time/DayOfWeek;->SUNDAY:Lj$/time/DayOfWeek;

    const/4 v14, 0x7

    new-array v14, v14, [Lj$/time/DayOfWeek;

    aput-object v7, v14, v6

    aput-object v8, v14, v5

    aput-object v9, v14, v4

    aput-object v10, v14, v3

    aput-object v11, v14, v2

    aput-object v12, v14, v1

    aput-object v13, v14, v0

    sput-object v14, Lj$/time/DayOfWeek;->b:[Lj$/time/DayOfWeek;

    invoke-static {}, Lj$/time/DayOfWeek;->values()[Lj$/time/DayOfWeek;

    move-result-object v0

    sput-object v0, Lj$/time/DayOfWeek;->a:[Lj$/time/DayOfWeek;

    return-void
.end method

.method public static S(I)Lj$/time/DayOfWeek;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    sget-object v1, Lj$/time/DayOfWeek;->a:[Lj$/time/DayOfWeek;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for DayOfWeek: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/DayOfWeek;
    .locals 1

    const-class v0, Lj$/time/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/DayOfWeek;

    return-object p0
.end method

.method public static values()[Lj$/time/DayOfWeek;
    .locals 1

    sget-object v0, Lj$/time/DayOfWeek;->b:[Lj$/time/DayOfWeek;

    invoke-virtual {v0}, [Lj$/time/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/DayOfWeek;

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/l;->j()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/l;->c(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final T(J)Lj$/time/DayOfWeek;
    .locals 2

    const-wide/16 v0, 0x7

    rem-long/2addr p1, v0

    long-to-int p2, p1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p2, p2, 0x7

    add-int/2addr p2, p1

    rem-int/lit8 p2, p2, 0x7

    sget-object p1, Lj$/time/DayOfWeek;->a:[Lj$/time/DayOfWeek;

    aget-object p1, p1, p2

    return-object p1
.end method

.method public final f(Lj$/time/temporal/p;)Z
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->s(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final getValue()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final p(Lj$/time/temporal/p;)I
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/p;->n()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/l;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lj$/time/temporal/p;)J
    .locals 2

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0
.end method
