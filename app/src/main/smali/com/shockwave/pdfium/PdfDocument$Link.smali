.class public Lcom/shockwave/pdfium/PdfDocument$Link;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shockwave/pdfium/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Link"
.end annotation


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private destPageIdx:Ljava/lang/Integer;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shockwave/pdfium/PdfDocument$Link;->bounds:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/shockwave/pdfium/PdfDocument$Link;->destPageIdx:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/shockwave/pdfium/PdfDocument$Link;->uri:Ljava/lang/String;

    return-void
.end method
