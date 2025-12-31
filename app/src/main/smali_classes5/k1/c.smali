.class public final synthetic Lk1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/InterruptableRunnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/GuiCreator;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lsk/mimac/slideshow/gui/DisplayItemThread;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/GuiCreator;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/c;->a:Lsk/mimac/slideshow/gui/GuiCreator;

    iput-object p2, p0, Lk1/c;->b:Ljava/util/Map;

    iput-object p3, p0, Lk1/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lk1/c;->d:Ljava/util/List;

    iput-object p5, p0, Lk1/c;->e:Lsk/mimac/slideshow/gui/DisplayItemThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk1/c;->d:Ljava/util/List;

    iget-object v1, p0, Lk1/c;->e:Lsk/mimac/slideshow/gui/DisplayItemThread;

    iget-object v2, p0, Lk1/c;->a:Lsk/mimac/slideshow/gui/GuiCreator;

    iget-object v3, p0, Lk1/c;->b:Ljava/util/Map;

    iget-object v4, p0, Lk1/c;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->f(Lsk/mimac/slideshow/gui/GuiCreator;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void
.end method
