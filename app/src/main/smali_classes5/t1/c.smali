.class public final synthetic Lt1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/userinput/DrawerItemClickListener;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/userinput/DrawerItemClickListener;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/c;->a:Lsk/mimac/slideshow/userinput/DrawerItemClickListener;

    iput-object p2, p0, Lt1/c;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lt1/c;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lt1/c;->d:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lt1/c;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lt1/c;->d:Landroid/app/AlertDialog;

    iget-object v2, p0, Lt1/c;->a:Lsk/mimac/slideshow/userinput/DrawerItemClickListener;

    iget-object v3, p0, Lt1/c;->b:Landroid/widget/EditText;

    invoke-static {v2, v3, v0, v1, p1}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->c(Lsk/mimac/slideshow/userinput/DrawerItemClickListener;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
