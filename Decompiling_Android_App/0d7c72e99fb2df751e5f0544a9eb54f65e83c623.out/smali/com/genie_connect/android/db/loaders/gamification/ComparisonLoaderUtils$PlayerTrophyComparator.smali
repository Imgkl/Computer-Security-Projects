.class Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$PlayerTrophyComparator;
.super Ljava/lang/Object;
.source "ComparisonLoaderUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerTrophyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$1;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$PlayerTrophyComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)I
    .locals 4
    .param p1, "first"    # Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    .param p2, "second"    # Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftProgressValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftProgressValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 113
    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftProgressValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftProgressValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils$PlayerTrophyComparator;->compare(Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)I

    move-result v0

    return v0
.end method
