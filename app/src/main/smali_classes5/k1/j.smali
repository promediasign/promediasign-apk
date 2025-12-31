.class public final synthetic Lk1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lsk/mimac/slideshow/enums/MusicType;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/j;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-object p2, p0, Lk1/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lk1/j;->c:Ljava/lang/String;

    iput-object p4, p0, Lk1/j;->d:Lsk/mimac/slideshow/enums/MusicType;

    iput p5, p0, Lk1/j;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk1/j;->d:Lsk/mimac/slideshow/enums/MusicType;

    iget v1, p0, Lk1/j;->e:I

    iget-object v2, p0, Lk1/j;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v3, p0, Lk1/j;->b:Ljava/lang/String;

    iget-object v4, p0, Lk1/j;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->b(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V

    return-void
.end method
