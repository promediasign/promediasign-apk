.class Lsk/mimac/slideshow/display/DisplayHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/display/DisplayHelper;->initializeRightDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/display/DisplayHelper;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/display/DisplayHelper$2;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p2}, Lsk/mimac/slideshow/VolumeManager;->changeVolume(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
