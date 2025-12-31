.class public Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/AppWidgetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppWidgetInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final appLabel:Ljava/lang/String;

.field private final configure:Z

.field private final label:Ljava/lang/String;

.field private final provider:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->getAppLabel(Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->label:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->provider:Ljava/lang/String;

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->configure:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Lsk/mimac/slideshow/utils/AppWidgetUtils$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method private getAppLabel(Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetProviderInfo;)Ljava/lang/String;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p2}, LA/e;->d(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->compareTo(Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->appLabel:Ljava/lang/String;

    iget-object v1, p1, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->label:Ljava/lang/String;

    iget-object p1, p1, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;

    iget-object v2, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->appLabel:Ljava/lang/String;

    iget-object v3, p1, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->label:Ljava/lang/String;

    iget-object p1, p1, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->appLabel:Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->label:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConfigure()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/utils/AppWidgetUtils$AppWidgetInfo;->configure:Z

    return v0
.end method
