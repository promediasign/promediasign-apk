.class Lsk/mimac/slideshow/downloader/DropboxGrabber$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/DbxSessionStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/downloader/DropboxGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$1;->value:Ljava/lang/String;

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$1;->value:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$1;->value:Ljava/lang/String;

    return-void
.end method
