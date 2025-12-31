.class public Lsk/mimac/slideshow/downloader/DownloadStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;
    }
.end annotation


# static fields
.field private static final DATE_TIME_FORMATTER:Lj$/time/format/DateTimeFormatter;


# instance fields
.field private downloadedBytes:J

.field private filesDownloaded:I

.field private filesFailed:I

.field private filesNotChanged:I

.field private filesSkipped:I

.field private finished:Lj$/time/OffsetDateTime;

.field private source:Ljava/lang/String;

.field private startMethod:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

.field private started:Lj$/time/OffsetDateTime;

.field private target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lj$/time/format/FormatStyle;->MEDIUM:Lj$/time/format/FormatStyle;

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofLocalizedDateTime(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->DATE_TIME_FORMATTER:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(IIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesDownloaded:I

    iput p2, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesSkipped:I

    iput p3, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesNotChanged:I

    iput p4, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesFailed:I

    iput-wide p5, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    return-void
.end method

.method public static empty()Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    new-instance v7, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/downloader/DownloadStatistics;-><init>(IIIIJ)V

    return-object v7
.end method

.method public static failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    .line 1
    new-instance v7, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move v4, p0

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/downloader/DownloadStatistics;-><init>(IIIIJ)V

    return-object v7
.end method

.method public static failed(IJ)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    .line 2
    new-instance v7, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, v7

    move v4, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/downloader/DownloadStatistics;-><init>(IIIIJ)V

    return-object v7
.end method

.method public static notChanged(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    new-instance v7, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move v3, p0

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/downloader/DownloadStatistics;-><init>(IIIIJ)V

    return-object v7
.end method

.method public static skipped(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    new-instance v7, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move v2, p0

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/downloader/DownloadStatistics;-><init>(IIIIJ)V

    return-object v7
.end method

.method public static success(IJ)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    new-instance v7, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move v1, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/downloader/DownloadStatistics;-><init>(IIIIJ)V

    return-object v7
.end method


# virtual methods
.method public add(Lsk/mimac/slideshow/downloader/DownloadStatistics;)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 4

    iget v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesDownloaded:I

    iget v1, p1, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesDownloaded:I

    add-int/2addr v0, v1

    iput v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesDownloaded:I

    iget v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesSkipped:I

    iget v1, p1, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesSkipped:I

    add-int/2addr v0, v1

    iput v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesSkipped:I

    iget v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesNotChanged:I

    iget v1, p1, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesNotChanged:I

    add-int/2addr v0, v1

    iput v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesNotChanged:I

    iget v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesFailed:I

    iget v1, p1, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesFailed:I

    add-int/2addr v0, v1

    iput v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesFailed:I

    iget-wide v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    iget-wide v2, p1, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    return-object p0
.end method

.method public formatDownloadedBytes()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1f40

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-wide v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    .line 15
    .line 16
    const-string v3, " B"

    .line 17
    .line 18
    :goto_0
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_0
    const-wide/32 v2, 0x7a1200

    .line 24
    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-gez v4, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    .line 36
    .line 37
    const-wide/16 v3, 0x400

    .line 38
    .line 39
    div-long/2addr v1, v3

    .line 40
    const-string v3, " KB"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-wide v2, 0x1dcd65000L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmp-long v4, v0, v2

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    if-gez v4, :cond_2

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-wide v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    .line 58
    .line 59
    const-wide/32 v3, 0x100000

    .line 60
    .line 61
    .line 62
    div-long/2addr v1, v3

    .line 63
    const-string v3, " MB"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-wide v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    .line 70
    .line 71
    const-wide/32 v3, 0x40000000

    .line 72
    .line 73
    .line 74
    div-long/2addr v1, v3

    .line 75
    const-string v3, " GB"

    .line 76
    .line 77
    goto :goto_0
.end method

.method public getDownloadedBytes()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    return-wide v0
.end method

.method public getFilesDownloaded()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesDownloaded:I

    return v0
.end method

.method public getFilesFailed()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesFailed:I

    return v0
.end method

.method public getFilesNotChanged()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesNotChanged:I

    return v0
.end method

.method public getFilesSkipped()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesSkipped:I

    return v0
.end method

.method public getFinished()Lj$/time/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->finished:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public getFinishedFormatted()Ljava/lang/String;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->DATE_TIME_FORMATTER:Lj$/time/format/DateTimeFormatter;

    iget-object v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->finished:Lj$/time/OffsetDateTime;

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->source:Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/UrlUtils;->formatGrabberUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullString()Ljava/lang/String;
    .locals 8

    const-string v0, "file_download_statistics"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesDownloaded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesFailed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesSkipped:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesNotChanged:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->formatDownloadedBytes()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStartMethod()Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->startMethod:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    return-object v0
.end method

.method public getStarted()Lj$/time/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->started:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public getStartedFormatted()Ljava/lang/String;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->DATE_TIME_FORMATTER:Lj$/time/format/DateTimeFormatter;

    iget-object v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->started:Lj$/time/OffsetDateTime;

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->target:Ljava/lang/String;

    return-object v0
.end method

.method public setFinished(Lj$/time/OffsetDateTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->finished:Lj$/time/OffsetDateTime;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->source:Ljava/lang/String;

    return-void
.end method

.method public setStartMethod(Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->startMethod:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    return-void
.end method

.method public setStarted(Lj$/time/OffsetDateTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->started:Lj$/time/OffsetDateTime;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->target:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filesDownloaded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesDownloaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filesSkipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesSkipped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filesNotChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesNotChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filesFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->filesFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsk/mimac/slideshow/downloader/DownloadStatistics;->downloadedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
