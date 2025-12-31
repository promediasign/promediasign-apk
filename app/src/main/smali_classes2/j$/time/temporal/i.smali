.class public abstract Lj$/time/temporal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/time/temporal/p;

.field public static final b:Lj$/time/temporal/p;

.field public static final c:Lj$/time/temporal/p;

.field public static final d:Lj$/time/temporal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lj$/time/temporal/g;->QUARTER_OF_YEAR:Lj$/time/temporal/g;

    sput-object v0, Lj$/time/temporal/i;->a:Lj$/time/temporal/p;

    sget-object v0, Lj$/time/temporal/g;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/g;

    sput-object v0, Lj$/time/temporal/i;->b:Lj$/time/temporal/p;

    sget-object v0, Lj$/time/temporal/g;->WEEK_BASED_YEAR:Lj$/time/temporal/g;

    sput-object v0, Lj$/time/temporal/i;->c:Lj$/time/temporal/p;

    sget-object v0, Lj$/time/temporal/h;->WEEK_BASED_YEARS:Lj$/time/temporal/h;

    sput-object v0, Lj$/time/temporal/i;->d:Lj$/time/temporal/r;

    sget-object v0, Lj$/time/temporal/h;->WEEK_BASED_YEARS:Lj$/time/temporal/h;

    return-void
.end method

.method static a(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/h;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object p0

    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    check-cast p0, Lj$/time/chrono/a;

    invoke-virtual {p0, v0}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
