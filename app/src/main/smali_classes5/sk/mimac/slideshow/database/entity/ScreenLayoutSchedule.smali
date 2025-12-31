.class public Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;
.super Lsk/mimac/slideshow/database/entity/AbstractSchedule;
.source "SourceFile"


# instance fields
.field private screenLayoutId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;-><init>()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;-><init>()V

    iput-wide p1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->screenLayoutId:J

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    const/16 p1, 0x17

    const/16 p2, 0x3b

    invoke-static {p1, p2}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public getScreenLayoutId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->screenLayoutId:J

    return-wide v0
.end method

.method public setScreenLayoutId(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->screenLayoutId:J

    return-void
.end method
