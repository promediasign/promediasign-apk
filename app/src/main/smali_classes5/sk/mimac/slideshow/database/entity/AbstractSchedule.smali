.class public abstract Lsk/mimac/slideshow/database/entity/AbstractSchedule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dateFrom:Lj$/time/LocalDate;

.field private dateTo:Lj$/time/LocalDate;

.field private friday:Z

.field private id:Ljava/lang/Long;

.field private monday:Z

.field private priority:I

.field private saturday:Z

.field private sunday:Z

.field private thursday:Z

.field private timeFrom:Lj$/time/LocalTime;

.field private timeTo:Lj$/time/LocalTime;

.field private tuesday:Z

.field private wednesday:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateFrom()Lj$/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->dateFrom:Lj$/time/LocalDate;

    return-object v0
.end method

.method public getDateTo()Lj$/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->dateTo:Lj$/time/LocalDate;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->priority:I

    return v0
.end method

.method public getTimeFrom()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->timeFrom:Lj$/time/LocalTime;

    return-object v0
.end method

.method public getTimeTo()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->timeTo:Lj$/time/LocalTime;

    return-object v0
.end method

.method public isFriday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->friday:Z

    return v0
.end method

.method public isMonday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->monday:Z

    return v0
.end method

.method public isSaturday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->saturday:Z

    return v0
.end method

.method public isSunday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->sunday:Z

    return v0
.end method

.method public isThursday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->thursday:Z

    return v0
.end method

.method public isTuesday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->tuesday:Z

    return v0
.end method

.method public isWednesday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->wednesday:Z

    return v0
.end method

.method public setDateFrom(Lj$/time/LocalDate;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->dateFrom:Lj$/time/LocalDate;

    return-void
.end method

.method public setDateTo(Lj$/time/LocalDate;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->dateTo:Lj$/time/LocalDate;

    return-void
.end method

.method public setFriday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->friday:Z

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMonday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->monday:Z

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->priority:I

    return-void
.end method

.method public setSaturday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->saturday:Z

    return-void
.end method

.method public setSunday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->sunday:Z

    return-void
.end method

.method public setThursday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->thursday:Z

    return-void
.end method

.method public setTimeFrom(Lj$/time/LocalTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->timeFrom:Lj$/time/LocalTime;

    return-void
.end method

.method public setTimeTo(Lj$/time/LocalTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->timeTo:Lj$/time/LocalTime;

    return-void
.end method

.method public setTuesday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->tuesday:Z

    return-void
.end method

.method public setWednesday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->wednesday:Z

    return-void
.end method
