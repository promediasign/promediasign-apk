.class Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;
.super Lcom/google/api/services/drive/DriveRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->downloadFile(Ljava/lang/String;Ljava/io/FileOutputStream;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;

.field final synthetic val$pdfLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;->this$0:Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;

    iput-object p7, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;->val$pdfLink:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 8

    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    iget-object v1, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;->val$pdfLink:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->GOOGLE_DOCS_CONVERT_PARAMS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
