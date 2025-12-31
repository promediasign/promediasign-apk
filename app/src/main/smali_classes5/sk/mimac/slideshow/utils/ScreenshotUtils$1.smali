.class Lsk/mimac/slideshow/utils/ScreenshotUtils$1;
.super Ljava/io/FileInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/utils/ScreenshotUtils;->getScreencapScreenshot(Ljava/lang/Integer;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$screenshotFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p2, p0, Lsk/mimac/slideshow/utils/ScreenshotUtils$1;->val$screenshotFile:Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/ScreenshotUtils$1;->val$screenshotFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
