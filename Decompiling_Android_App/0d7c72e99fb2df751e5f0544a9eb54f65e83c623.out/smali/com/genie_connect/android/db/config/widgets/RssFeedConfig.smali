.class public final Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "RssFeedConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;
    }
.end annotation


# instance fields
.field private final mFeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->RSSFEED:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v5, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;->mFeeds:Ljava/util/List;

    .line 49
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v5, "feeds"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 56
    .local v1, "feedlist":Lorg/json/JSONArray;
    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 59
    .local v4, "listSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 61
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 62
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;

    invoke-direct {v0, v3}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;-><init>(Lorg/json/JSONObject;)V

    .line 63
    .local v0, "feed":Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;
    iget-object v5, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;->mFeeds:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v0    # "feed":Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    .end local v2    # "i":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "listSize":I
    :cond_3
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;

    const-string/jumbo v5, "title"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "feedUrl"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "defaultThumbnailUrl"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "type"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    .restart local v0    # "feed":Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;
    iget-object v5, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;->mFeeds:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getFeeds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;->mFeeds:Ljava/util/List;

    return-object v0
.end method
