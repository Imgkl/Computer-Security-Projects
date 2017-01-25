.class public Lcom/eventgenie/android/adapters/other/ProoferAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProoferAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/other/ProoferAdapter$1;,
        Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;,
        Lcom/eventgenie/android/adapters/other/ProoferAdapter$CustomComparator;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field private mAlphaIndexer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFilter:Landroid/widget/Filter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mNamespace:J

.field private mSections:[Ljava/lang/String;

.field private mSubItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mItems:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$CustomComparator;

    invoke-direct {v0}, Lcom/eventgenie/android/adapters/other/ProoferAdapter$CustomComparator;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    iput-object p2, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mItems:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mContext:Landroid/content/Context;

    .line 78
    iput-wide p3, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mNamespace:J

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mAlphaIndexer:Ljava/util/Map;

    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->calculateIndex()V

    .line 82
    return-void
.end method

.method static synthetic access$102(Lcom/eventgenie/android/adapters/other/ProoferAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/other/ProoferAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/adapters/other/ProoferAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method private setIcon(Landroid/widget/ImageView;Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "event"    # Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .prologue
    .line 184
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getIconURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getIconURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_applist_default:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 191
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized calculateIndex()V
    .locals 12

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mAlphaIndexer:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 95
    iget-object v9, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 98
    .local v7, "size":I
    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 99
    iget-object v9, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getAppTitle()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 102
    .local v8, "title":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 103
    const-string v0, "#"
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .local v0, "c":Ljava/lang/String;
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mAlphaIndexer:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 104
    .end local v0    # "c":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "c":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v0    # "c":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "title":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mAlphaIndexer:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 112
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 113
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v5, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 94
    .end local v2    # "i":I
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "size":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 121
    .restart local v2    # "i":I
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "size":I
    :cond_1
    :try_start_3
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 123
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSections:[Ljava/lang/String;

    .line 124
    iget-object v9, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSections:[Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    monitor-exit p0

    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/adapters/other/ProoferAdapter$ProoferFilter;-><init>(Lcom/eventgenie/android/adapters/other/ProoferAdapter;Lcom/eventgenie/android/adapters/other/ProoferAdapter$1;)V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mFilter:Landroid/widget/Filter;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->getItem(I)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 139
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mAlphaIndexer:Ljava/util/Map;

    iget-object v1, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 144
    iget-object v8, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .line 145
    .local v0, "event":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    move-object v6, p2

    .line 147
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_0

    .line 148
    iget-object v8, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 149
    .local v7, "vi":Landroid/view/LayoutInflater;
    sget v8, Lcom/eventgenie/android/R$layout;->list_item_proofer_app:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 152
    .end local v7    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    if-eqz v0, :cond_1

    .line 153
    sget v8, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, "line1":Landroid/widget/TextView;
    sget v8, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, "line2":Landroid/widget/TextView;
    sget v8, Lcom/eventgenie/android/R$id;->description:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 156
    .local v4, "line3":Landroid/widget/TextView;
    sget v8, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 157
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "locale":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getAppTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Namespace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Locale: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_0
    sget v8, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->mNamespace:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 171
    sget v8, Lcom/eventgenie/android/R$drawable;->list_item_background_selector_featured:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 176
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->setIcon(Landroid/widget/ImageView;Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;)V

    .line 177
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "line1":Landroid/widget/TextView;
    .end local v3    # "line2":Landroid/widget/TextView;
    .end local v4    # "line3":Landroid/widget/TextView;
    .end local v5    # "locale":Ljava/lang/String;
    :cond_1
    return-object v6

    .line 165
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "line1":Landroid/widget/TextView;
    .restart local v3    # "line2":Landroid/widget/TextView;
    .restart local v4    # "line3":Landroid/widget/TextView;
    .restart local v5    # "locale":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :cond_3
    sget v8, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
