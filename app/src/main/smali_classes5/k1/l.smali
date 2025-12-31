.class public final synthetic Lk1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lsk/mimac/slideshow/enums/MusicType;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/l;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-object p2, p0, Lk1/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lk1/l;->c:Lsk/mimac/slideshow/enums/MusicType;

    iput p4, p0, Lk1/l;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk1/l;->c:Lsk/mimac/slideshow/enums/MusicType;

    iget v1, p0, Lk1/l;->d:I

    iget-object v2, p0, Lk1/l;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v3, p0, Lk1/l;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->q(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V

    return-void
.end method
