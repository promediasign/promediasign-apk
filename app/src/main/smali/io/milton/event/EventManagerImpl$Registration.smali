.class Lio/milton/event/EventManagerImpl$Registration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/event/EventManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Registration"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/milton/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lio/milton/event/EventListener;

.field final synthetic this$0:Lio/milton/event/EventManagerImpl;


# direct methods
.method public constructor <init>(Lio/milton/event/EventManagerImpl;Lio/milton/event/EventListener;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/event/EventListener;",
            "Ljava/lang/Class<",
            "+",
            "Lio/milton/event/Event;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/milton/event/EventManagerImpl$Registration;->this$0:Lio/milton/event/EventManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/milton/event/EventManagerImpl$Registration;->listener:Lio/milton/event/EventListener;

    iput-object p3, p0, Lio/milton/event/EventManagerImpl$Registration;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic access$000(Lio/milton/event/EventManagerImpl$Registration;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lio/milton/event/EventManagerImpl$Registration;->clazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$100(Lio/milton/event/EventManagerImpl$Registration;)Lio/milton/event/EventListener;
    .locals 0

    iget-object p0, p0, Lio/milton/event/EventManagerImpl$Registration;->listener:Lio/milton/event/EventListener;

    return-object p0
.end method
