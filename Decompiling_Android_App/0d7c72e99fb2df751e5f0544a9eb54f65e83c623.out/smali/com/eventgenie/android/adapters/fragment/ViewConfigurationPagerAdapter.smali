.class public Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ViewConfigurationPagerAdapter.java"


# instance fields
.field private final mFactory:Lcom/eventgenie/android/fragments/factory/FragmentFactory;

.field private final mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;Lcom/eventgenie/android/fragments/factory/FragmentFactory;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "config"    # Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;
    .param p3, "factory"    # Lcom/eventgenie/android/fragments/factory/FragmentFactory;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 59
    invoke-virtual {p2}, Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;->getTabs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mTabs:Ljava/util/List;

    .line 60
    iput-object p3, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mFactory:Lcom/eventgenie/android/fragments/factory/FragmentFactory;

    .line 61
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v1, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    .line 76
    .local v0, "element":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    iget-object v1, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mFactory:Lcom/eventgenie/android/fragments/factory/FragmentFactory;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/factory/FragmentFactory;->getFragmentForElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public getItemConfig(I)Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method public shouldHideIndicator()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->mTabs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
