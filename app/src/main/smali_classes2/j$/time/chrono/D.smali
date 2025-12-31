.class public final enum Lj$/time/chrono/D;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/m;


# static fields
.field public static final enum BEFORE_ROC:Lj$/time/chrono/D;

.field public static final enum ROC:Lj$/time/chrono/D;

.field private static final synthetic a:[Lj$/time/chrono/D;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lj$/time/chrono/D;

    .line 0
    const-string v3, "BEFORE_ROC"

    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v2, Lj$/time/chrono/D;->BEFORE_ROC:Lj$/time/chrono/D;

    new-instance v3, Lj$/time/chrono/D;

    .line 0
    const-string v4, "ROC"

    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v3, Lj$/time/chrono/D;->ROC:Lj$/time/chrono/D;

    const/4 v4, 0x2

    new-array v4, v4, [Lj$/time/chrono/D;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    sput-object v4, Lj$/time/chrono/D;->a:[Lj$/time/chrono/D;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/D;
    .locals 1

    const-class v0, Lj$/time/chrono/D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/D;

    return-object p0
.end method

.method public static values()[Lj$/time/chrono/D;
    .locals 1

    sget-object v0, Lj$/time/chrono/D;->a:[Lj$/time/chrono/D;

    invoke-virtual {v0}, [Lj$/time/chrono/D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/D;

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

    invoke-virtual {p0}, Lj$/time/chrono/D;->getValue()I

    move-result v1

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

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

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
    .locals 0

    .line 0
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
