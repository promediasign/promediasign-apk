.class public Lorg/apache/poi/xwpf/model/XMLParagraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field protected paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XMLParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    return-void
.end method


# virtual methods
.method public getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XMLParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    return-object v0
.end method
