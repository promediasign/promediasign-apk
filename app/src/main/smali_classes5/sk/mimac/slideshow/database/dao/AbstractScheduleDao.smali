.class public abstract Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;
.super Lsk/mimac/slideshow/database/dao/AbstractDao;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/sql/DataSource;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/database/dao/AbstractDao;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method public static toDate(Lj$/time/LocalDate;)Ljava/sql/Date;
    .locals 3

    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    invoke-virtual {p0}, Lj$/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Ljava/sql/Date;-><init>(III)V

    return-object v0
.end method

.method public static toLocalDate(Ljava/sql/Date;)Lj$/time/LocalDate;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-static {v0, v1, p0}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static toLocalTime(Ljava/sql/Time;)Lj$/time/LocalTime;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {v0, v1, p0}, Lj$/time/LocalTime;->of(III)Lj$/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static toTime(Lj$/time/LocalTime;)Ljava/sql/Time;
    .locals 3

    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p0}, Lj$/time/LocalTime;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lj$/time/LocalTime;->getMinute()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ljava/sql/Time;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public mapItemToStatementInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/AbstractSchedule;)V
    .locals 3

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeFrom()Lj$/time/LocalTime;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toTime(Lj$/time/LocalTime;)Ljava/sql/Time;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeTo()Lj$/time/LocalTime;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toTime(Lj$/time/LocalTime;)Ljava/sql/Time;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isMonday()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isTuesday()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isWednesday()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isThursday()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isFriday()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 v0, 0x9

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSaturday()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 v0, 0xa

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSunday()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateFrom()Lj$/time/LocalDate;

    move-result-object v0

    const/16 v1, 0x5b

    const/16 v2, 0xb

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateFrom()Lj$/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toDate(Lj$/time/LocalDate;)Ljava/sql/Date;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_0
    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateTo()Lj$/time/LocalDate;

    move-result-object v0

    const/16 v2, 0xc

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateTo()Lj$/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toDate(Lj$/time/LocalDate;)Ljava/sql/Date;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    const/16 v0, 0xd

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getPriority()I

    move-result p2

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    return-void
.end method

.method public mapRsToScheduleInternal(Ljava/sql/ResultSet;Lsk/mimac/slideshow/database/entity/AbstractSchedule;)V
    .locals 2

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setId(Ljava/lang/Long;)V

    const-string v0, "time_from"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toLocalTime(Ljava/sql/Time;)Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    const-string v0, "time_to"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toLocalTime(Ljava/sql/Time;)Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    const-string v0, "monday"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    const-string v0, "tuesday"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    const-string v0, "wednesday"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    const-string v0, "thursday"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    const-string v0, "friday"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    const-string v0, "saturday"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    const-string v0, "sunday"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    const-string v0, "date_from"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toLocalDate(Ljava/sql/Date;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateFrom(Lj$/time/LocalDate;)V

    :cond_0
    const-string v0, "date_to"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toLocalDate(Ljava/sql/Date;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateTo(Lj$/time/LocalDate;)V

    :cond_1
    const-string v0, "priority"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    return-void
.end method
