.class Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader$MapItemComparator;
.super Ljava/lang/Object;
.source "Map2DActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/eventgenie/android/ui/mapping2d/MapItemView;",
        "Landroid/widget/AbsoluteLayout$LayoutParams;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;)V
    .locals 0

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader$MapItemComparator;->this$1:Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;
    .param p2, "x1"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader$MapItemComparator;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/eventgenie/android/ui/mapping2d/MapItemView;",
            "Landroid/widget/AbsoluteLayout$LayoutParams;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/eventgenie/android/ui/mapping2d/MapItemView;",
            "Landroid/widget/AbsoluteLayout$LayoutParams;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1255
    .local p1, "lhs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;"
    .local p2, "rhs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getzOrder()I

    move-result v0

    .line 1256
    .local v0, "z1":I
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getzOrder()I

    move-result v1

    .line 1258
    .local v1, "z2":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1252
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/util/Pair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader$MapItemComparator;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
