.class public final enum Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/downloader/DownloadStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

.field public static final enum API:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

.field public static final enum MANUAL:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

.field public static final enum SCHEDULER:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    sget-object v1, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->MANUAL:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->SCHEDULER:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->API:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->MANUAL:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    new-instance v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    const-string v1, "SCHEDULER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->SCHEDULER:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    new-instance v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    const-string v1, "API"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->API:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    invoke-static {}, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->$values()[Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->$VALUES:[Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->$VALUES:[Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start_method_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
