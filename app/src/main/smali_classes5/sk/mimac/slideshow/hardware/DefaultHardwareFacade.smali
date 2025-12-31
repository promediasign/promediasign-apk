.class public Lsk/mimac/slideshow/hardware/DefaultHardwareFacade;
.super Lsk/mimac/slideshow/hardware/ContextHardwareFacade;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/hardware/DefaultHardwareFacade;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/hardware/DefaultHardwareFacade;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/hardware/ContextHardwareFacade;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)Z
    .locals 1

    sget-object p1, Lsk/mimac/slideshow/hardware/DefaultHardwareFacade;->LOG:Lorg/slf4j/Logger;

    const-string v0, "The default hardware facade was initialized"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
