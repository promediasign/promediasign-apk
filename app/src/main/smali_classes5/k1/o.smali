.class public final synthetic Lk1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/o;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-object p2, p0, Lk1/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lk1/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lk1/o;->d:Ljava/lang/String;

    iput p5, p0, Lk1/o;->e:I

    iput-boolean p6, p0, Lk1/o;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v4, p0, Lk1/o;->e:I

    iget-boolean v5, p0, Lk1/o;->f:Z

    iget-object v0, p0, Lk1/o;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v1, p0, Lk1/o;->b:Ljava/lang/String;

    iget-object v2, p0, Lk1/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lk1/o;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->g(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
