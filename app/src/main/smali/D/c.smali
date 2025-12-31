.class public final synthetic LD/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Lorg/mozilla/javascript/ContextAction;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/EditTextPreference$OnBindEditTextListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, LD/c;->a:I

    iput-object p1, p0, LD/c;->b:Ljava/lang/Object;

    iput-object p2, p0, LD/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 2

    .line 1
    iget v0, p0, LD/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[IILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    .line 1
    iget-object v0, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v1, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->a(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;Landroidx/media3/common/Format;)[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, LI/c;->a(Landroidx/media3/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LI/c;->b(Landroidx/media3/extractor/ExtractorsFactory;Z)Landroidx/media3/extractor/ExtractorsFactory;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, LD/c;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Player$Commands;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->d0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/VideoSize;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->e(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/MediaMetadata;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->Z(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/TrackSelectionParameters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->q(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/text/CueGroup;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->y(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/DeviceInfo;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->W(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->T(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Tracks;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->b0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Metadata;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->Y(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->P(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 2

    .line 2
    iget-object v0, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Player;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-static {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->C(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method

.method public onBindEditText(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    iget-object v0, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v1, [Landroid/text/InputFilter;

    invoke-static {v0, v1, p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->e(Ljava/lang/Integer;[Landroid/text/InputFilter;Landroid/widget/EditText;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/settings/SettingsFragment;

    iget-object v1, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/EditTextPreference;

    invoke-static {v0, v1, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->a(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object v0, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/settings/SettingsFragment;

    iget-object v1, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v0, v1, p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->h(Lsk/mimac/slideshow/settings/SettingsFragment;Landroid/content/ComponentName;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LD/c;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, LD/c;->c:Ljava/lang/Object;

    check-cast v1, Lorg/mozilla/javascript/Script;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->a([Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LI/c;->c(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;

    move-result-object p1

    return-object p1
.end method
