.class public Ludt/util/MeanValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final format:Ljava/text/NumberFormat;

.field private max:D

.field private mean:D

.field private min:D

.field private n:I

.field private final nValue:J

.field private final name:Ljava/lang/String;

.field private start:J

.field private final verbose:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-direct {p0, p1, v0, v1}, Ludt/util/MeanValue;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ludt/util/MeanValue;->mean:D

    iput-wide v0, p0, Ludt/util/MeanValue;->max:D

    iput-wide v0, p0, Ludt/util/MeanValue;->min:D

    const/4 v0, 0x0

    iput v0, p0, Ludt/util/MeanValue;->n:I

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Ludt/util/MeanValue;->format:Ljava/text/NumberFormat;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    iput-boolean p2, p0, Ludt/util/MeanValue;->verbose:Z

    int-to-long p2, p3

    iput-wide p2, p0, Ludt/util/MeanValue;->nValue:J

    iput-object p1, p0, Ludt/util/MeanValue;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 5

    iget-wide v0, p0, Ludt/util/MeanValue;->mean:D

    iget v2, p0, Ludt/util/MeanValue;->n:I

    int-to-double v3, v2

    mul-double v0, v0, v3

    add-double/2addr v0, p1

    add-int/lit8 v3, v2, 0x1

    int-to-double v3, v3

    div-double/2addr v0, v3

    iput-wide v0, p0, Ludt/util/MeanValue;->mean:D

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ludt/util/MeanValue;->n:I

    iget-wide v0, p0, Ludt/util/MeanValue;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ludt/util/MeanValue;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Ludt/util/MeanValue;->min:D

    iget-boolean p1, p0, Ludt/util/MeanValue;->verbose:Z

    if-eqz p1, :cond_0

    iget p1, p0, Ludt/util/MeanValue;->n:I

    int-to-long p1, p1

    iget-wide v0, p0, Ludt/util/MeanValue;->nValue:J

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ludt/util/MeanValue;->max:D

    iput-wide p1, p0, Ludt/util/MeanValue;->min:D

    :cond_0
    return-void
.end method

.method public begin()V
    .locals 2

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Ludt/util/MeanValue;->start:J

    return-void
.end method

.method public end()V
    .locals 5

    iget-wide v0, p0, Ludt/util/MeanValue;->start:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Ludt/util/MeanValue;->start:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Ludt/util/MeanValue;->addValue(D)V

    :cond_0
    return-void
.end method

.method public getFormattedMean()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ludt/util/MeanValue;->format:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Ludt/util/MeanValue;->getMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMean()D
    .locals 2

    iget-wide v0, p0, Ludt/util/MeanValue;->mean:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ludt/util/MeanValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ludt/util/MeanValue;->name:Ljava/lang/String;

    return-object v0
.end method
