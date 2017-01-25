.class public Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GenieFragmentPagerAdapter.java"


# static fields
.field public static final TYPE_SUPPORT_FRAGMENT:I = 0x0

.field public static final TYPE_SUPPORT_MAP_FRAGMENT:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mDoNotDestroyFragments:Z

.field private final mFragmentEntityIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/Locale;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/Locale;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 68
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTabs:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTitleList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mIcons:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mFragmentEntityIds:Landroid/util/SparseArray;

    .line 73
    iput-object p1, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mLocale:Ljava/util/Locale;

    .line 75
    return-void
.end method

.method private add(Lcom/eventgenie/android/container/FragmentInfo;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "fragmentInfo"    # Lcom/eventgenie/android/container/FragmentInfo;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/container/FragmentInfo;->getFrag()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/eventgenie/android/container/FragmentInfo;->getFrag()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/fragments/base/EntityFragment;

    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mFragmentEntityIds:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/eventgenie/android/container/FragmentInfo;->getFrag()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/fragments/base/EntityFragment;

    invoke-interface {v0}, Lcom/eventgenie/android/fragments/base/EntityFragment;->getEnitity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/eventgenie/android/container/FragmentInfo;->getFrag()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/fragments/base/EntityFragment;

    invoke-interface {v0}, Lcom/eventgenie/android/fragments/base/EntityFragment;->getEntityId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTitleList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->formatTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mIcons:Ljava/util/List;

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mFragmentEntityIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2
.end method

.method private formatTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 119
    if-nez p1, :cond_0

    const-string v0, ""

    .line 123
    :goto_0
    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcom/eventgenie/android/container/FragmentInfo;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/container/FragmentInfo;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Lcom/eventgenie/android/container/FragmentInfo;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    return-void
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;

    .prologue
    .line 82
    new-instance v0, Lcom/eventgenie/android/container/FragmentInfo;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/container/FragmentInfo;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Lcom/eventgenie/android/container/FragmentInfo;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mDoNotDestroyFragments:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntityFragmentInfo(I)Landroid/util/Pair;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mFragmentEntityIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 138
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/container/FragmentInfo;

    .line 140
    .local v0, "info":Lcom/eventgenie/android/container/FragmentInfo;
    invoke-virtual {v0}, Lcom/eventgenie/android/container/FragmentInfo;->getFrag()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/eventgenie/android/container/FragmentInfo;->getClss()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/eventgenie/android/container/FragmentInfo;->getArgs()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/eventgenie/android/container/FragmentInfo;->getFrag()Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 149
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/maps/SupportMapFragment;

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setDoNotDestroyFragments(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mDoNotDestroyFragments:Z

    .line 167
    return-void
.end method

.method public shouldHideIndicator()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->mTabs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 171
    :cond_0
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
