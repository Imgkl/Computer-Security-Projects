.class public Lcom/eventgenie/android/activities/others/SurveysListActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "SurveysListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "^ SurveysListActivity"


# instance fields
.field private mEnabledItemClick:Z

.field private mListViewSubmitted:Landroid/widget/ListView;

.field private mListViewUnsubmitted:Landroid/widget/ListView;

.field private mPagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

.field private mSubmittedList:Ljava/util/List;
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

.field private mUnsubmittedList:Ljava/util/List;
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

.field protected final mUpdatedLiveSyncSurveys:Landroid/content/BroadcastReceiver;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private repo:Lcom/genie_connect/android/repository/SurveyRepository;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mEnabledItemClick:Z

    .line 184
    new-instance v0, Lcom/eventgenie/android/activities/others/SurveysListActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/SurveysListActivity$1;-><init>(Lcom/eventgenie/android/activities/others/SurveysListActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUpdatedLiveSyncSurveys:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/SurveysListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SurveysListActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->refreshLists()V

    return-void
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/others/SurveysListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SurveysListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mEnabledItemClick:Z

    return p1
.end method

.method private getListData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/Survey;",
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
    .line 54
    .local p1, "surveys":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/Survey;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/model/Survey;

    .line 57
    .local v3, "survey":Lcom/genie_connect/common/db/model/Survey;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "id"

    iget-object v5, v3, Lcom/genie_connect/common/db/model/Survey;->id:Ljava/lang/Long;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v4, "name"

    iget-object v5, v3, Lcom/genie_connect/common/db/model/Survey;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v4, "url"

    iget-object v5, v3, Lcom/genie_connect/common/db/model/Survey;->url:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v4, "date"

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    iget-object v6, v3, Lcom/genie_connect/common/db/model/Survey;->id:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/repository/SurveyRepository;->getSubmissionDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v1    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "survey":Lcom/genie_connect/common/db/model/Survey;
    :cond_0
    return-object v2
.end method

.method private refreshLists()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    const-string v2, "^ SurveysListActivity refreshing lists ..."

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v2

    const-class v3, Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v2, v3}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/SurveyRepository;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    .line 136
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v2}, Lcom/genie_connect/android/repository/SurveyRepository;->getAllUnsubmittedSurveys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getListData(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUnsubmittedList:Ljava/util/List;

    .line 137
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v2}, Lcom/genie_connect/android/repository/SurveyRepository;->getAllSubmittedSurveys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getListData(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mSubmittedList:Ljava/util/List;

    .line 139
    new-instance v0, Lcom/eventgenie/android/adapters/other/SurveysAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mSubmittedList:Ljava/util/List;

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_text_with_date:I

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v7

    const-string v5, "date"

    aput-object v5, v4, v8

    new-array v5, v6, [I

    sget v6, Lcom/eventgenie/android/R$id;->text:I

    aput v6, v5, v7

    sget v6, Lcom/eventgenie/android/R$id;->date:I

    aput v6, v5, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/adapters/other/SurveysAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 144
    .local v0, "submittedSurveysAdapter":Lcom/eventgenie/android/adapters/other/SurveysAdapter;
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewSubmitted:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/other/SurveysAdapter;->notifyDataSetChanged()V

    .line 147
    new-instance v1, Lcom/eventgenie/android/adapters/other/SurveysAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUnsubmittedList:Ljava/util/List;

    sget v4, Lcom/eventgenie/android/R$layout;->list_item_text:I

    new-array v5, v8, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v5, v7

    new-array v6, v8, [I

    sget v2, Lcom/eventgenie/android/R$id;->text:I

    aput v2, v6, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/eventgenie/android/adapters/other/SurveysAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 152
    .local v1, "unsubmittedSurveysAdapter":Lcom/eventgenie/android/adapters/other/SurveysAdapter;
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewUnsubmitted:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    invoke-virtual {v1}, Lcom/eventgenie/android/adapters/other/SurveysAdapter;->notifyDataSetChanged()V

    .line 155
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v6, "syncFilter":Landroid/content/IntentFilter;
    const-string v0, "LSS_BROADCAST"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUpdatedLiveSyncSurveys:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v1, Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/SurveyRepository;

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v0}, Lcom/genie_connect/android/repository/SurveyRepository;->getAllUnsubmittedSurveys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getListData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUnsubmittedList:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v0}, Lcom/genie_connect/android/repository/SurveyRepository;->getAllSubmittedSurveys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getListData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mSubmittedList:Ljava/util/List;

    .line 81
    sget v0, Lcom/eventgenie/android/R$layout;->generic_viewpagerindicator:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewSubmitted:Landroid/widget/ListView;

    .line 85
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewSubmitted:Landroid/widget/ListView;

    new-instance v0, Lcom/eventgenie/android/adapters/other/SurveysAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mSubmittedList:Ljava/util/List;

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_text_with_date:I

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v8

    const-string v1, "date"

    aput-object v1, v4, v9

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->text:I

    aput v1, v5, v8

    sget v1, Lcom/eventgenie/android/R$id;->date:I

    aput v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/adapters/other/SurveysAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewUnsubmitted:Landroid/widget/ListView;

    .line 91
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewUnsubmitted:Landroid/widget/ListView;

    new-instance v0, Lcom/eventgenie/android/adapters/other/SurveysAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUnsubmittedList:Ljava/util/List;

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_text:I

    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v8

    new-array v5, v9, [I

    sget v1, Lcom/eventgenie/android/R$id;->text:I

    aput v1, v5, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/adapters/other/SurveysAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewUnsubmitted:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 98
    new-instance v0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mViewPagerAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 100
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mViewPagerAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewUnsubmitted:Landroid/widget/ListView;

    sget v2, Lcom/eventgenie/android/R$string;->survey_tab_title_active:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mViewPagerAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mListViewSubmitted:Landroid/widget/ListView;

    sget v2, Lcom/eventgenie/android/R$string;->survey_tab_title_submitted:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mViewPagerAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mPagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mPagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mPagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->showAdvert()V

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onDestroy()V

    .line 117
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUpdatedLiveSyncSurveys:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v4, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mEnabledItemClick:Z

    if-nez v4, :cond_0

    .line 179
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUnsubmittedList:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 167
    .local v2, "surveyId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mUnsubmittedList:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string/jumbo v5, "url"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "surveyUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/genie_connect/android/repository/SurveyRepository;->hasPermissionToOpen(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    const-string v4, "surveys"

    invoke-static {p0, v4, v2}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifySurveyOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/eventgenie/android/activities/others/WebViewActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "url_param"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mEnabledItemClick:Z

    goto :goto_0

    .line 176
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->repo:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v4, v2}, Lcom/genie_connect/android/repository/SurveyRepository;->getPermissionGroupFailureMessage(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;

    sget-object v6, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-direct {v5, v1, v6}, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;-><init>(Ljava/lang/String;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onResume()V

    .line 124
    const-string v0, "^ SurveysListActivity fire a VisitorSurveys sync..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "visitorsurveys"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 126
    return-void
.end method
