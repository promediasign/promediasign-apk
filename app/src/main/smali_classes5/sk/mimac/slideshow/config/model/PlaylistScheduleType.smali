.class public Lsk/mimac/slideshow/config/model/PlaylistScheduleType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "PlaylistScheduleType"
.end annotation


# instance fields
.field private dateFrom:Lj$/time/LocalDate;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "dateFrom"
        required = false
    .end annotation
.end field

.field private dateTo:Lj$/time/LocalDate;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "dateTo"
        required = false
    .end annotation
.end field

.field private friday:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "friday"
        required = true
    .end annotation
.end field

.field private monday:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "monday"
        required = true
    .end annotation
.end field

.field private playlistId:J
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "playlistId"
        required = true
    .end annotation
.end field

.field private priority:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "priority"
        required = true
    .end annotation
.end field

.field private saturday:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "saturday"
        required = true
    .end annotation
.end field

.field private sunday:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "sunday"
        required = true
    .end annotation
.end field

.field private thursday:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "thursday"
        required = true
    .end annotation
.end field

.field private timeFrom:Lj$/time/LocalTime;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "timeFrom"
        required = true
    .end annotation
.end field

.field private timeTo:Lj$/time/LocalTime;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "timeTo"
        required = true
    .end annotation
.end field

.field private tuesday:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "tuesday"
        required = true
    .end annotation
.end field

.field private wednesday:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "wednesday"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateFrom()Lj$/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->dateFrom:Lj$/time/LocalDate;

    return-object v0
.end method

.method public getDateTo()Lj$/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->dateTo:Lj$/time/LocalDate;

    return-object v0
.end method

.method public getPlaylistId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->playlistId:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->priority:I

    return v0
.end method

.method public getTimeFrom()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->timeFrom:Lj$/time/LocalTime;

    return-object v0
.end method

.method public getTimeTo()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->timeTo:Lj$/time/LocalTime;

    return-object v0
.end method

.method public isFriday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->friday:Z

    return v0
.end method

.method public isMonday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->monday:Z

    return v0
.end method

.method public isSaturday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->saturday:Z

    return v0
.end method

.method public isSunday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->sunday:Z

    return v0
.end method

.method public isThursday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->thursday:Z

    return v0
.end method

.method public isTuesday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->tuesday:Z

    return v0
.end method

.method public isWednesday()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->wednesday:Z

    return v0
.end method

.method public setDateFrom(Lj$/time/LocalDate;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->dateFrom:Lj$/time/LocalDate;

    return-void
.end method

.method public setDateTo(Lj$/time/LocalDate;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->dateTo:Lj$/time/LocalDate;

    return-void
.end method

.method public setFriday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->friday:Z

    return-void
.end method

.method public setMonday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->monday:Z

    return-void
.end method

.method public setPlaylistId(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->playlistId:J

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->priority:I

    return-void
.end method

.method public setSaturday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->saturday:Z

    return-void
.end method

.method public setSunday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->sunday:Z

    return-void
.end method

.method public setThursday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->thursday:Z

    return-void
.end method

.method public setTimeFrom(Lj$/time/LocalTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->timeFrom:Lj$/time/LocalTime;

    return-void
.end method

.method public setTimeTo(Lj$/time/LocalTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->timeTo:Lj$/time/LocalTime;

    return-void
.end method

.method public setTuesday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->tuesday:Z

    return-void
.end method

.method public setWednesday(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->wednesday:Z

    return-void
.end method
