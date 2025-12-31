.class public final synthetic Le1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/utils/SuffixEditText;

.field public final synthetic b:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/utils/SuffixEditText;Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/e;->a:Lsk/mimac/slideshow/utils/SuffixEditText;

    iput-object p2, p0, Le1/e;->b:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    iput p3, p0, Le1/e;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le1/e;->b:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    iget v1, p0, Le1/e;->c:I

    iget-object v2, p0, Le1/e;->a:Lsk/mimac/slideshow/utils/SuffixEditText;

    invoke-static {v2, v0, v1, p1, p2}, Lsk/mimac/slideshow/ScreenControlHelper;->a(Lsk/mimac/slideshow/utils/SuffixEditText;Lsk/mimac/slideshow/playlist/PlaylistWrapper;ILandroid/content/DialogInterface;I)V

    return-void
.end method
