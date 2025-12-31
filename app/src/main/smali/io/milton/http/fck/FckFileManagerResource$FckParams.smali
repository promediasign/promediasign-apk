.class abstract Lio/milton/http/fck/FckFileManagerResource$FckParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/fck/FckFileManagerResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FckParams"
.end annotation


# instance fields
.field final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field target:Lio/milton/resource/CollectionResource;

.field final synthetic this$0:Lio/milton/http/fck/FckFileManagerResource;


# direct methods
.method public constructor <init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->params:Ljava/util/Map;

    return-void
.end method
