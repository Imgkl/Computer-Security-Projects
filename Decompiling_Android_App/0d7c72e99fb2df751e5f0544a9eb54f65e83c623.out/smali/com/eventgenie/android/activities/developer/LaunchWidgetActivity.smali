.class public Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "LaunchWidgetActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field private static final SPINNER_ITEMS:[Ljava/lang/String;


# instance fields
.field private mModuleAdapter:Landroid/widget/BaseAdapter;

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WIDGETS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INFOPAGES"

    aput-object v2, v0, v1

    sput-object v0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->SPINNER_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v4, Lcom/eventgenie/android/R$layout;->generic_spinner_list:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->setContentView(I)V

    .line 43
    sget v4, Lcom/eventgenie/android/R$id;->spinner:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mSpinner:Landroid/widget/Spinner;

    .line 44
    sget v4, Lcom/eventgenie/android/R$id;->list_header:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mTextView:Landroid/widget/TextView;

    .line 46
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    sget-object v5, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->SPINNER_ITEMS:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 47
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    iget-object v4, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    iget-object v4, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 54
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->event_packaged_data_version:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "dataVersion":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Data Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v4, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    iget-object v4, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v4, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 73
    return-void

    .line 59
    .end local v1    # "dataVersion":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "LIVE"

    .restart local v1    # "dataVersion":Ljava/lang/String;
    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
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
    .line 122
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mModules:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 123
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
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
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "selection":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mModules:Ljava/util/List;

    .line 86
    const-string v6, "WIDGETS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    invoke-static {}, Lcom/genie_connect/android/db/config/GenieWidget;->values()[Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/db/config/GenieWidget;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 89
    .local v5, "widget":Lcom/genie_connect/android/db/config/GenieWidget;
    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    if-eq v5, v6, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6, p0, v5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v4

    .line 91
    .local v4, "tmp":Lcom/genie_connect/android/db/config/GenieMobileModule;
    if-eqz v4, :cond_0

    .line 92
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mModules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v4    # "tmp":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v5    # "widget":Lcom/genie_connect/android/db/config/GenieWidget;
    :cond_1
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mModules:Ljava/util/List;

    new-instance v7, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity$1;

    invoke-direct {v7, p0}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity$1;-><init>(Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    .end local v0    # "arr$":[Lcom/genie_connect/android/db/config/GenieWidget;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_2
    :goto_1
    new-instance v6, Lcom/eventgenie/android/adapters/other/MyEventAdapter;

    iget-object v7, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mModules:Ljava/util/List;

    invoke-direct {v6, p0, v7}, Lcom/eventgenie/android/adapters/other/MyEventAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v6, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mModuleAdapter:Landroid/widget/BaseAdapter;

    .line 114
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->mModuleAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    return-void

    .line 107
    :cond_3
    const-string v6, "INFOPAGES"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
