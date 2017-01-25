.class public Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;
.super Ljava/lang/Object;
.source "Navigation_AStar.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar$AStarNodeComparator;
    }
.end annotation


# static fields
.field public static final BOOTH_NAME_PREFIX:Ljava/lang/String; = "b."

.field public static final WARP_NAME_PREFIX:Ljava/lang/String; = "w."


# instance fields
.field public final HEURISTIC_EUCLIDIAN:I

.field public final HEURISTIC_MANHATTAN:I

.field private USED_HEURISTIC:I

.field private closeSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;",
            ">;"
        }
    .end annotation
.end field

.field private multiHallRouting:Ljava/lang/Boolean;

.field private myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

.field private openSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;",
            ">;"
        }
    .end annotation
.end field

.field private pQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;",
            ">;"
        }
    .end annotation
.end field

.field source:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

.field target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "mapItemStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .param p2, "isMultihall"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v3, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->HEURISTIC_MANHATTAN:I

    .line 65
    iput v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->HEURISTIC_EUCLIDIAN:I

    .line 67
    iput v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->USED_HEURISTIC:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->openSet:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->closeSet:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0x14

    new-instance v2, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar$AStarNodeComparator;

    invoke-direct {v2}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar$AStarNodeComparator;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->pQueue:Ljava/util/PriorityQueue;

    .line 72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->multiHallRouting:Ljava/lang/Boolean;

    .line 89
    iput-object p1, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .line 90
    iput-object p2, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->multiHallRouting:Ljava/lang/Boolean;

    .line 91
    return-void
.end method

.method private calcHeuristic(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)D
    .locals 8
    .param p1, "pathStartNode"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .param p2, "pathGoalNode"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .prologue
    .line 96
    iget v4, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->USED_HEURISTIC:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 98
    .local v0, "dx":D
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v6

    sub-double v2, v4, v6

    .line 99
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 104
    :goto_0
    return-wide v4

    .line 102
    .end local v0    # "dx":D
    .end local v2    # "dy":D
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 103
    .restart local v0    # "dx":D
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 104
    .restart local v2    # "dy":D
    add-double v4, v0, v2

    goto :goto_0
.end method

.method private getByMapId(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .locals 1
    .param p1, "mapID"    # Ljava/lang/String;

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getByNavId(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .locals 2
    .param p1, "navID"    # Ljava/lang/String;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 245
    :cond_1
    :goto_0
    return-object v0

    .line 238
    :cond_2
    invoke-direct {p0, p1}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->getByMapId(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v0

    .line 240
    .local v0, "item":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-nez v0, :cond_1

    .line 241
    iget-object v1, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapIdfromNavId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->getByMapId(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getValidAdjacencies(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;J)Ljava/util/Set;
    .locals 8
    .param p1, "node"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .param p2, "hallId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;",
            "J)",
            "Ljava/util/Set",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 197
    .local v2, "nodeAdjSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getAdjacencies()Ljava/util/Set;

    move-result-object v3

    .line 200
    .local v3, "strAdjSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    .local v0, "adj":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->getByNavId(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v4

    .line 203
    .local v4, "tmpNode":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v4, :cond_5

    .line 204
    iget-object v5, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->multiHallRouting:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4, p2, p3}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->isThisFromThisHall(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    :cond_1
    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->isDrawable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->source:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getType()I

    move-result v5

    const/16 v6, 0x33

    if-ne v5, v6, :cond_0

    .line 209
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ NAVA*: Node \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'is from a different hall ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " it should be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ NAVA*: Node \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'is null..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "adj":Ljava/lang/String;
    .end local v4    # "tmpNode":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    :cond_6
    return-object v2
.end method


# virtual methods
.method public calculatePath(Ljava/lang/String;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    .locals 23
    .param p1, "boothStart"    # Ljava/lang/String;
    .param p2, "boothTarget"    # Ljava/lang/String;
    .param p3, "hallId"    # J

    .prologue
    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NAVA*: Calculating Path (A*) (\'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\',\'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\') - Hall="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 111
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 112
    :cond_0
    const-string v5, "^ NAVA*: Start and/or Goal node strings is null..."

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 113
    const/4 v5, 0x0

    .line 192
    :goto_0
    return-object v5

    .line 116
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->getByMapId(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->source:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 117
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->getByMapId(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->source:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    if-nez v5, :cond_3

    .line 120
    :cond_2
    const-string v5, "^ NAVA*: Start and/or Goal node is null..."

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 121
    const/4 v5, 0x0

    goto :goto_0

    .line 124
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NAVA*:                       ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->source:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v10}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v10}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->openSet:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->closeSet:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 130
    new-instance v4, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->source:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->source:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->calcHeuristic(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)D

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;-><init>(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;DD)V

    .line 131
    .local v4, "start":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->openSet:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->source:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v10}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->pQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v5, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 134
    const/4 v12, 0x0

    .line 135
    .local v12, "goal":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->openSet:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->pQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .line 137
    .local v19, "x":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->openSet:Ljava/util/Map;

    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v10}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 139
    const-string v5, "^ NAVA*: ---->                 Route found."

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 141
    move-object/from16 v12, v19

    .line 173
    .end local v19    # "x":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    :cond_5
    if-eqz v12, :cond_b

    .line 174
    new-instance v17, Ljava/util/Stack;

    invoke-direct/range {v17 .. v17}, Ljava/util/Stack;-><init>()V

    .line 175
    .local v17, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    invoke-virtual {v12}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v12}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getCameFrom()Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    move-result-object v16

    .line 180
    .local v16, "parent":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    :goto_1
    if-eqz v16, :cond_9

    .line 181
    invoke-virtual/range {v16 .. v16}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual/range {v16 .. v16}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getCameFrom()Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    move-result-object v16

    goto :goto_1

    .line 144
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    .end local v16    # "parent":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    .restart local v19    # "x":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->closeSet:Ljava/util/Map;

    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v5, v1, v2}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->getValidAdjacencies(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;J)Ljava/util/Set;

    move-result-object v15

    .line 148
    .local v15, "neighbors":Ljava/util/Set;, "Ljava/util/Set<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 149
    .local v7, "neighbor":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->closeSet:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .line 151
    .local v18, "visited":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    if-nez v18, :cond_7

    .line 152
    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getG()D

    move-result-wide v10

    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->calcHeuristic(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)D

    move-result-wide v20

    add-double v8, v10, v20

    .line 153
    .local v8, "g":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->openSet:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .line 155
    .local v6, "n":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    if-nez v6, :cond_8

    .line 157
    new-instance v6, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .end local v6    # "n":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->calcHeuristic(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)D

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;-><init>(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;DD)V

    .line 158
    .restart local v6    # "n":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->setCameFrom(Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->openSet:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->pQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v5, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_8
    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getG()D

    move-result-wide v10

    cmpg-double v5, v8, v10

    if-gez v5, :cond_7

    .line 163
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->setCameFrom(Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;)V

    .line 164
    invoke-virtual {v6, v8, v9}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->setG(D)V

    .line 165
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->target:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->calcHeuristic(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->setH(D)V

    goto :goto_2

    .line 184
    .end local v6    # "n":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    .end local v7    # "neighbor":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .end local v8    # "g":D
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "neighbors":Ljava/util/Set;, "Ljava/util/Set<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    .end local v18    # "visited":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    .end local v19    # "x":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    .restart local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    .restart local v16    # "parent":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    .restart local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    :cond_9
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 185
    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 188
    :cond_a
    new-instance v5, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-direct {v5, v14}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    .line 191
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    .end local v16    # "parent":Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    :cond_b
    const-string v5, "^ NAVA*: ---->                 Route NOT found."

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 192
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public getMultiHallRouting()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->multiHallRouting:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setMultiHallRouting(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "multiHallRouting"    # Ljava/lang/Boolean;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->multiHallRouting:Ljava/lang/Boolean;

    .line 85
    return-void
.end method
