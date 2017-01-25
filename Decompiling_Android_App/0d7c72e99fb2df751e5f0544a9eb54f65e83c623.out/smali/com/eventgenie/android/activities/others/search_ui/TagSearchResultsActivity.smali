.class public Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "TagSearchResultsActivity.java"

# interfaces
.implements Lcom/eventgenie/android/fragments/base/GenericActivityFragmentMessaging;


# static fields
.field public static final EXTRA_TAG_TEXT_FILTER:Ljava/lang/String; = "EXTRA_TAG_TEXT_FILTER"


# instance fields
.field private mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    return-void
.end method

.method private setupBottomActionbar(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v2, Lcom/eventgenie/android/R$layout;->generic_viewpagerindicator:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->setContentView(I)V

    .line 26
    new-instance v2, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    .line 28
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, "intentBundle":Landroid/os/Bundle;
    const-string v1, ""

    .line 31
    .local v1, "searchFilter":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 32
    const-string v2, "associated_entity_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 34
    const-string v2, "EXTRA_TAG_TEXT_FILTER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eqz v2, :cond_2

    .line 40
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v3, v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newSearchResultsInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v3

    const-string v4, "Results"

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 45
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 46
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 48
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->shouldHideIndicator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 56
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->search_results:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->refine_search:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->search_label:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 61
    return-void

    .line 36
    :cond_1
    iput-object v5, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    goto :goto_0

    .line 53
    :cond_2
    const-string v2, "^ GENERICENTITYWIDGET: The associated Entity was null!"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->setmPopFragmentStackOnResume(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->onBackPressed()V

    .line 66
    return-void
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "associated_entity_name"

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public onLoaderFinished()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->setupBottomActionbar(Z)V

    .line 83
    return-void
.end method

.method public onLoaderStarted()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;->setupBottomActionbar(Z)V

    .line 88
    return-void
.end method
