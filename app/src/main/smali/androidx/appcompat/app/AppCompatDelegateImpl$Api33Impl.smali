.class abstract Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api33Impl"
.end annotation


# direct methods
.method public static getOnBackInvokedDispatcher(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    invoke-static {p0}, Landroidx/activity/c;->c(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static registerOnBackPressedCallback(Ljava/lang/Object;Landroidx/appcompat/app/AppCompatDelegateImpl;)Landroid/window/OnBackInvokedCallback;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/app/a;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-static {p0}, Landroidx/activity/c;->e(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/activity/c;->i(Landroid/window/OnBackInvokedDispatcher;Landroidx/appcompat/app/a;)V

    return-object v0
.end method

.method public static unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Landroidx/activity/c;->b(Ljava/lang/Object;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    invoke-static {p0}, Landroidx/activity/c;->e(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/activity/c;->h(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method
