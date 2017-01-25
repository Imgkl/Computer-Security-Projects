.class Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
.super Ljava/lang/Object;
.source "AStarNode.java"


# instance fields
.field private cameFrom:Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

.field private g:D

.field private h:D

.field private node:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;DD)V
    .locals 0
    .param p1, "source"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .param p2, "i"    # D
    .param p4, "d"    # D

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->node:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 48
    iput-wide p2, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->g:D

    .line 49
    iput-wide p4, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->h:D

    .line 50
    return-void
.end method


# virtual methods
.method public getCameFrom()Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->cameFrom:Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    return-object v0
.end method

.method public getG()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->g:D

    return-wide v0
.end method

.method public getH()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->h:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->node:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->node:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    return-object v0
.end method

.method public setCameFrom(Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;)V
    .locals 0
    .param p1, "cameFrom"    # Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->cameFrom:Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .line 95
    return-void
.end method

.method public setG(D)V
    .locals 1
    .param p1, "g"    # D

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->g:D

    .line 72
    return-void
.end method

.method public setH(D)V
    .locals 1
    .param p1, "h"    # D

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->h:D

    .line 87
    return-void
.end method

.method public setNode(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V
    .locals 0
    .param p1, "node"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->node:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v4

    .line 119
    .local v4, "x":D
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v6

    .line 120
    .local v6, "y":D
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "naviId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getNode()Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v0

    .line 122
    .local v0, "hallId":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AStarNode[naviId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " , hallId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " , x="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " , y="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
