.class abstract Landroidx/transition/AnimatorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public static pause(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    return-void
.end method

.method public static resume(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    return-void
.end method
