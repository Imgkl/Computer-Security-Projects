.class public final Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
.super Ljava/lang/Object;
.source "NavigationResult.java"


# instance fields
.field private final mDestination:Ljava/lang/String;

.field private final mOrigin:Ljava/lang/String;

.field private final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "navigationPoints":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getMapId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mOrigin:Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getMapId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mDestination:Ljava/lang/String;

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    .line 50
    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mOrigin:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mDestination:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public calculateHallToLoad(Ljava/lang/String;J)J
    .locals 10
    .param p1, "naviID"    # Ljava/lang/String;
    .param p2, "currentHall"    # J

    .prologue
    const-wide/16 v6, -0x1

    .line 77
    const/4 v3, -0x1

    .line 79
    .local v3, "index":I
    cmp-long v5, p2, v6

    if-nez v5, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-wide v6

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 84
    .local v4, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getType()I

    move-result v5

    const/16 v8, 0x33

    if-ne v5, v8, :cond_2

    .line 85
    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    iget-object v5, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    .line 91
    .end local v4    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    :cond_3
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 92
    iget-object v5, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 93
    .local v1, "before":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    iget-object v5, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    add-int/lit8 v8, v3, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 95
    .local v0, "after":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v8

    cmp-long v5, v8, p2

    if-eqz v5, :cond_4

    .line 96
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v6

    goto :goto_0

    .line 98
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v8

    cmp-long v5, v8, p2

    if-eqz v5, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v6

    goto :goto_0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public getNavigationPointsSize()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mDestination:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationResult[From:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / steps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
