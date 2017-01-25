.class public Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "GenericEntityMultiListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/genie_connect/android/db/QuerySettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/genie_connect/android/db/QuerySettings;"
    }
.end annotation


# static fields
.field private static final EXTRA_CHILDREN:Ljava/lang/String; = "EXTRA_CHILDREN"

.field private static final SHOW_ADVERT:Ljava/lang/String; = "EXTRA_SHOW_ADVERT"


# instance fields
.field private emptyView:Landroid/view/View;

.field private isFav:Z

.field private mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

.field private mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

.field private final mLssReceiver:Landroid/content/BroadcastReceiver;

.field private mSubAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mTryNowButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    .line 125
    new-instance v0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$1;-><init>(Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mLssReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;)Lcom/genie_connect/android/db/config/GenieMobileModule;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    return-object v0
.end method

.method private getChildren()Ljava/util/List;
    .locals 2
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
    .line 144
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_CHILDREN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getCursorForAdapterView(Landroid/widget/AdapterView;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 272
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v1, v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    if-eqz v1, :cond_0

    .line 273
    check-cast v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 278
    :goto_0
    return-object v1

    .line 274
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    if-eqz v1, :cond_1

    .line 275
    check-cast v0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 278
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasAssociatedNonMyEventWidget()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newExternalListInstance(Ljava/util/List;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;
    .locals 4
    .param p1, "showAdvert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;Z)",
            "Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;-><init>()V

    .line 100
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    instance-of v2, p0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 103
    const-string v2, "EXTRA_CHILDREN"

    check-cast p0, Ljava/util/ArrayList;

    .end local p0    # "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    :goto_0
    const-string v2, "EXTRA_SHOW_ADVERT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    return-object v1

    .line 105
    .restart local p0    # "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    :cond_0
    const-string v2, "EXTRA_CHILDREN"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setupAdapterForConfig()V
    .locals 10

    .prologue
    .line 179
    new-instance v5, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v5}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v5, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 180
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mSubAdapters:Ljava/util/HashMap;

    .line 182
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 184
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    .line 186
    .local v0, "child":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v4

    .line 188
    .local v4, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v5, v4}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 191
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    sget-object v5, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$3;->$SwitchMap$com$eventgenie$android$viewconfig$base$ConfigElementType:[I

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getType()Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getWrappedAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    move-result-object v3

    .line 198
    .local v3, "subAdapter":Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-interface {v3}, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mSubAdapters:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getLoaderIdentifer()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getLoaderIdentifer()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 211
    .end local v0    # "child":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    .end local v3    # "subAdapter":Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;
    :cond_1
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 148
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->setupAdapterForConfig()V

    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "query_setting_isfavourite"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->isFav:Z

    .line 159
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "associated_non_my_event_widget"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/GenieWidget;

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 161
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->hasAssociatedNonMyEventWidget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 167
    :cond_0
    iget-boolean v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->isFav:Z

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 171
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, "syncFilter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 176
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    move-result-object v0

    const-class v1, Landroid/support/v4/content/Loader;

    invoke-interface {v0, v1, p1}, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;->getData(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/Loader;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 222
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayoutForFragment(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->emptyView:Landroid/view/View;

    .line 224
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    .line 225
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    new-instance v2, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$2;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$2;-><init>(Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 237
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mSubAdapters:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mSubAdapters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    .line 248
    .local v1, "wrapper":Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;
    invoke-interface {v1}, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .line 252
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;
    :cond_0
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onDestroy()V

    .line 253
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 257
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->downloadable_row:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isUseNewDownloadables()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/eventgenie/android/utils/ValueCheck;->tryLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 259
    .local v8, "dlId":J
    new-instance v7, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getCursorForAdapterView(Landroid/widget/AdapterView;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;-><init>(JLandroid/content/Context;Landroid/database/Cursor;)V

    .line 261
    .local v7, "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    invoke-virtual {v7}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getProperAlertDialog()Landroid/app/AlertDialog;

    move-result-object v6

    .line 262
    .local v6, "dialog":Landroid/app/AlertDialog;
    if-eqz v6, :cond_0

    .line 263
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 267
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    .end local v7    # "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    .end local v8    # "dlId":J
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onLiveSyncCompleted()V
    .locals 5

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    .line 284
    .local v0, "child":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getLoaderIdentifer()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v2

    .line 285
    .local v2, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<*>;"
    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->onContentChanged()V

    goto :goto_0

    .line 289
    .end local v0    # "child":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    .end local v2    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<*>;"
    :cond_1
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mSubAdapters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    .line 306
    .local v1, "subAdapter":Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;
    invoke-interface {v1, p2}, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;->changeCursor(Landroid/database/Cursor;)V

    .line 309
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 310
    iget-boolean v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->isFav:Z

    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    .line 326
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->markLoaderAsRunning(Z)V

    .line 327
    return-void

    .line 315
    .restart local v0    # "label":Ljava/lang/String;
    :cond_1
    sget v2, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_favourites:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->setupEmptyViewForNoFavs(ILandroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 320
    .end local v0    # "label":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/eventgenie/android/R$string;->no_data:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->setupEmptyViewTextOnly(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mSubAdapters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    .line 294
    .local v0, "subAdapter":Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;->swapCursor(Landroid/database/Cursor;)V

    .line 295
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 331
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 332
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->markLoaderAsRunning(Z)V

    .line 334
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    .line 335
    .local v0, "child":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getLoaderIdentifer()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 338
    .end local v0    # "child":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    :cond_0
    return-void
.end method

.method protected setupEmptyViewForNoFavs(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "resId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 341
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    .local v0, "emtpyText":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    sget v2, Lcom/eventgenie/android/R$string;->button_try_now:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 349
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 354
    :goto_0
    return-object p2

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 364
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 365
    .local v0, "emtpyText":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    sget v2, Lcom/eventgenie/android/R$string;->button_try_now:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 372
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 377
    :goto_0
    return-object p2

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupEmptyViewTextOnly(ILandroid/view/View;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->setupEmptyViewTextOnly(Ljava/lang/String;Landroid/view/View;)V

    .line 382
    return-void
.end method

.method protected setupEmptyViewTextOnly(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 385
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 387
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    return-void
.end method

.method protected stopLoader()V
    .locals 4

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    .line 394
    .local v0, "child":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getLoaderIdentifer()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 396
    .end local v0    # "child":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    :cond_0
    return-void
.end method
