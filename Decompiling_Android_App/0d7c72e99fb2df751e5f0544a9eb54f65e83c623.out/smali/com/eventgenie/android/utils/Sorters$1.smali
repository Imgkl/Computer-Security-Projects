.class final Lcom/eventgenie/android/utils/Sorters$1;
.super Ljava/lang/Object;
.source "Sorters.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/Sorters;->sort(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/eventgenie/android/container/IntentListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/eventgenie/android/utils/Sorters$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/eventgenie/android/container/IntentListItem;Lcom/eventgenie/android/container/IntentListItem;)I
    .locals 2
    .param p1, "lhs"    # Lcom/eventgenie/android/container/IntentListItem;
    .param p2, "rhs"    # Lcom/eventgenie/android/container/IntentListItem;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/eventgenie/android/utils/Sorters$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/eventgenie/android/container/IntentListItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/Sorters$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/eventgenie/android/container/IntentListItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lcom/eventgenie/android/container/IntentListItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/eventgenie/android/container/IntentListItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/utils/Sorters$1;->compare(Lcom/eventgenie/android/container/IntentListItem;Lcom/eventgenie/android/container/IntentListItem;)I

    move-result v0

    return v0
.end method
