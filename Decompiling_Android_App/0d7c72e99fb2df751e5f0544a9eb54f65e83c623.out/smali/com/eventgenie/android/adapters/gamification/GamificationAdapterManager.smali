.class public Lcom/eventgenie/android/adapters/gamification/GamificationAdapterManager;
.super Ljava/lang/Object;
.source "GamificationAdapterManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/eventgenie/android/adapters/gamification/GameAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_entity_game:I

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    const-string/jumbo v1, "thumbUrl"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v6

    const-string v6, "name"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getGameFeatures()Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;

    move-result-object v7

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/gamification/GameAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    return-object v0
.end method

.method public static getLeaderboardGlobalAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;Ljava/lang/String;J)Landroid/widget/ArrayAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p3, "entityType"    # Ljava/lang/String;
    .param p4, "entityId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getPlayerFeatures()Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;

    move-result-object v4

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v7, p3

    move-wide v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/features/GmListModifier;JLjava/lang/String;J)V

    return-object v0
.end method

.method public static getLeaderboardScopedAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;Ljava/lang/String;J)Landroid/widget/ArrayAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p3, "entity"    # Ljava/lang/String;
    .param p4, "entityId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    const-string/jumbo v0, "trophies"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget v4, Lcom/eventgenie/android/R$layout;->list_item_leaderboard_trophy:I

    .line 121
    .local v4, "layoutId":I
    :goto_0
    new-instance v0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getPlayerFeatures()Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;

    move-result-object v3

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p2

    move-object v7, p3

    move-wide v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/features/GmListModifier;IJLjava/lang/String;J)V

    return-object v0

    .line 115
    .end local v4    # "layoutId":I
    :cond_0
    const-string v0, "games"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget v4, Lcom/eventgenie/android/R$layout;->list_item_leaderboard_game:I

    .restart local v4    # "layoutId":I
    goto :goto_0

    .line 118
    .end local v4    # "layoutId":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "layoutId":I
    goto :goto_0
.end method

.method public static getPlayerComparisonAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p3, "entity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;"
    const-string/jumbo v0, "trophies"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget v6, Lcom/eventgenie/android/R$layout;->list_item_trophy_compare:I

    .line 98
    .local v6, "layoutId":I
    :goto_0
    new-instance v1, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;JILjava/lang/String;)V

    return-object v1

    .line 92
    .end local v6    # "layoutId":I
    :cond_0
    const-string v0, "games"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget v6, Lcom/eventgenie/android/R$layout;->list_item_trophy_compare:I

    .restart local v6    # "layoutId":I
    goto :goto_0

    .line 95
    .end local v6    # "layoutId":I
    :cond_1
    sget v6, Lcom/eventgenie/android/R$layout;->list_item_trophy_compare:I

    .restart local v6    # "layoutId":I
    goto :goto_0
.end method

.method public static getPlayerListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/eventgenie/android/adapters/gamification/PlayerAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_entity_player:I

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    const-string v6, "name"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getPlayerFeatures()Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;

    move-result-object v7

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/gamification/PlayerAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    return-object v0
.end method

.method public static getTrophyListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_entity_trophy:I

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    const-string v6, "name"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getTrophyFeatures()Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;

    move-result-object v7

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    return-object v0
.end method

.method public static getTrophyThresholdAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;

    invoke-direct {v0, p0, p2, p1}, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;)V

    return-object v0
.end method
