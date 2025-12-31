.class public Lio/milton/http/webdav/PropFindResponse$NameAndError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/PropFindResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameAndError"
.end annotation


# instance fields
.field private final error:Ljava/lang/String;

.field private final name:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropFindResponse$NameAndError;->name:Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lio/milton/http/webdav/PropFindResponse$NameAndError;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropFindResponse$NameAndError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropFindResponse$NameAndError;->name:Ljavax/xml/namespace/QName;

    return-object v0
.end method
