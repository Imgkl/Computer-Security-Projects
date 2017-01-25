.class public final Lcom/genie_connect/android/db/config/widgets/NewsConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "NewsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;
    }
.end annotation


# static fields
.field private static final FEEDS:Ljava/lang/String; = "feeds"


# instance fields
.field private final mFeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 47
    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v5, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 48
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig;->mFeeds:Ljava/util/List;

    .line 52
    const-string v5, "feeds"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 53
    .local v1, "feedlist":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 56
    .local v3, "listSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 58
    .local v4, "o":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 59
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;

    invoke-direct {v0, v4}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;-><init>(Lorg/json/JSONObject;)V

    .line 60
    .local v0, "f":Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;
    iget-object v5, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig;->mFeeds:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v0    # "f":Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    .end local v3    # "listSize":I
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public getFeeds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsConfig;->mFeeds:Ljava/util/List;

    return-object v0
.end method
