.class public Lcom/genie_connect/android/db/config/widgets/PoiConfig;
.super Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
.source "PoiConfig.java"


# static fields
.field public static final EXTERNAL_FEEDBACK_SESSION_PARAM_ID:Ljava/lang/String; = "poi_id"

.field public static final EXTERNAL_FEEDBACK_SESSION_PARAM_TITLE:Ljava/lang/String; = "poi_name"


# instance fields
.field private enableSharing:Z

.field private externalFeedbackURL:Ljava/lang/String;

.field private mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private mCountry:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private mFeatured:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private mShowActivityStream:Z

.field private useExternalFeedback:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 55
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 57
    if-eqz p1, :cond_0

    const-string v0, "aToZ"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "aToZ"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 62
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "country"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->mCountry:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 63
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "featured"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->mFeatured:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 65
    const-string v0, "enableSharing"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->enableSharing:Z

    .line 66
    const-string/jumbo v0, "useExternalFeedback"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->useExternalFeedback:Z

    .line 68
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->useExternalFeedback:Z

    if-eqz v0, :cond_2

    .line 69
    const-string v0, "externalFeedbackURL"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->externalFeedbackURL:Ljava/lang/String;

    .line 72
    :cond_2
    const-string v0, "showActivityStream"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->mShowActivityStream:Z

    goto :goto_0
.end method


# virtual methods
.method public enableSharing()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->enableSharing:Z

    return v0
.end method

.method public getAtoz()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public getCountry()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->mCountry:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public getExternalFeedbackURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->externalFeedbackURL:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatured()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->mFeatured:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public showActivityStream()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->mShowActivityStream:Z

    return v0
.end method

.method public useExternalFeedback()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->useExternalFeedback:Z

    return v0
.end method
