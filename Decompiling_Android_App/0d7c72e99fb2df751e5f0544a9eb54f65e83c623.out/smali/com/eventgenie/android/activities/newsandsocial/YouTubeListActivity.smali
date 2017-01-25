.class public Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "YouTubeListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$1;,
        Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;
    }
.end annotation


# instance fields
.field private final MAX_RESULTS:I

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

.field private mTagFilter:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 64
    const/16 v0, 0x32

    iput v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->MAX_RESULTS:I

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getListData(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->populateList()V

    return-void
.end method

.method private getListData(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;)Ljava/util/List;
    .locals 6
    .param p1, "vids"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;",
            ")",
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
    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->get(I)Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    move-result-object v3

    .line 74
    .local v3, "vid":Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v4, "title"

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v4, "thumb"

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->getThumbnailLarge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v4, "date"

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v4, "object"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "vid":Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    :cond_0
    return-object v2
.end method

.method private getVideos()V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "restoredData":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->showIndicator(ZZ)V

    .line 92
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$1;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 97
    .end local v0    # "restoredData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 94
    .restart local v0    # "restoredData":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/util/List;

    .end local v0    # "restoredData":Ljava/lang/Object;
    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mData:Ljava/util/List;

    .line 95
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->populateList()V

    goto :goto_0
.end method

.method private populateList()V
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/YouTubeVideoAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mData:Ljava/util/List;

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_video:I

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v4, v6

    const-string/jumbo v1, "thumb"

    aput-object v1, v4, v7

    const-string v1, "duration"

    aput-object v1, v4, v8

    const-string v1, "date"

    aput-object v1, v4, v9

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->title:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->video:I

    aput v1, v5, v7

    sget v1, Lcom/eventgenie/android/R$id;->duration:I

    aput v1, v5, v8

    sget v1, Lcom/eventgenie/android/R$id;->date:I

    aput v1, v5, v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/adapters/newsandsocial/YouTubeVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IJ)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 149
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget-object v0, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v0, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->setContentView(I)V

    .line 104
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getYouTube()Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;->getUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mUserName:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getYouTube()Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mUserName:Ljava/lang/String;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    .line 113
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    const-string v1, "  "

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getYouTube()Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getVideos()V

    .line 125
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "object"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    .line 132
    .local v1, "vid":Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    const-string/jumbo v2, "video"

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mData:Ljava/util/List;

    return-object v0
.end method
