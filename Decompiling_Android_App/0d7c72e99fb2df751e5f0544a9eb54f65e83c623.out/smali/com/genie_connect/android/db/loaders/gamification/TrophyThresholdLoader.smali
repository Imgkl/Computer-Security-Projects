.class public Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "TrophyThresholdLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mTrophyId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "trophyId"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 52
    iput-wide p3, p0, Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;->mTrophyId:J

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;>;"
    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTrophies()Lcom/genie_connect/android/db/access/DbTrophies;

    move-result-object v3

    iget-wide v4, p0, Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;->mTrophyId:J

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbTrophies;->getThresholdsForTrophy(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 61
    .local v1, "trophies":Luk/co/alt236/easycursor/EasyCursor;
    :goto_0
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    new-instance v2, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;

    invoke-direct {v2, v1}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    .line 64
    .local v2, "trophy":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 69
    .end local v2    # "trophy":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    :cond_0
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 70
    return-object v0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;->cancelLoad()Z

    .line 76
    return-void
.end method
