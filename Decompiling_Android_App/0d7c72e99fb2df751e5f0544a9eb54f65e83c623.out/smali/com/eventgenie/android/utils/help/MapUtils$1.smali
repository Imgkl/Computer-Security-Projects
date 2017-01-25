.class final Lcom/eventgenie/android/utils/help/MapUtils$1;
.super Ljava/lang/Object;
.source "MapUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/MapUtils;->sortByKey(Ljava/util/Map;Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ascending:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/help/MapUtils$1;->val$ascending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/MapUtils$1;->val$ascending:Z

    if-eqz v1, :cond_1

    .line 73
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "o2":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 75
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "o2":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "res":I
    if-gez v0, :cond_2

    move v0, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-ne v0, v2, :cond_0

    .line 79
    const/4 v0, -0x1

    goto :goto_0
.end method
