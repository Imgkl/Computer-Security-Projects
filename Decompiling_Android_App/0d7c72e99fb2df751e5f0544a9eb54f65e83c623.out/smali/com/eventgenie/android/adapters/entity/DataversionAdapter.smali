.class public Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataversionAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/entity/DataversionAdapter$1;,
        Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;,
        Lcom/eventgenie/android/adapters/entity/DataversionAdapter$CustomComparator;
    }
.end annotation


# static fields
.field private static final HASH:Ljava/lang/String; = "#"

.field private static final fullFormatter:Ljava/text/DateFormat;


# instance fields
.field final TAG:Ljava/lang/String;

.field private final mAlphaIndexer:Ljava/util/Map;
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

.field private final mCurrentDataversion:Ljava/lang/String;

.field private mFilter:Landroid/widget/Filter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:[Ljava/lang/String;

.field private mSubItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    const/4 v0, 0x2

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "GB"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->fullFormatter:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "currentDataversion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "dataversionList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mItems:Ljava/util/List;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$CustomComparator;

    invoke-direct {v0}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$CustomComparator;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    iput-object p2, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;

    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mItems:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mContext:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mCurrentDataversion:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mAlphaIndexer:Ljava/util/Map;

    .line 89
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->calculateIndex()V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->fullFormatter:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$302(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;

    return-object p1
.end method

.method private static getStatusString(Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;)Ljava/lang/String;
    .locals 2
    .param p0, "dataversion"    # Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    .prologue
    const/4 v1, 0x4

    .line 227
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getLiveStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 228
    const-string v0, "Published"

    .line 232
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getLiveStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 230
    const-string v0, "Staging"

    goto :goto_0

    .line 232
    :cond_1
    const-string v0, "???"

    goto :goto_0
.end method

.method private static setIcon(Landroid/widget/ImageView;Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;)V
    .locals 1
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "ver"    # Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    .prologue
    .line 237
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    return-void
.end method


# virtual methods
.method public declared-synchronized calculateIndex()V
    .locals 12

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mAlphaIndexer:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 95
    iget-object v9, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 98
    .local v7, "size":I
    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 99
    iget-object v9, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getName()Ljava/lang/String;
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
    iget-object v9, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mAlphaIndexer:Ljava/util/Map;

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
    iget-object v9, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mAlphaIndexer:Ljava/util/Map;

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

    iput-object v9, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSections:[Ljava/lang/String;

    .line 124
    iget-object v9, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSections:[Ljava/lang/String;

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
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$DataversionFilter;-><init>(Lcom/eventgenie/android/adapters/entity/DataversionAdapter;Lcom/eventgenie/android/adapters/entity/DataversionAdapter$1;)V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mFilter:Landroid/widget/Filter;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->getItem(I)Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSections:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 154
    .local v0, "maxIndex":I
    if-le p1, v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mAlphaIndexer:Ljava/util/Map;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 157
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mAlphaIndexer:Ljava/util/Map;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSections:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 173
    iget-object v10, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mSubItems:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    .line 174
    .local v0, "dataversion":Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;
    move-object/from16 v8, p2

    .line 176
    .local v8, "v":Landroid/view/View;
    if-nez v8, :cond_0

    .line 177
    iget-object v10, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 178
    .local v9, "vi":Landroid/view/LayoutInflater;
    sget v10, Lcom/eventgenie/android/R$layout;->list_item_entity_dataversion:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 181
    .end local v9    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    if-eqz v0, :cond_1

    .line 182
    sget v10, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 183
    .local v5, "name":Landroid/widget/TextView;
    sget v10, Lcom/eventgenie/android/R$id;->type:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 184
    .local v7, "status":Landroid/widget/TextView;
    sget v10, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 185
    .local v6, "size":Landroid/widget/TextView;
    sget v10, Lcom/eventgenie/android/R$id;->description:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 186
    .local v2, "description":Landroid/widget/TextView;
    sget v10, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 187
    .local v4, "icon":Landroid/widget/ImageView;
    sget v10, Lcom/eventgenie/android/R$id;->divider:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 188
    .local v3, "divider":Landroid/view/View;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getApproximateJsonSize()Ljava/lang/Long;

    move-result-object v1

    .line 191
    .local v1, "deltaSize":Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->getStatusString(Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    if-eqz v1, :cond_4

    .line 195
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/genie_connect/android/utils/string/StringUtils;->getHumanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x200000

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    .line 198
    const-string v10, "#99CC00"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Created at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->fullFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getTimestamp()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    sget v10, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v10, p0, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->mCurrentDataversion:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 214
    sget v10, Lcom/eventgenie/android/R$drawable;->list_item_background_selector_featured:I

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    :goto_1
    invoke-static {v4, v0}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->setIcon(Landroid/widget/ImageView;Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;)V

    .line 220
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    .end local v1    # "deltaSize":Ljava/lang/Long;
    .end local v2    # "description":Landroid/widget/TextView;
    .end local v3    # "divider":Landroid/view/View;
    .end local v4    # "icon":Landroid/widget/ImageView;
    .end local v5    # "name":Landroid/widget/TextView;
    .end local v6    # "size":Landroid/widget/TextView;
    .end local v7    # "status":Landroid/widget/TextView;
    :cond_1
    return-object v8

    .line 199
    .restart local v1    # "deltaSize":Ljava/lang/Long;
    .restart local v2    # "description":Landroid/widget/TextView;
    .restart local v3    # "divider":Landroid/view/View;
    .restart local v4    # "icon":Landroid/widget/ImageView;
    .restart local v5    # "name":Landroid/widget/TextView;
    .restart local v6    # "size":Landroid/widget/TextView;
    .restart local v7    # "status":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x300000

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    .line 200
    const-string v10, "#FFCC00"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 202
    :cond_3
    const-string v10, "#CC0033"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 205
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_5
    sget v10, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
