.class public Lsk/mimac/slideshow/config/model/AudioScheduleType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "AudioScheduleType"
.end annotation


# instance fields
.field private schedule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistScheduleType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "schedule"
        inline = true
        name = "schedule"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSchedule()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistScheduleType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/AudioScheduleType;->schedule:Ljava/util/List;

    return-object v0
.end method

.method public setSchedule(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistScheduleType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/AudioScheduleType;->schedule:Ljava/util/List;

    return-void
.end method
