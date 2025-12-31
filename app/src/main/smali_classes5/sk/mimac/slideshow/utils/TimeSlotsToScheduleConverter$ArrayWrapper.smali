.class Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayWrapper"
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;

    iget-object v0, p0, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;->array:[Ljava/lang/Object;

    iget-object p1, p1, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;->array:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
