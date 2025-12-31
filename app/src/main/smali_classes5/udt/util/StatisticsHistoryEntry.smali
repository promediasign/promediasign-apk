.class public Ludt/util/StatisticsHistoryEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isHeading:Z

.field private final timestamp:J

.field private final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/List<",
            "Ludt/util/MeanValue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ludt/util/StatisticsHistoryEntry;->isHeading:Z

    iput-wide p2, p0, Ludt/util/StatisticsHistoryEntry;->timestamp:J

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    new-array p3, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string p1, "time"

    aput-object p1, p3, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ludt/util/MeanValue;

    invoke-virtual {p2}, Ludt/util/MeanValue;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    move v0, p1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, p2, :cond_2

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ludt/util/MeanValue;

    invoke-virtual {p1}, Ludt/util/MeanValue;->getFormattedMean()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object p3, p0, Ludt/util/StatisticsHistoryEntry;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Ludt/util/StatisticsHistoryEntry;->isHeading:Z

    const-string v2, " , "

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-wide v4, p0, Ludt/util/StatisticsHistoryEntry;->timestamp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ludt/util/StatisticsHistoryEntry;->values:[Ljava/lang/Object;

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Ludt/util/StatisticsHistoryEntry;->values:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v3, v1, :cond_2

    if-lez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Ludt/util/StatisticsHistoryEntry;->values:[Ljava/lang/Object;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
