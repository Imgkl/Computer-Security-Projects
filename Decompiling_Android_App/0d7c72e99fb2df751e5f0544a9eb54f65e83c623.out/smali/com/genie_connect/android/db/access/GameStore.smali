.class public final Lcom/genie_connect/android/db/access/GameStore;
.super Ljava/lang/Object;
.source "GameStore.java"


# static fields
.field private static final DEFAULT_GAME_COLOUR:I

.field private static final DEFAULT_TROPHY_COLOUR:I = -0x1000000


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mGameFeaturedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameMaxPointsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameTrophies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGameVisibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGamesScoreStyleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNamespace:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mPlayerGamePointsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerTrophyPointsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTotalScore:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mTrophyMaxThreshold:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrophyTresholds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "#00DDFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/genie_connect/android/db/access/GameStore;->DEFAULT_GAME_COLOUR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mTotalScore:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mNamespace:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    iput-object p2, p0, Lcom/genie_connect/android/db/access/GameStore;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 83
    iput-object p1, p0, Lcom/genie_connect/android/db/access/GameStore;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyTresholds:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mPlayerGamePointsMap:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mPlayerTrophyPointsMap:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameMaxPointsMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameFeaturedMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGamesScoreStyleMap:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameVisibilityMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameTrophies:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyMaxThreshold:Ljava/util/Map;

    .line 93
    return-void
.end method

.method public static final printMap(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ MAPDUMP: Dumping : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 294
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 296
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 298
    .local v2, "value":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ MAPDUMP: Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private reloadAsNeeded()V
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GameStore;->mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GameStore;->reload()V

    .line 288
    :cond_0
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static final sanitiseColor(Ljava/lang/String;I)I
    .locals 1
    .param p0, "colorString"    # Ljava/lang/String;
    .param p1, "fallback"    # I

    .prologue
    .line 303
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 306
    .end local p1    # "fallback":I
    :cond_0
    return p1
.end method

.method public static final sanitiseLong(Ljava/lang/Long;)I
    .locals 6
    .param p0, "input"    # Ljava/lang/Long;

    .prologue
    const/4 v0, 0x0

    .line 312
    if-nez p0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 319
    const v0, 0x7fffffff

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getColourForGame(JJ)I
    .locals 1
    .param p1, "gameId"    # J
    .param p3, "progress"    # J

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 98
    sget v0, Lcom/genie_connect/android/db/access/GameStore;->DEFAULT_GAME_COLOUR:I

    return v0
.end method

.method public getColourForTrophy(JJ)I
    .locals 7
    .param p1, "trophyId"    # J
    .param p3, "progress"    # J

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 103
    iget-object v4, p0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyTresholds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 105
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 107
    .local v0, "color":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 118
    :cond_1
    :goto_0
    const/high16 v4, -0x1000000

    invoke-static {v0, v4}, Lcom/genie_connect/android/db/access/GameStore;->sanitiseColor(Ljava/lang/String;I)I

    move-result v4

    return v4

    .line 110
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 111
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-ltz v4, :cond_3

    .line 112
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v0    # "color":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 113
    .restart local v0    # "color":Ljava/lang/String;
    goto :goto_0
.end method

.method public getMaxGamePoints(J)I
    .locals 3
    .param p1, "gameId"    # J

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 123
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameMaxPointsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/genie_connect/android/db/access/GameStore;->sanitiseLong(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public getMaxTrophyThresholdValue(J)J
    .locals 5
    .param p1, "trophyId"    # J

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 129
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyMaxThreshold:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/help/MapUtils;->getWithFallback(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/genie_connect/android/db/access/GameStore;->sanitiseLong(Ljava/lang/Long;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMyScoreForGame(J)I
    .locals 3
    .param p1, "gameId"    # J

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 135
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mPlayerGamePointsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/genie_connect/android/db/access/GameStore;->sanitiseLong(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public getMyScoreForTrophy(J)I
    .locals 3
    .param p1, "trophyId"    # J

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 140
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mPlayerTrophyPointsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/genie_connect/android/db/access/GameStore;->sanitiseLong(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public getTotalScore()I
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 145
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mTotalScore:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/access/GameStore;->sanitiseLong(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public isGameFeatured(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 150
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameFeaturedMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameFeaturedMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGameVisible(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 159
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameVisibilityMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameVisibilityMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrophyOfGame(JJ)Z
    .locals 3
    .param p1, "trophyId"    # J
    .param p3, "gameId"    # J

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GameStore;->reloadAsNeeded()V

    .line 168
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GameStore;->mGameTrophies:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 170
    .local v0, "gameTrophies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    const/4 v1, 0x0

    .line 173
    :goto_0
    return v1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized reload()V
    .locals 32

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    const-string v28, "^ GAMESTORE: Reload!"

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    .line 180
    .local v4, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mNamespace:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v28, v0

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyTresholds:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->clear()V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mPlayerGamePointsMap:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->clear()V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mPlayerTrophyPointsMap:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->clear()V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getGames()Lcom/genie_connect/android/db/access/DbGames;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/access/DbGames;->getPlayerGamesAndTrophies()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v19

    .line 189
    .local v19, "playergames":Luk/co/alt236/easycursor/EasyCursor;
    :goto_0
    invoke-interface/range {v19 .. v19}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v28

    if-nez v28, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mPlayerGamePointsMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "game"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string/jumbo v30, "totalGamePoints"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mPlayerTrophyPointsMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string/jumbo v29, "trophy"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string/jumbo v30, "totalTrophyPoints"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface/range {v19 .. v19}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    .end local v4    # "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    .end local v19    # "playergames":Luk/co/alt236/easycursor/EasyCursor;
    :catchall_0
    move-exception v28

    monitor-exit p0

    throw v28

    .line 199
    .restart local v4    # "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    .restart local v19    # "playergames":Luk/co/alt236/easycursor/EasyCursor;
    :cond_0
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTrophies()Lcom/genie_connect/android/db/access/DbTrophies;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/access/DbTrophies;->getTrophiesAndThresholds()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v24

    .line 203
    .local v24, "trophies":Luk/co/alt236/easycursor/EasyCursor;
    :goto_1
    invoke-interface/range {v24 .. v24}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v28

    if-nez v28, :cond_2

    .line 204
    const-string v28, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 205
    .local v26, "trophyId":J
    const-string v28, "colour"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "colour":Ljava/lang/String;
    const-string/jumbo v28, "thresholdValue"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 207
    .local v22, "threshold":J
    const-string v28, "game"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 209
    .local v8, "gameId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyTresholds:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyTresholds:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyTresholds:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    new-instance v29, Landroid/util/Pair;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGameTrophies:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lcom/eventgenie/android/utils/help/MapUtils;->addToMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    invoke-interface/range {v24 .. v24}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto/16 :goto_1

    .line 222
    .end local v5    # "colour":Ljava/lang/String;
    .end local v8    # "gameId":J
    .end local v22    # "threshold":J
    .end local v26    # "trophyId":J
    :cond_2
    invoke-interface/range {v24 .. v24}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 223
    :goto_2
    invoke-interface/range {v24 .. v24}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v28

    if-nez v28, :cond_7

    .line 224
    const-string v28, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 225
    .restart local v26    # "trophyId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyTresholds:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 226
    .local v21, "threshList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const-wide/16 v14, 0x0

    .line 228
    .local v14, "max":J
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    .line 229
    :cond_3
    const-wide/16 v14, 0x0

    .line 238
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyMaxThreshold:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-interface/range {v24 .. v24}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_2

    .line 231
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/Pair;

    .line 232
    .local v18, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v28, v28, v14

    if-lez v28, :cond_6

    .line 233
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_3

    .line 241
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "max":J
    .end local v18    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v21    # "threshList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v26    # "trophyId":J
    :cond_7
    invoke-static/range {v24 .. v24}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getGames()Lcom/genie_connect/android/db/access/DbGames;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/access/DbGames;->getAll()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v11

    .line 246
    .local v11, "games":Luk/co/alt236/easycursor/EasyCursor;
    :goto_4
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v28

    if-nez v28, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGameFeaturedMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "id"

    move-object/from16 v0, v29

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string v30, "featured"

    move-object/from16 v0, v30

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGamesScoreStyleMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "id"

    move-object/from16 v0, v29

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string v30, "scoreDisplayStyle"

    move-object/from16 v0, v30

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGameVisibilityMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "id"

    move-object/from16 v0, v29

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string v30, "isVisible"

    move-object/from16 v0, v30

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_4

    .line 262
    :cond_8
    invoke-static {v11}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGameMaxPointsMap:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->clear()V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGameTrophies:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 267
    .local v10, "gameTrophiesIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 268
    .local v8, "gameId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGameTrophies:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Set;

    .line 270
    .local v25, "trophyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    .line 271
    .local v26, "trophyId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mTrophyMaxThreshold:Ljava/util/Map;

    move-object/from16 v28, v0

    const-wide/16 v30, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/help/MapUtils;->getWithFallback(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 272
    .local v16, "maxTrophyScore":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGameMaxPointsMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-wide/16 v30, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v8, v1}, Lcom/eventgenie/android/utils/help/MapUtils;->getWithFallback(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 273
    .local v6, "currentMaxGameScore":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mGameMaxPointsMap:Ljava/util/Map;

    move-object/from16 v28, v0

    add-long v30, v6, v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 278
    .end local v6    # "currentMaxGameScore":J
    .end local v8    # "gameId":Ljava/lang/Long;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "maxTrophyScore":J
    .end local v25    # "trophyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v26    # "trophyId":Ljava/lang/Long;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mNamespace:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v20

    .line 280
    .local v20, "prefs":Lcom/genie_connect/android/prefs/NamespacedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mTotalScore:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v28, v0

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->getVisitorGameScore()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/access/GameStore;->mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    monitor-exit p0

    return-void
.end method
