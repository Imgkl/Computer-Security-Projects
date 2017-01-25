.class public Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "ResourcesCheckActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final EXTRA_RESOURCE_TYPE:Ljava/lang/String; = "extra_resource_type"

.field public static final RESOURCE_TYPE_ACTIVITIES:I = 0x3

.field public static final RESOURCE_TYPE_DRAWABLES:I = 0x1

.field public static final RESOURCE_TYPE_STRING:I = 0x2


# instance fields
.field private mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    return-void
.end method

.method private getLocaleInfo()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nConfig Locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLanguage File: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->language_file:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v2, Lcom/eventgenie/android/R$layout;->generic_viewpagerindicator:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->setContentView(I)V

    .line 68
    new-instance v2, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    const-string v3, "Resources"

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v2, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 73
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 74
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 78
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "extra_resource_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "type":I
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->setupUi(Ljava/lang/Integer;)V

    .line 87
    return-void

    .line 83
    .end local v1    # "type":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "type":I
    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 90
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected setupUi(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 94
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->clear()V

    .line 96
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->addGenieDrawablesView()Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "GM ICONS"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->addGenieDrawablesViewOverriden()Landroid/view/View;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "GM ICONS (OV)"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->addMappingIconsView()Landroid/view/View;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "Mapping"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->addTrophyIcons()Landroid/view/View;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "Trophies"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->addAllDrawablesView()Landroid/view/View;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "All Icons"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 113
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 114
    :cond_2
    sget v2, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "tv":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getLocaleInfo()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->addAllStringsView()Landroid/view/View;

    move-result-object v1

    .line 120
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "STRINGS"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 123
    .end local v0    # "tv":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mHelper:Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->addManifestActivitiesView()Landroid/view/View;

    move-result-object v1

    .line 125
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "ACTIVITIES"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 128
    .end local v1    # "view":Landroid/view/View;
    :cond_5
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 129
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 130
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v2}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 140
    return-void
.end method
