.class public final synthetic Lsk/mimac/slideshow/http/page/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/a;->a:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Locale;

    check-cast p2, Ljava/util/Locale;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/a;->a:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Lsk/mimac/slideshow/http/page/ItemFormPage;->a(Ljava/util/Locale;Ljava/util/Locale;Ljava/util/Locale;)I

    move-result p1

    return p1
.end method
