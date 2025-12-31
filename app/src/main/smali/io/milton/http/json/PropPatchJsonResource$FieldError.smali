.class public Lio/milton/http/json/PropPatchJsonResource$FieldError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/json/PropPatchJsonResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FieldError"
.end annotation


# instance fields
.field private code:I

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lio/milton/http/json/PropPatchJsonResource;


# direct methods
.method public constructor <init>(Lio/milton/http/json/PropPatchJsonResource;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/json/PropPatchJsonResource$FieldError;->this$0:Lio/milton/http/json/PropPatchJsonResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/milton/http/json/PropPatchJsonResource$FieldError;->name:Ljava/lang/String;

    iput-object p3, p0, Lio/milton/http/json/PropPatchJsonResource$FieldError;->description:Ljava/lang/String;

    iput p4, p0, Lio/milton/http/json/PropPatchJsonResource$FieldError;->code:I

    return-void
.end method
