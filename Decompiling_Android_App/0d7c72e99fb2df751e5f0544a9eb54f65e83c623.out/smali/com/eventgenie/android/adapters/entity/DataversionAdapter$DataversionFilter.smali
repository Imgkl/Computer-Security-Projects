.class Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;
.super Landroid/widget/Filter;
.source "DataversionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataversionFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;Lcom/eventgenie/android/adapters/entity/DataversionAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
    .param p2, "x1"    # Lcom/eventgenie/android/adapters/entity/DataversionAdapter$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;-><init>(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .param p1, "filterString"    # Ljava/lang/CharSequence;

    .prologue
    .line 262
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 263
    .local v5, "results":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v1, "i":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 271
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v7, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mItems:Ljava/util/List;
    invoke-static {v7}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->access$100(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 272
    iget-object v7, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mItems:Ljava/util/List;
    invoke-static {v7}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->access$100(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    .line 273
    .local v3, "item":Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "name":Ljava/lang/String;
    # getter for: Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->fullFormatter:Ljava/text/DateFormat;
    invoke-static {}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->access$200()Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getTimestamp()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "time":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "filterAsString":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 280
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    .end local v0    # "filterAsString":Ljava/lang/String;
    .end local v3    # "item":Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    :cond_2
    iput-object v1, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 285
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 294
    .end local v2    # "index":I
    :goto_2
    return-object v5

    .line 288
    :cond_3
    iget-object v7, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mItems:Ljava/util/List;
    invoke-static {v7}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->access$100(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8

    .line 289
    :try_start_0
    iget-object v7, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mItems:Ljava/util/List;
    invoke-static {v7}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->access$100(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 290
    iget-object v7, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mItems:Ljava/util/List;
    invoke-static {v7}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->access$100(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 291
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    # setter for: Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->access$302(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;Ljava/util/List;)Ljava/util/List;

    .line 302
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->calculateIndex()V

    .line 303
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;->this$0:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->notifyDataSetChanged()V

    .line 304
    return-void
.end method
