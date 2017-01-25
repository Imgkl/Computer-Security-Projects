.class public Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "ProoferDownloadEntitySelectionActivity.java"


# static fields
.field private static final PAGE_TAG:Ljava/lang/String; = "Entity List"


# instance fields
.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    return-void
.end method

.method private addFilterPage(Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 65
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/eventgenie/android/R$layout;->category_filter_list:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "page":Landroid/view/View;
    sget v4, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 68
    .local v2, "list":Landroid/widget/ListView;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 69
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 71
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090010

    invoke-static {}, Lcom/genie_connect/android/services/dss/DataSyncService;->getEntitiesToInitialiseArray()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 77
    sget v4, Lcom/eventgenie/android/R$id;->btn_select_all:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, "bSelectAll":Landroid/widget/Button;
    sget v4, Lcom/eventgenie/android/R$id;->btn_select_none:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 80
    .local v1, "bSelectNone":Landroid/widget/Button;
    new-instance v4, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity$1;-><init>(Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v4, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity$2;-><init>(Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;Landroid/widget/ListView;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object v3
.end method

.method private notifyViewAdaptorChanged()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->notifyDataSetChanged()V

    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    goto :goto_0
.end method

.method private populateUI()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->setupTabs()V

    .line 177
    return-void
.end method

.method private setupButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Download"

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_cancel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    sget v0, Lcom/eventgenie/android/R$layout;->generic_viewpagerindicator:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v1, "Entity Selection"

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 128
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 132
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 133
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->setupButtons()V

    .line 134
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->populateUI()V

    .line 135
    return-void
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v7, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    iget-object v10, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v10}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getCount()I

    move-result v8

    .line 145
    .local v8, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 146
    iget-object v10, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v10, v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 148
    .local v9, "tabContentView":Landroid/view/View;
    sget v10, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 150
    .local v5, "list":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v4

    .line 151
    .local v4, "len":I
    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 154
    .local v0, "checked":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 155
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 156
    invoke-virtual {v5, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 157
    .local v2, "item":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v2    # "item":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "checked":Landroid/util/SparseBooleanArray;
    .end local v3    # "j":I
    .end local v4    # "len":I
    .end local v5    # "list":Landroid/widget/ListView;
    .end local v9    # "tabContentView":Landroid/view/View;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 163
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 164
    .local v6, "result":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ PROOFERENTITYSELECTION: About to initialise:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->toString([Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 165
    invoke-static {p0, v6}, Lcom/eventgenie/android/utils/help/ProoferUtils;->initialiseData(Landroid/content/Context;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    .line 169
    .end local v6    # "result":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :goto_2
    return-void

    .line 167
    :cond_3
    const-string v10, "Nothing is selected!"

    invoke-static {p0, v10}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->finish()V

    .line 173
    return-void
.end method

.method protected setupTabs()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->clear()V

    .line 190
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v1, "Entity List"

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->addFilterPage(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v2, "Entity List"

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;->notifyViewAdaptorChanged()V

    .line 193
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method
