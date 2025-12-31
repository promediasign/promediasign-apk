.class public final synthetic Le1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/ScreenPasswordHelper;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Landroid/widget/EditText;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/ScreenPasswordHelper;Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/g;->a:Lsk/mimac/slideshow/ScreenPasswordHelper;

    iput-object p2, p0, Le1/g;->b:Landroid/content/Context;

    iput-object p3, p0, Le1/g;->c:Landroid/widget/EditText;

    iput-object p4, p0, Le1/g;->d:Landroid/widget/EditText;

    iput-object p5, p0, Le1/g;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget-object v3, p0, Le1/g;->d:Landroid/widget/EditText;

    iget-object v4, p0, Le1/g;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Le1/g;->a:Lsk/mimac/slideshow/ScreenPasswordHelper;

    iget-object v1, p0, Le1/g;->b:Landroid/content/Context;

    iget-object v2, p0, Le1/g;->c:Landroid/widget/EditText;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lsk/mimac/slideshow/ScreenPasswordHelper;->b(Lsk/mimac/slideshow/ScreenPasswordHelper;Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
