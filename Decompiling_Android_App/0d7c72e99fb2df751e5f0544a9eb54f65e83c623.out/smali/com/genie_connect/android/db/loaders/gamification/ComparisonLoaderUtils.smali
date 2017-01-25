.class Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;
.super Ljava/lang/Object;
.source "ComparisonLoaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$1;,
        Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$PlayerTrophyComparator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static calcHighestThreshold(Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    .locals 9
    .param p0, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p1, "trophyId"    # J

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTrophies()Lcom/genie_connect/android/db/access/DbTrophies;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/genie_connect/android/db/access/DbTrophies;->getThresholdsForTrophy(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 48
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    const/4 v1, 0x0

    .line 50
    .local v1, "result":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    :goto_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 51
    if-nez v1, :cond_1

    .line 52
    new-instance v1, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;

    .end local v1    # "result":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    invoke-direct {v1, v0}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    .line 60
    .restart local v1    # "result":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    :cond_0
    :goto_1
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 54
    :cond_1
    new-instance v2, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;

    invoke-direct {v2, v0}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    .line 55
    .local v2, "tmp":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getThresholdValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getThresholdValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 56
    move-object v1, v2

    goto :goto_1

    .line 62
    .end local v2    # "tmp":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    :cond_2
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 63
    if-nez v1, :cond_3

    .line 64
    new-instance v1, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;

    .end local v1    # "result":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    invoke-direct {v1}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;-><init>()V

    .line 66
    .restart local v1    # "result":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    :cond_3
    return-object v1
.end method

.method public static getAppPlayerCompareItemForGame(Ljava/util/List;J)Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;
    .locals 5
    .param p1, "gameId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;",
            ">;J)",
            "Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;

    .line 88
    .local v1, "item":Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getGame()Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 91
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-direct {v3}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v1    # "item":Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sanitiseList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 77
    .local v1, "pg":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->wasIncludedVisitorInitiallyNull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 82
    .end local v1    # "pg":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    :cond_1
    return-object p0
.end method

.method public static sortList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;"
    new-instance v0, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$PlayerTrophyComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$PlayerTrophyComparator;-><init>(Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$1;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    return-object p0
.end method
