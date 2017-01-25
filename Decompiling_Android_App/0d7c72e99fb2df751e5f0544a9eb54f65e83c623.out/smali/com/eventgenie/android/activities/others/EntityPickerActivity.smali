.class public Lcom/eventgenie/android/activities/others/EntityPickerActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "EntityPickerActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/base/GenieListActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
        "Ljava/util/List",
        "<",
        "Lcom/eventgenie/android/container/EntityWrapper;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final EXTRA_MODE:Ljava/lang/String; = "extra_mode"

.field private static final EXTRA_SEARCH_TARGET:Ljava/lang/String; = "search_target"

.field public static final GENERIC_ENTITY_RESULT_KEY:Ljava/lang/String; = "result"

.field private static final KEY_DELAY_MS:Ljava/lang/Long;

.field private static final LOADER_ID:I = 0x1

.field private static final RESULT_LIMT:I = -0x1


# instance fields
.field private mCurrentMode:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

.field private mFilterTextBox:Landroid/widget/EditText;

.field private final mFilterTextWatcher:Landroid/text/TextWatcher;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mKeyDelayTimer:Ljava/util/Timer;

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mLoader:Landroid/support/v4/content/AsyncTaskLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mTargetEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->KEY_DELAY_MS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity$1;-><init>(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mFilterTextWatcher:Landroid/text/TextWatcher;

    .line 299
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Landroid/support/v4/content/AsyncTaskLoader;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/others/EntityPickerActivity;Landroid/support/v4/content/AsyncTaskLoader;)Landroid/support/v4/content/AsyncTaskLoader;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/EntityPickerActivity;
    .param p1, "x1"    # Landroid/support/v4/content/AsyncTaskLoader;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mCurrentMode:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mText:Ljava/lang/String;

    return-object v0
.end method

.method private addListSection(Ljava/util/List;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/commonsware/cwac/merge/MergeAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    :cond_0
    return-void
.end method

.method private static createLabel(Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 3
    .param p0, "cfg"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "Ljava/util/List",
            "<*>;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    const-string v1, ""

    .line 267
    :goto_0
    return-object v1

    .line 258
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 262
    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {p0, p2, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_1
    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {p0, p2, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static getIntent(Landroid/content/Context;Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;Ljava/util/Set;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;",
            "Ljava/util/Set",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "entities":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "extra_mode"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 278
    if-eqz p2, :cond_0

    .line 279
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {p2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 280
    .local v0, "array":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    const-string v3, "search_target"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 283
    .end local v0    # "array":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 284
    return-object v2
.end method

.method public static getIntentForLocationPicking(Landroid/content/Context;Ljava/util/Set;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "entities":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    sget-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_LOCATION:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    invoke-static {p0, v0, p1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getIntent(Landroid/content/Context;Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;Ljava/util/Set;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForPicking(Landroid/content/Context;Ljava/util/Set;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "entities":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    sget-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_ENTITY:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    invoke-static {p0, v0, p1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getIntent(Landroid/content/Context;Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;Ljava/util/Set;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForSearch(Landroid/content/Context;Ljava/util/Set;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "entities":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    sget-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->SEARCH:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    invoke-static {p0, v0, p1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getIntent(Landroid/content/Context;Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;Ljava/util/Set;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "query_setting_filter_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "query_setting_hide_if_no_location"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v1, "query_setting_loc_display_mode"

    sget-object v2, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 86
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget v1, Lcom/eventgenie/android/R$layout;->activity_entity_picker:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mCurrentMode:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    .line 96
    const-string v1, "search_target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromArray([Ljava/lang/Object;)[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mTargetEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 98
    sget v1, Lcom/eventgenie/android/R$id;->flipper:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mFlipper:Landroid/widget/ViewFlipper;

    .line 99
    const v1, 0x1020003

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mFilterTextBox:Landroid/widget/EditText;

    .line 100
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mFilterTextBox:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mFilterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mListAdapter:Landroid/widget/ListAdapter;

    .line 106
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 113
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 115
    if-nez p2, :cond_0

    const/4 v4, 0x0

    .line 117
    .local v4, "searchTerm":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mCurrentMode:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    sget-object v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_LOCATION:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    if-ne v0, v1, :cond_1

    .line 118
    new-instance v0, Lcom/genie_connect/android/db/loaders/LocationPickerLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mTargetEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/db/loaders/LocationPickerLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;

    return-object v0

    .line 115
    .end local v4    # "searchTerm":Ljava/lang/String;
    :cond_0
    const-string v0, "query_setting_filter_text"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 125
    .restart local v4    # "searchTerm":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mTargetEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;

    goto :goto_1
.end method

.method protected onFilterTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "filtertext"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 143
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mText:Ljava/lang/String;

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mKeyDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mKeyDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 156
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mKeyDelayTimer:Ljava/util/Timer;

    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mKeyDelayTimer:Ljava/util/Timer;

    new-instance v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;-><init>(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)V

    sget-object v2, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->KEY_DELAY_MS:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 192
    return-void

    .line 143
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v6, -0x1

    .line 196
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mCurrentMode:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    sget-object v4, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_LOCATION:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    if-ne v3, v4, :cond_2

    .line 197
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/container/EntityWrapper;

    move-object v2, v3

    check-cast v2, Lcom/eventgenie/android/container/EntityWrapper;

    .line 198
    .local v2, "wrapper":Lcom/eventgenie/android/container/EntityWrapper;
    if-nez v2, :cond_1

    .line 225
    .end local v2    # "wrapper":Lcom/eventgenie/android/container/EntityWrapper;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v2    # "wrapper":Lcom/eventgenie/android/container/EntityWrapper;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "ex_id"

    invoke-interface {v2}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    const-string v3, "entity_location"

    invoke-interface {v2}, Lcom/eventgenie/android/container/EntityWrapper;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v3, "ex_name"

    invoke-interface {v2}, Lcom/eventgenie/android/container/EntityWrapper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v6, v1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->finish()V

    goto :goto_0

    .line 211
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "wrapper":Lcom/eventgenie/android/container/EntityWrapper;
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mCurrentMode:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    sget-object v4, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_ENTITY:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    if-ne v3, v4, :cond_3

    .line 212
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/container/CursorEntityWrapper;

    move-object v2, v3

    check-cast v2, Lcom/eventgenie/android/container/CursorEntityWrapper;

    .line 213
    .local v2, "wrapper":Lcom/eventgenie/android/container/CursorEntityWrapper;
    if-eqz v2, :cond_0

    .line 214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 217
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v6, v1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->finish()V

    goto :goto_0

    .line 222
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "wrapper":Lcom/eventgenie/android/container/CursorEntityWrapper;
    :cond_3
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p2, Ljava/util/Map;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;>;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/Map<Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;>;>;"
    .local p2, "arg1":Ljava/util/Map;, "Ljava/util/Map<Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;>;"
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    .line 236
    .local v0, "adapter":Lcom/commonsware/cwac/merge/MergeAdapter;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 238
    .local v1, "entities":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 239
    .local v2, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ENTITYPICKERACTIVITY: Prepping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " results for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 240
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v6, v5, v2}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->createLabel(Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->addListSection(Ljava/util/List;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    goto :goto_0

    .line 248
    .end local v2    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mFlipper:Landroid/widget/ViewFlipper;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 251
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/Map<Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;>;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 231
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onResume()V

    .line 139
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 140
    return-void
.end method
