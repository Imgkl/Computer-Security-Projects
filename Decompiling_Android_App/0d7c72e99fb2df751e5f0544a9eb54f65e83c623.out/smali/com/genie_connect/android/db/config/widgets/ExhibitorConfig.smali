.class public Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;
.super Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
.source "ExhibitorConfig.java"


# instance fields
.field private final mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private final mCountry:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private final mEnableNetworking:Z

.field private final mEnableSharing:Z

.field private final mFeatured:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private final mSeqNo:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private final mShowActivityStream:Z

.field private final mShowType:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 52
    if-eqz p1, :cond_0

    const-string v0, "aToZ"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 54
    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mSeqNo:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 55
    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mCountry:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 56
    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mFeatured:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 57
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mShowActivityStream:Z

    .line 58
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mEnableSharing:Z

    .line 59
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mEnableNetworking:Z

    .line 70
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mShowType:Z

    .line 71
    return-void

    .line 61
    :cond_1
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "aToZ"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 62
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "seqNo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mSeqNo:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 63
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "country"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mCountry:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 64
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "featured"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mFeatured:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 65
    const-string v0, "showActivityStream"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mShowActivityStream:Z

    .line 66
    const-string v0, "enableSharing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mEnableSharing:Z

    .line 67
    const-string v0, "enableNetworking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mEnableNetworking:Z

    goto :goto_0
.end method


# virtual methods
.method public enableNetworking()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mEnableNetworking:Z

    return v0
.end method

.method public enableSharing()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mEnableSharing:Z

    return v0
.end method

.method public getAtoz()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public getCountry()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mCountry:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public getFeatured()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mFeatured:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public getSeqNo()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mSeqNo:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public showActivityStream()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mShowActivityStream:Z

    return v0
.end method

.method public showType()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->mShowType:Z

    return v0
.end method
