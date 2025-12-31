.class public Lj$/time/TimeConversions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convert(Lj$/time/ZoneId;)Ljava/time/ZoneId;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj$/time/ZoneId;->m()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/ZonedDateTime;)Ljava/time/ZonedDateTime;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->a0()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->X()I

    move-result v1

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->U()I

    move-result v2

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->V()I

    move-result v3

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->W()I

    move-result v4

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->Z()I

    move-result v5

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->Y()I

    move-result v6

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->t()Lj$/time/ZoneId;

    move-result-object p0

    invoke-static {p0}, Lj$/time/TimeConversions;->convert(Lj$/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Ljava/time/ZonedDateTime;->of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method
