.class public Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/UsageStatsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final eventType:Ljava/lang/String;

.field private final timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->timestamp:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->eventType:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->compareTo(Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->timestamp:Ljava/lang/String;

    iget-object p1, p1, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;

    iget-object v2, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->timestamp:Ljava/lang/String;

    iget-object v3, p1, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->timestamp:Ljava/lang/String;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->eventType:Ljava/lang/String;

    iget-object v3, p1, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->eventType:Ljava/lang/String;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->className:Ljava/lang/String;

    iget-object p1, p1, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->className:Ljava/lang/String;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->timestamp:Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->eventType:Ljava/lang/String;

    iget-object v2, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->className:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->timestamp:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":\t\teventType=\'"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->eventType:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "\'\t\tclassName=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->className:Ljava/lang/String;

    .line 27
    .line 28
    const/16 v2, 0x27

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
