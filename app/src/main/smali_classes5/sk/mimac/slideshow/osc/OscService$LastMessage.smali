.class public Lsk/mimac/slideshow/osc/OscService$LastMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/osc/OscService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastMessage"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:Lj$/time/LocalDateTime;


# direct methods
.method public constructor <init>(Lj$/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDateTime;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/osc/OscService$LastMessage;->timestamp:Lj$/time/LocalDateTime;

    iput-object p2, p0, Lsk/mimac/slideshow/osc/OscService$LastMessage;->address:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/osc/OscService$LastMessage;->arguments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/osc/OscService$LastMessage;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/osc/OscService$LastMessage;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/osc/OscService$LastMessage;->timestamp:Lj$/time/LocalDateTime;

    return-object v0
.end method
