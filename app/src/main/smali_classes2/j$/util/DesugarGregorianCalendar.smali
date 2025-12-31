.class public final synthetic Lj$/util/DesugarGregorianCalendar;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static toZonedDateTime(Ljava/util/GregorianCalendar;)Lj$/time/ZonedDateTime;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    .line 0
    instance-of v1, p0, Lj$/util/TimeZoneRetargetInterface;

    if-eqz v1, :cond_0

    check-cast p0, Lj$/util/TimeZoneRetargetInterface;

    invoke-interface {p0}, Lj$/util/TimeZoneRetargetInterface;->toZoneId()Lj$/time/ZoneId;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;

    move-result-object p0

    .line 0
    :goto_0
    invoke-static {v0, p0}, Lj$/time/ZonedDateTime;->b0(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method
