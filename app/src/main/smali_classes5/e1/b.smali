.class public final synthetic Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/InterruptableRunnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/ShowHelper;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lsk/mimac/slideshow/gui/ItemThread;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/b;->a:Lsk/mimac/slideshow/gui/ShowHelper;

    iput-object p2, p0, Le1/b;->b:Ljava/lang/String;

    iput-object p3, p0, Le1/b;->c:Lsk/mimac/slideshow/gui/ItemThread;

    iput p4, p0, Le1/b;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le1/b;->c:Lsk/mimac/slideshow/gui/ItemThread;

    iget v1, p0, Le1/b;->d:I

    iget-object v2, p0, Le1/b;->a:Lsk/mimac/slideshow/gui/ShowHelper;

    iget-object v3, p0, Le1/b;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lsk/mimac/slideshow/ApiService;->a(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V

    return-void
.end method
