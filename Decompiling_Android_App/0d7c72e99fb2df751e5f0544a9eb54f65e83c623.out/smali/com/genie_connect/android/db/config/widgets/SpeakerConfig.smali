.class public Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;
.super Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
.source "SpeakerConfig.java"


# instance fields
.field private final mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private final mEnableSharing:Z

.field private final mShowActivityStream:Z

.field private final mShowMugshot:Z

.field private final mShowRelatedDownloadables:Z

.field private final mShowRelatedSessions:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 50
    if-eqz p1, :cond_0

    const-string v0, "aToZ"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 52
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mEnableSharing:Z

    .line 53
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowRelatedSessions:Z

    .line 54
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowMugshot:Z

    .line 55
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowActivityStream:Z

    .line 64
    :goto_0
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowRelatedDownloadables:Z

    .line 65
    return-void

    .line 58
    :cond_1
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "aToZ"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 59
    const-string v0, "enableSharing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mEnableSharing:Z

    .line 60
    const-string v0, "showMugshot"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowMugshot:Z

    .line 61
    const-string v0, "showActivityStream"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowActivityStream:Z

    .line 62
    const-string v0, "showRelatedSessions"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowRelatedSessions:Z

    goto :goto_0
.end method


# virtual methods
.method public enableSharing()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mEnableSharing:Z

    return v0
.end method

.method public getAtoz()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public showActivityStream()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowActivityStream:Z

    return v0
.end method

.method public showMugshot()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowMugshot:Z

    return v0
.end method

.method public showRelatedDownloadables()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowRelatedDownloadables:Z

    return v0
.end method

.method public showRelatedSessions()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->mShowRelatedSessions:Z

    return v0
.end method
