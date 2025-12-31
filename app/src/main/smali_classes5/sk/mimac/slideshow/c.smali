.class public final synthetic Lsk/mimac/slideshow/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/MountListener$CopyAction;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/MountListener$CopyAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/c;->a:Lsk/mimac/slideshow/MountListener$CopyAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/c;->a:Lsk/mimac/slideshow/MountListener$CopyAction;

    invoke-static {v0}, Lsk/mimac/slideshow/MountListener$CopyAction;->a(Lsk/mimac/slideshow/MountListener$CopyAction;)V

    return-void
.end method
