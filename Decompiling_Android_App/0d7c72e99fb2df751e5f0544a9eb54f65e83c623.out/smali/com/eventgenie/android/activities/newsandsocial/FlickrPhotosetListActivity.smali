.class public Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "FlickrPhotosetListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;

.field private mUserInfo:Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;)Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mUserInfo:Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->populateList()V

    return-void
.end method

.method private getPhotosets()V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "resoredData":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 93
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->showIndicator(ZZ)V

    .line 94
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 99
    .end local v0    # "resoredData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 96
    .restart local v0    # "resoredData":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/util/List;

    .end local v0    # "resoredData":Ljava/lang/Object;
    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mData:Ljava/util/List;

    .line 97
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->populateList()V

    goto :goto_0
.end method

.method private populateList()V
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrPhotosetAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mData:Ljava/util/List;

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_photoset:I

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v4, v6

    const-string v1, "photo"

    aput-object v1, v4, v7

    const-string v1, "count"

    aput-object v1, v4, v8

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->title:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v7

    sget v1, Lcom/eventgenie/android/R$id;->count:I

    aput v1, v5, v8

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrPhotosetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IJ)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected getListData(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "sets":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v4, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mUserInfo:Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;

    if-eqz v6, :cond_0

    .line 118
    sget v6, Lcom/eventgenie/android/R$string;->media_photo_count_format:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "fmt":Ljava/lang/String;
    const/4 v1, 0x0

    .line 122
    .local v1, "i":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v3, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v6, "photoset_id"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v6, "title"

    sget v7, Lcom/eventgenie/android/R$string;->media_photos_recent:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v6, "photo"

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mUserInfo:Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->getBuddyIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v6, "count"

    sget v7, Lcom/eventgenie/android/R$string;->media_photos_recent_sub:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;

    .line 132
    .local v5, "set":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 133
    .restart local v3    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v6, "photoset_id"

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v6, "title"

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v6, "photo"

    sget-object v7, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->THUMBNAIL:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    invoke-virtual {v5, v7}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->getPrimaryUrl(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v6, "count"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->getPhotoCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    goto :goto_0

    .line 142
    .end local v0    # "fmt":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "set":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    :cond_0
    return-object v4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget-object v0, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v0, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->setContentView(I)V

    .line 71
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFlickr()Lcom/genie_connect/android/db/config/widgets/FlickrConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;->getUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mUserId:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFlickr()Lcom/genie_connect/android/db/config/widgets/FlickrConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getPhotosets()V

    .line 81
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mData:Ljava/util/List;

    .line 175
    .local v0, "d":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "photoset_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "setId":Ljava/lang/String;
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string/jumbo v5, "title"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    .local v3, "title":Ljava/lang/String;
    const-string v4, "photoset_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v4, "window_title"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mData:Ljava/util/List;

    return-object v0
.end method
