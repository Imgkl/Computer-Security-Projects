.class public final Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
.super Ljava/lang/Object;
.source "MapItemStore.java"


# static fields
.field public static final STARTING_MAP_SIZE:I = 0x3e8


# instance fields
.field private final mapItemCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;",
            ">;"
        }
    .end annotation
.end field

.field private final navIdToMapIdCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->navIdToMapIdCollection:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public addMapItem(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V
    .locals 1
    .param p1, "mapId"    # Ljava/lang/String;
    .param p2, "mapItem"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public containsMapItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "testName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMapIdfromNavId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "naviId"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->navIdToMapIdCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .locals 1
    .param p1, "mapId"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    return-object v0
.end method

.method public getMapItemCount()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getMapItemIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isMapItemsEmpty()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMapItemsNull()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->mapItemCollection:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reLinkCollections()V
    .locals 9

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItemIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 69
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 71
    .local v4, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 73
    .local v3, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    iget-object v7, p0, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->navIdToMapIdCollection:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v3    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .end local v4    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItemIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 79
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 81
    .restart local v4    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 82
    .restart local v3    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getType()I

    move-result v6

    const/16 v7, 0x33

    if-ne v6, v7, :cond_1

    .line 83
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getAdjacencies()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "adj":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapIdfromNavId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v5

    .line 85
    .local v5, "tmpMapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->addAdjacency(Ljava/lang/String;)Z

    goto :goto_1

    .line 89
    .end local v0    # "adj":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .end local v4    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    .end local v5    # "tmpMapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    :cond_2
    return-void
.end method
