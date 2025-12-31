.class public abstract Lj$/time/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lj$/time/b;
    .locals 2

    new-instance v0, Lj$/time/a;

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/a;-><init>(Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public static e()Lj$/time/b;
    .locals 1

    sget-object v0, Lj$/time/a;->b:Lj$/time/a;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lj$/time/ZoneId;
.end method

.method public abstract b()Lj$/time/Instant;
.end method

.method public abstract c()J
.end method
