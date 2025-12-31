.class public Lsk/mimac/slideshow/gui/input/DummyVideoInputView;
.super Lsk/mimac/slideshow/gui/input/VideoInputView;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/input/DummyVideoInputView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/input/DummyVideoInputView;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/input/VideoInputView;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    return-void
.end method

.method public show(Ljava/lang/String;IIZI)V
    .locals 0

    sget-object p1, Lsk/mimac/slideshow/gui/input/DummyVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Allow camera permission in the settings before using video input"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method
