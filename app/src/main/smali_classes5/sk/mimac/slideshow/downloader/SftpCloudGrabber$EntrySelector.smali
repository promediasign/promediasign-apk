.class Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/downloader/SftpCloudGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntrySelector"
.end annotation


# instance fields
.field private final entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jcraft/jsch/ChannelSftp$LsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;->entryList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/downloader/SftpCloudGrabber$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;->entryList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public select(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I
    .locals 2

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
