.class public Lsk/mimac/slideshow/gui/ListPreference;
.super Landroidx/preference/ListPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lsk/mimac/slideshow/SelectItem;",
        ">",
        "Landroidx/preference/ListPreference;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setItems(Ljava/util/List;Lsk/mimac/slideshow/SelectItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TV;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/SelectItem;

    invoke-interface {v3}, Lsk/mimac/slideshow/SelectItem;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/SelectItem;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setItems([Lsk/mimac/slideshow/SelectItem;Lsk/mimac/slideshow/SelectItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;TV;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lsk/mimac/slideshow/gui/ListPreference;->setItems(Ljava/util/List;Lsk/mimac/slideshow/SelectItem;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
