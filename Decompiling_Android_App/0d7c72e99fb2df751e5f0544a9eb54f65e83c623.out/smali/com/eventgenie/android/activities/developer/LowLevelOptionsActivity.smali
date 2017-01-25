.class public Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "LowLevelOptionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$12;,
        Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;,
        Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$EXCEPTION;
    }
.end annotation


# static fields
.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field public static final RELOAD_CONFIG_MESSAGE:Ljava/lang/String; = "You need to reload the config for this change to take effect."


# instance fields
.field private mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 403
    return-void
.end method

.method private static addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V
    .locals 3
    .param p0, "adapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/commonsware/cwac/merge/MergeAdapter;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 376
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 378
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private addSectionGeneral()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createEnableFullDebuggingView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createDebugImageLoaderView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createDebugGzipNetworkStream()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createShowEntityIdView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->printNetworkDataToSd()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->hasAtleastOneNonNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    const-string v2, "General"

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 75
    :cond_0
    return-void
.end method

.method private addSectionMapping()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createDebugMapBoundingBoxesView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createShowNaviGridView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->hasAtleastOneNonNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    const-string v2, "Mapping"

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 86
    :cond_0
    return-void
.end method

.method private addSectionNewFunctionality()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createEnableGamificationView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createEnableBrowseAndSearchView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createEnableNewDownloadables()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->hasAtleastOneNonNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    const-string v2, "New Functionality"

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    .line 96
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 98
    :cond_0
    return-void
.end method

.method private addSectionSpecial()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    sget-object v1, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$EXCEPTION;->RUNTIME:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$EXCEPTION;

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createThrowException(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$EXCEPTION;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->hasAtleastOneNonNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    const-string v2, "Special"

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 108
    :cond_0
    return-void
.end method

.method private static addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "adapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createDebugGzipNetworkStream()Landroid/view/View;
    .locals 5

    .prologue
    .line 111
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 126
    :goto_0
    return-object v2

    .line 112
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Debug GZIP Network Stream"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 115
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/genie_connect/common/utils/StreamUtils;->isDebugEnabled()Z

    move-result v1

    .line 117
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 118
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$1;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createDebugImageLoaderView()Landroid/view/View;
    .locals 5

    .prologue
    .line 130
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 145
    :goto_0
    return-object v2

    .line 131
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Debug Imageloader"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 132
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 134
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugImageLoader()Z

    move-result v1

    .line 136
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 137
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$2;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$2;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createDebugMapBoundingBoxesView()Landroid/view/View;
    .locals 5

    .prologue
    .line 149
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 164
    :goto_0
    return-object v2

    .line 150
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Debug Map Text Bounding Boxes"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 153
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugBoundingBoxes()Z

    move-result v1

    .line 155
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 156
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$3;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$3;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createEnableBrowseAndSearchView()Landroid/view/View;
    .locals 5

    .prologue
    .line 168
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 186
    :goto_0
    return-object v2

    .line 169
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Enable BrowseAndSearch"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 172
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isBrowseAndSearchEnabled()Z

    move-result v1

    .line 174
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 175
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$4;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$4;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createEnableFullDebuggingView()Landroid/view/View;
    .locals 5

    .prologue
    .line 190
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2

    .line 191
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Enable Full Debug Log"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 192
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 194
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v1

    .line 196
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 197
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$5;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$5;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createEnableGamificationView()Landroid/view/View;
    .locals 5

    .prologue
    .line 209
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 227
    :goto_0
    return-object v2

    .line 210
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Enable Gamification"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 211
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 213
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isGamificationEnabled()Z

    move-result v1

    .line 215
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 216
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$6;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$6;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createEnableNewDownloadables()Landroid/view/View;
    .locals 5

    .prologue
    .line 231
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 246
    :goto_0
    return-object v2

    .line 232
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Enable new Downloadables"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 235
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isUseNewDownloadables()Z

    move-result v1

    .line 237
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 238
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$7;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$7;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createShowEntityIdView()Landroid/view/View;
    .locals 5

    .prologue
    .line 250
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 266
    :goto_0
    return-object v2

    .line 252
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Display Entity Id"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 253
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 255
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v1

    .line 257
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 258
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$8;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$8;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createShowNaviGridView()Landroid/view/View;
    .locals 5

    .prologue
    .line 270
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 285
    :goto_0
    return-object v2

    .line 271
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Show Navi Grid"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 272
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 274
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowNavigationGrid()Z

    move-result v1

    .line 276
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 277
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$9;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$9;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createThrowException(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$EXCEPTION;)Landroid/view/View;
    .locals 4
    .param p1, "runtime"    # Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$EXCEPTION;

    .prologue
    .line 289
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v3, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 302
    :goto_0
    return-object v1

    .line 290
    :cond_0
    sget-object v2, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->BUTTON:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v3, "Throw Runtime Exception"

    invoke-direct {p0, v2, v3}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 293
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$10;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$10;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "interaction"    # Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 308
    sget-object v2, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$12;->$SwitchMap$com$eventgenie$android$activities$developer$LowLevelOptionsActivity$INTERACTION:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 316
    const/4 v1, 0x0

    .line 319
    .local v1, "v":Landroid/view/View;
    :goto_0
    sget v2, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_0
    return-object v1

    .line 310
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v1    # "v":Landroid/view/View;
    :pswitch_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_text_and_togglebutton:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 311
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .line 313
    .end local v1    # "v":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_text_and_button:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 314
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static hasAtleastOneNonNull(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .line 389
    .local v2, "res":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 390
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 391
    const/4 v2, 0x1

    .line 396
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method private printNetworkDataToSd()Landroid/view/View;
    .locals 5

    .prologue
    .line 351
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v4, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 366
    :goto_0
    return-object v2

    .line 352
    :cond_0
    sget-object v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v4, "Dump Netowrk Data To SD"

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getBaseView(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 353
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 355
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isSaveNetworkDataToSd()Z

    move-result v1

    .line 357
    .local v1, "startingValue":Z
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 358
    new-instance v3, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$11;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$11;-><init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 334
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMyAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 336
    sget-object v0, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->ENTITY_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v0, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->setContentView(I)V

    .line 337
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v1, "Here be dragons"

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setBackgroundColor(I)V

    .line 340
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 342
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addSectionGeneral()V

    .line 343
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addSectionMapping()V

    .line 344
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addSectionNewFunctionality()V

    .line 345
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->addSectionSpecial()V

    .line 347
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method
