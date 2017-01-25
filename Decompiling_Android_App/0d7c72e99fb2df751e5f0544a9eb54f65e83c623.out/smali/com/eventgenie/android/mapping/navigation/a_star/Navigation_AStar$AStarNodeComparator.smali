.class public Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar$AStarNodeComparator;
.super Ljava/lang/Object;
.source "Navigation_AStar.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AStarNodeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;)I
    .locals 4
    .param p1, "first"    # Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;
    .param p2, "second"    # Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getG()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getG()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 54
    const/4 v0, -0x1

    .line 58
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getG()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;->getG()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar$AStarNodeComparator;->compare(Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;Lcom/eventgenie/android/mapping/navigation/a_star/AStarNode;)I

    move-result v0

    return v0
.end method
