.class public abstract Lsk/mimac/slideshow/gui/input/VideoInputView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected onErrorListener:Lsk/mimac/slideshow/utils/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearSurface()V
.end method

.method public abstract hide()V
.end method

.method public setOnErrorListener(Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    return-void
.end method

.method public abstract show(Ljava/lang/String;IIZI)V
.end method
