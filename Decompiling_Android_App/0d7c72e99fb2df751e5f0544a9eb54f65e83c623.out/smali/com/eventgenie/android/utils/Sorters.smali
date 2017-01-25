.class public Lcom/eventgenie/android/utils/Sorters;
.super Ljava/lang/Object;
.source "Sorters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sort(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/IntentListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "collection":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/IntentListItem;>;"
    new-instance v0, Lcom/eventgenie/android/utils/Sorters$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/Sorters$1;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/eventgenie/android/container/IntentListItem;>;"
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    return-void
.end method

.method public static sortPairs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "collection":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Lcom/eventgenie/android/utils/Sorters$2;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/Sorters$2;-><init>()V

    .line 62
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Pair<Ljava/lang/String;*>;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    return-void
.end method
