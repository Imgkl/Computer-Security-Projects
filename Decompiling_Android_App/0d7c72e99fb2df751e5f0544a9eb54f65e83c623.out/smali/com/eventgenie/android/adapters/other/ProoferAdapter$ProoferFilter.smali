.class Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;
.super Landroid/widget/Filter;
.source "ProoferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/other/ProoferAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProoferFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/adapters/other/ProoferAdapter;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/adapters/other/ProoferAdapter;Lcom/eventgenie/android/adapters/other/ProoferAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/adapters/other/ProoferAdapter;
    .param p2, "x1"    # Lcom/eventgenie/android/adapters/other/ProoferAdapter$1;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;-><init>(Lcom/eventgenie/android/adapters/other/ProoferAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "filterString"    # Ljava/lang/CharSequence;

    .prologue
    .line 241
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 242
    .local v3, "results":Landroid/widget/Filter$FilterResults;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "i":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 246
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->access$200(Lcom/eventgenie/android/adapters/other/ProoferAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 247
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->access$200(Lcom/eventgenie/android/adapters/other/ProoferAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .line 249
    .local v2, "item":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getAppTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    .end local v2    # "item":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    :cond_3
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 259
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 268
    .end local v1    # "index":I
    :goto_2
    return-object v3

    .line 262
    :cond_4
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->access$200(Lcom/eventgenie/android/adapters/other/ProoferAdapter;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->access$200(Lcom/eventgenie/android/adapters/other/ProoferAdapter;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 264
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->access$200(Lcom/eventgenie/android/adapters/other/ProoferAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 265
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 231
    iget-object v1, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    # setter for: Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->access$102(Lcom/eventgenie/android/adapters/other/ProoferAdapter;Ljava/util/List;)Ljava/util/List;

    .line 232
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->calculateIndex()V

    .line 233
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;->this$0:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->notifyDataSetChanged()V

    .line 234
    return-void
.end method
