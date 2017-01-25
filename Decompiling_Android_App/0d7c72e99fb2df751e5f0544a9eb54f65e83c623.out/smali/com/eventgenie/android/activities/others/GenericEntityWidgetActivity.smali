.class public Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "GenericEntityWidgetActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity$2;
    }
.end annotation


# static fields
.field public static final FILTER_FAVORITE_EXTRA:Ljava/lang/String; = "is_favorite"


# instance fields
.field private isFavourite:Z

.field private mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

.field private final mLssReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity$1;-><init>(Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private loadExhibitors(Z)V
    .locals 8
    .param p1, "isFavourite"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteExhibitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    .line 59
    .local v0, "exhConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {p1, v6, v6, v6, v6}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newExhibitorListInstance(ZZZZZ)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->favorites_title:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 105
    .end local v0    # "exhConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v0

    .line 66
    .local v0, "exhConfig":Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v3, v4, v7}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 72
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->getAtoz()Lcom/genie_connect/android/db/config/misc/TagFilter;

    move-result-object v2

    .line 73
    .local v2, "filter":Lcom/genie_connect/android/db/config/misc/TagFilter;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {p1, v6, v6, v6, v6}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newExhibitorListInstance(ZZZZZ)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v4

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 81
    :cond_2
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->getSeqNo()Lcom/genie_connect/android/db/config/misc/TagFilter;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {p1, v6, v6, v6, v7}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newExhibitorListInstance(ZZZZZ)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v4

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 90
    :cond_3
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->getFeatured()Lcom/genie_connect/android/db/config/misc/TagFilter;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 92
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {v6, v7, v6, v6, v6}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newExhibitorListInstance(ZZZZZ)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v4

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 99
    :cond_4
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->getCountry()Lcom/genie_connect/android/db/config/misc/TagFilter;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v3, 0x0

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v3, v4}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->newInstance(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;

    move-result-object v1

    .line 102
    .local v1, "f":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private loadFavouriteSessions(Z)V
    .locals 5
    .param p1, "isFavourite"    # Z

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSessions()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    .line 275
    .local v1, "speakerConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    const/4 v3, 0x0

    invoke-static {v3, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newFavouriteSessionsListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->favorites_title:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 294
    .end local v1    # "speakerConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSessions()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    .line 281
    .local v0, "myFavouriteSessions":Lcom/genie_connect/android/db/config/BaseConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_0
.end method

.method private loadPois(Z)V
    .locals 6
    .param p1, "isFavourite"    # Z

    .prologue
    const/4 v5, 0x0

    .line 108
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouritePoi()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    .line 110
    .local v1, "poiConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {v5, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newPoiListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->favorites_title:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 137
    .end local v1    # "poiConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v1

    .line 116
    .local v1, "poiConfig":Lcom/genie_connect/android/db/config/widgets/PoiConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 122
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->getAtoz()Lcom/genie_connect/android/db/config/misc/TagFilter;

    move-result-object v0

    .line 123
    .local v0, "filter":Lcom/genie_connect/android/db/config/misc/TagFilter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {v5, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newPoiListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v3

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 130
    :cond_2
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->getCountry()Lcom/genie_connect/android/db/config/misc/TagFilter;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v5, v3}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->newInstance(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;

    move-result-object v3

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadProducts(Z)V
    .locals 6
    .param p1, "isFavourite"    # Z

    .prologue
    const/4 v5, 0x0

    .line 140
    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteProducts()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    .line 142
    .local v1, "prodConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {v5, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newProducListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->favorites_title:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 161
    .end local v1    # "prodConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v1

    .line 148
    .local v1, "prodConfig":Lcom/genie_connect/android/db/config/widgets/ProductConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 154
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getAtoz()Lcom/genie_connect/android/db/config/misc/TagFilter;

    move-result-object v0

    .line 155
    .local v0, "filter":Lcom/genie_connect/android/db/config/misc/TagFilter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {v5, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newProducListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v3

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadSpeakers(Z)V
    .locals 6
    .param p1, "isFavourite"    # Z

    .prologue
    const/4 v5, 0x0

    .line 164
    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSpeakers()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    .line 166
    .local v1, "speakerConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {v5, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newSpeakerListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->favorites_title:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 185
    .end local v1    # "speakerConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v1

    .line 172
    .local v1, "speakerConfig":Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 178
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->getAtoz()Lcom/genie_connect/android/db/config/misc/TagFilter;

    move-result-object v0

    .line 179
    .local v0, "filter":Lcom/genie_connect/android/db/config/misc/TagFilter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {v5, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newSpeakerListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v3

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 189
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    sget v6, Lcom/eventgenie/android/R$layout;->generic_viewpagerindicator:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->setContentView(I)V

    .line 191
    new-instance v6, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocaleObject()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/Locale;)V

    iput-object v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    .line 195
    iget-object v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->setDoNotDestroyFragments(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 199
    .local v3, "intentBundle":Landroid/os/Bundle;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v4, "syncFilter":Landroid/content/IntentFilter;
    const-string v6, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 204
    if-eqz v3, :cond_0

    .line 205
    const-string v6, "associated_entity_name"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-static {v6}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 207
    const-string v6, "is_favorite"

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    .line 214
    :goto_0
    iget-object v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eqz v6, :cond_4

    .line 215
    sget-object v6, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity$2;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v7, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v7}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 237
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ GENERICENTITYWIDGET: Don\'t know what to do with: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 210
    iput-boolean v9, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    goto :goto_0

    .line 218
    :pswitch_0
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    invoke-direct {p0, v6}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->loadPois(Z)V

    .line 241
    :goto_1
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    if-nez v6, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v6, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getTagFilterConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;

    move-result-object v1

    .line 243
    .local v1, "filterConfig":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    if-eqz v1, :cond_2

    .line 244
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v5, "tagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;->getTagFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 247
    .local v0, "exFilter":Lcom/genie_connect/android/db/config/misc/TagFilter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tab_cat_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getTag()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    iget-object v7, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getTag()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->newInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;

    move-result-object v7

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_2

    .line 222
    .end local v0    # "exFilter":Lcom/genie_connect/android/db/config/misc/TagFilter;
    .end local v1    # "filterConfig":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "tagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :pswitch_1
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    invoke-direct {p0, v6}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->loadExhibitors(Z)V

    goto :goto_1

    .line 226
    :pswitch_2
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    invoke-direct {p0, v6}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->loadProducts(Z)V

    goto :goto_1

    .line 230
    :pswitch_3
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    invoke-direct {p0, v6}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->loadSpeakers(Z)V

    goto :goto_1

    .line 234
    :pswitch_4
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    invoke-direct {p0, v6}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->loadFavouriteSessions(Z)V

    goto/16 :goto_1

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 256
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v6

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 257
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 258
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 260
    iget-object v6, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v6}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->shouldHideIndicator()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 266
    :cond_3
    :goto_3
    return-void

    .line 264
    :cond_4
    const-string v6, "^ GENERICENTITYWIDGET: The associated Entity was null!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_3

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 298
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onDestroy()V

    .line 300
    return-void
.end method

.method protected onLiveSyncCompleted()V
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->showIndicator(ZZ)V

    .line 304
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 310
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 307
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->getEntityFragmentInfo(I)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Landroid/util/Pair;)Z

    .line 317
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 321
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->checkForUpdates()V

    .line 323
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isFavourite:Z

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {p0, v2, v2}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->showIndicator(ZZ)V

    .line 326
    sget v1, Lcom/eventgenie/android/R$string;->message_synchronising:I

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 327
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 328
    .local v0, "mAssociatedEntities":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 333
    .end local v0    # "mAssociatedEntities":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eqz v1, :cond_0

    .line 339
    const-string v1, "associated_entity_name"

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->mAssociatedEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 341
    :cond_0
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void
.end method
