.class public Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;
.super Ljava/lang/Object;
.source "NewsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/widgets/NewsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsFeed"
.end annotation


# instance fields
.field private final mArticleGroupName:Ljava/lang/String;

.field private final mIcon:Ljava/lang/String;

.field private mIsDashboardFeatureOnly:Z

.field private final mIsRss:Z

.field private final mName:Ljava/lang/String;

.field private final mRssUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mName:Ljava/lang/String;

    .line 81
    const-string v1, "icon"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mIcon:Ljava/lang/String;

    .line 83
    const-string v1, "articleGroup"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    .local v0, "group":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mArticleGroupName:Ljava/lang/String;

    .line 91
    :goto_0
    const-string v1, "isRss"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mIsRss:Z

    .line 92
    const-string v1, "rssUrl"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mRssUrl:Ljava/lang/String;

    .line 93
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mArticleGroupName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getArticleGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mArticleGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRssUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mRssUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDashboardFeaturedOnly()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mIsDashboardFeatureOnly:Z

    return v0
.end method

.method public isRss()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->mIsRss:Z

    return v0
.end method
