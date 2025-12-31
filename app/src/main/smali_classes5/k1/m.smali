.class public final synthetic Lk1/m;
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

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/lang/Integer;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/m;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-object p2, p0, Lk1/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lk1/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lk1/m;->d:Ljava/lang/String;

    iput p5, p0, Lk1/m;->e:I

    iput-object p6, p0, Lk1/m;->f:Ljava/lang/String;

    iput-object p7, p0, Lk1/m;->g:Ljava/util/List;

    iput-object p8, p0, Lk1/m;->h:Ljava/lang/Integer;

    iput-boolean p9, p0, Lk1/m;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v7, p0, Lk1/m;->h:Ljava/lang/Integer;

    iget-boolean v8, p0, Lk1/m;->i:Z

    iget-object v0, p0, Lk1/m;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v1, p0, Lk1/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lk1/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lk1/m;->d:Ljava/lang/String;

    iget v4, p0, Lk1/m;->e:I

    iget-object v5, p0, Lk1/m;->f:Ljava/lang/String;

    iget-object v6, p0, Lk1/m;->g:Ljava/util/List;

    invoke-static/range {v0 .. v8}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->e(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Z)V

    return-void
.end method
