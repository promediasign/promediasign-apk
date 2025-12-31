.class public final enum Lj$/time/chrono/r;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/m;


# static fields
.field public static final enum AH:Lj$/time/chrono/r;

.field private static final synthetic a:[Lj$/time/chrono/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lj$/time/chrono/r;

    .line 0
    const-string v2, "AH"

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v1, Lj$/time/chrono/r;->AH:Lj$/time/chrono/r;

    const/4 v2, 0x1

    new-array v2, v2, [Lj$/time/chrono/r;

    aput-object v1, v2, v0

    sput-object v2, Lj$/time/chrono/r;->a:[Lj$/time/chrono/r;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/r;
    .locals 1

    const-class v0, Lj$/time/chrono/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/r;

    return-object p0
.end method

.method public static values()[Lj$/time/chrono/r;
    .locals 1

    sget-object v0, Lj$/time/chrono/r;->a:[Lj$/time/chrono/r;

    invoke-virtual {v0}, [Lj$/time/chrono/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/r;

    return-object v0
.end method


# virtual methods
.method public final synthetic A(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/h;->m(Lj$/time/chrono/m;Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    .line 0
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    const/4 v1, 0x1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Lj$/time/temporal/p;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/h;->i(Lj$/time/chrono/m;Lj$/time/temporal/p;)Z

    move-result p1

    return p1
.end method

.method public final getValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic p(Lj$/time/temporal/p;)I
    .locals 0

    check-cast p1, Lj$/time/temporal/a;

    invoke-static {p0, p1}, Lj$/time/chrono/h;->f(Lj$/time/chrono/m;Lj$/time/temporal/a;)I

    move-result p1

    return p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 2

    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v0, v1}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 0
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/l;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic v(Lj$/time/temporal/p;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/time/chrono/h;->g(Lj$/time/chrono/m;Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0
.end method
