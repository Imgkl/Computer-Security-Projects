.class public Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;
.super Lcom/commonsware/cwac/endless/EndlessAdapter;
.source "VisitorEndlessAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Lorg/json/JSONArray;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final keywords:Ljava/lang/String;

.field private nextOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapped"    # Landroid/widget/ListAdapter;
    .param p3, "initialOffset"    # I
    .param p4, "keywords"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/endless/EndlessAdapter;-><init>(Landroid/widget/ListAdapter;)V

    .line 56
    iput p3, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->nextOffset:I

    .line 57
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->context:Landroid/content/Context;

    .line 58
    iput-object p4, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->keywords:Ljava/lang/String;

    .line 59
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 60
    return-void
.end method


# virtual methods
.method protected appendCachedData()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    .line 71
    .local v0, "a":Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->data:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->data:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->append(Lorg/json/JSONArray;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected cacheInBackground()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 79
    iget v3, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->nextOffset:I

    if-gez v3, :cond_0

    .line 80
    iput-object v5, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->data:Lorg/json/JSONArray;

    .line 93
    :goto_0
    return v2

    .line 84
    :cond_0
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v3, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    iget-object v3, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->keywords:Ljava/lang/String;

    iget v4, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->nextOffset:I

    invoke-virtual {v0, v3, v4}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getVisitors(Ljava/lang/String;I)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    .line 87
    .local v1, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonArray()Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/platform/json/GenieJsonArray;

    invoke-virtual {v2}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->getRawArray()Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->data:Lorg/json/JSONArray;

    .line 89
    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getNextRangeStart()I

    move-result v2

    iput v2, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->nextOffset:I

    .line 90
    const/4 v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    iput-object v5, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->data:Lorg/json/JSONArray;

    goto :goto_0
.end method

.method protected getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "arg0"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_endless:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "row":Landroid/view/View;
    return-object v0
.end method
