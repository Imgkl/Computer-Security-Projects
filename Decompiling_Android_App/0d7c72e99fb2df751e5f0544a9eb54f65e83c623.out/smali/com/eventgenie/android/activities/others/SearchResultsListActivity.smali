.class public Lcom/eventgenie/android/activities/others/SearchResultsListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "SearchResultsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;,
        Lcom/eventgenie/android/activities/others/SearchResultsListActivity$GetRecommendedVisitorsTask;
    }
.end annotation


# static fields
.field public static final MINIMUM_QUERY_STRING_LENGTH:I = 0x2

.field public static final SEARCH_TARGET_EXTRA:Ljava/lang/String; = "search_target"

.field public static final TARGET_APPS:I = 0x6

.field public static final TARGET_EXHIBITORS:I = 0x1

.field public static final TARGET_GLOBAL:I = 0x0

.field public static final TARGET_NOTES:I = 0x9

.field public static final TARGET_POI:I = 0x7

.field public static final TARGET_PRODUCTS:I = 0x5

.field public static final TARGET_SESSIONS:I = 0x3

.field public static final TARGET_SPEAKERS:I = 0x2

.field public static final TARGET_VISITORS:I = 0x4

.field public static final TARGET_VISITORS_RECOMMENDED:I = 0x8


# instance fields
.field private mCursorApps:Luk/co/alt236/easycursor/EasyCursor;

.field private mCursorExhibitors:Luk/co/alt236/easycursor/EasyCursor;

.field private mCursorNotes:Luk/co/alt236/easycursor/EasyCursor;

.field private mCursorPois:Luk/co/alt236/easycursor/EasyCursor;

.field private mCursorProducts:Luk/co/alt236/easycursor/EasyCursor;

.field private mCursorSessions:Luk/co/alt236/easycursor/EasyCursor;

.field private mCursorSpeakers:Luk/co/alt236/easycursor/EasyCursor;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mNetworkAdapter:Landroid/widget/ListAdapter;

.field private mNetworkData:Lorg/json/JSONArray;

.field private mQueryString:Ljava/lang/String;

.field private mTarget:I

.field private mTvEmpty:Landroid/widget/TextView;

.field private mTvHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    .line 456
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkData:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SearchResultsListActivity;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkData:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;Lorg/json/JSONArray;IJ)V
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SearchResultsListActivity;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->onSearchVisitorResponse(Lorg/json/JSONArray;IJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method private addAppsListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 4
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 115
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    new-instance v0, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    .line 117
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 118
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method private addExhibitorListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 3
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 125
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    invoke-static {p0, v1, p1, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getExhibitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 127
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method private addNotesListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 4
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 174
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 175
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, p1, v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 176
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method private addPoiListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 4
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 135
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, p1, v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 137
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method private addProductListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 4
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 145
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, p1, v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 147
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method private addSessionListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 3
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-static {p0, v1, p1, v2, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;ZZ)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    move-result-object v0

    .line 157
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method private addSpeakerListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 4
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 165
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, p1, v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 167
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 168
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method private createLabel(Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "key"    # Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .param p4, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p2, :cond_0

    const-string v1, ""

    .line 198
    :goto_0
    return-object v1

    .line 187
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 191
    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {p1, p3, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :goto_1
    sget v1, Lcom/eventgenie/android/R$string;->search_matching:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_1
    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {p1, p3, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private doSearchQuery(Landroid/content/Intent;)V
    .locals 11
    .param p1, "queryIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 203
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    .line 204
    const-string v2, "app_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 206
    .local v0, "appData":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 207
    const-string v2, "search_target"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v10, :cond_1

    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-eq v2, v7, :cond_1

    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-eq v2, v8, :cond_1

    .line 211
    sget v2, Lcom/eventgenie/android/R$string;->search_invalid:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvEmpty:Landroid/widget/TextView;

    sget v3, Lcom/eventgenie/android/R$string;->search_none:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v2, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v2}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 221
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 223
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-ne v2, v7, :cond_2

    .line 224
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvEmpty:Landroid/widget/TextView;

    sget v3, Lcom/eventgenie/android/R$string;->search_no_result:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v2, v7}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getNetworkResults(Ljava/lang/String;I)V

    .line 289
    :goto_0
    return-void

    .line 226
    :cond_2
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-ne v2, v8, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->title_recommendations:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvEmpty:Landroid/widget/TextView;

    sget v3, Lcom/eventgenie/android/R$string;->find_people_no_recommended:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getNetworkResults(Ljava/lang/String;I)V

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    .line 234
    .local v1, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-ne v2, v9, :cond_5

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbExhibitors;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorExhibitors:Luk/co/alt236/easycursor/EasyCursor;

    .line 236
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorExhibitors:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorExhibitors:Luk/co/alt236/easycursor/EasyCursor;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->createLabel(Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->addExhibitorListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 241
    :cond_5
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 242
    :cond_6
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSchedule()Lcom/genie_connect/android/db/access/DbSchedule;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbSchedule;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorSessions:Luk/co/alt236/easycursor/EasyCursor;

    .line 243
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorSessions:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorSessions:Luk/co/alt236/easycursor/EasyCursor;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->createLabel(Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->addSessionListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 248
    :cond_7
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-ne v2, v10, :cond_9

    .line 249
    :cond_8
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbSpeakers;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorSpeakers:Luk/co/alt236/easycursor/EasyCursor;

    .line 250
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorSpeakers:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorSpeakers:Luk/co/alt236/easycursor/EasyCursor;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->createLabel(Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->addSpeakerListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 255
    :cond_9
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 256
    :cond_a
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getProductsDb()Lcom/genie_connect/android/db/access/DbProducts;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbProducts;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorProducts:Luk/co/alt236/easycursor/EasyCursor;

    .line 257
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorProducts:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorProducts:Luk/co/alt236/easycursor/EasyCursor;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->PRODUCTS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->createLabel(Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->addProductListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 262
    :cond_b
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_d

    .line 263
    :cond_c
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbPoi;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorPois:Luk/co/alt236/easycursor/EasyCursor;

    .line 264
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorPois:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorPois:Luk/co/alt236/easycursor/EasyCursor;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->POIS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->createLabel(Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->addPoiListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 269
    :cond_d
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_f

    .line 270
    :cond_e
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbNotes;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorNotes:Luk/co/alt236/easycursor/EasyCursor;

    .line 271
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorNotes:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorNotes:Luk/co/alt236/easycursor/EasyCursor;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NOTES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->createLabel(Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->addNotesListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 276
    :cond_f
    iget v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTarget:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_10

    .line 277
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB(I)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 278
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbAppRefs;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorApps:Luk/co/alt236/easycursor/EasyCursor;

    .line 279
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorApps:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorApps:Luk/co/alt236/easycursor/EasyCursor;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MULTIEVENT:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->createLabel(Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->addAppsListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 285
    :cond_10
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 286
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 287
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method private getNetworkResults(Ljava/lang/String;I)V
    .locals 6
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "target"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 294
    .local v0, "restoredData":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 295
    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->showIndicator(ZZ)V

    .line 296
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    if-ne p2, v4, :cond_1

    .line 299
    new-instance v1, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;-><init>(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 308
    .end local v0    # "restoredData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v0    # "restoredData":Ljava/lang/Object;
    :cond_1
    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 301
    new-instance v1, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$GetRecommendedVisitorsTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$GetRecommendedVisitorsTask;-><init>(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 305
    :cond_2
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "restoredData":Ljava/lang/Object;
    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkData:Lorg/json/JSONArray;

    .line 306
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkData:Lorg/json/JSONArray;

    const/4 v2, -0x1

    const-wide/16 v4, -0x1

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->onSearchVisitorResponse(Lorg/json/JSONArray;IJ)V

    goto :goto_0
.end method

.method private onSearchVisitorResponse(Lorg/json/JSONArray;IJ)V
    .locals 7
    .param p1, "data"    # Lorg/json/JSONArray;
    .param p2, "initialOffset"    # I
    .param p3, "maxResults"    # J

    .prologue
    const/4 v6, 0x0

    .line 398
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 399
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-static {p0, v4, p1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getVisitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Lorg/json/JSONArray;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 400
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 401
    if-ltz p2, :cond_1

    .line 402
    new-instance v2, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {v2, p0, v0, p2, v4}, Lcom/eventgenie/android/adapters/entity/VisitorEndlessAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILjava/lang/String;)V

    .line 403
    .local v2, "endless":Landroid/widget/ListAdapter;
    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    .line 404
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    .end local v2    # "endless":Landroid/widget/ListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-eqz v4, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    .line 414
    .local v1, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    const-wide/16 v4, 0x1

    cmp-long v4, p3, v4

    if-lez v4, :cond_2

    .line 419
    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VISITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v1, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :goto_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvHeader:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvHeader:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_2
    return-void

    .line 406
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    iput-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    .line 407
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 421
    .restart local v1    # "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VISITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v1, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 428
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvHeader:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 313
    sget-object v2, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->setContentView(I)V

    .line 314
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->search_results:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    sget v2, Lcom/eventgenie/android/R$id;->list_header:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvHeader:Landroid/widget/TextView;

    .line 316
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvEmpty:Landroid/widget/TextView;

    .line 317
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 320
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "queryAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->doSearchQuery(Landroid/content/Intent;)V

    .line 324
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorExhibitors:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->close(Landroid/database/Cursor;)V

    .line 341
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorSessions:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->close(Landroid/database/Cursor;)V

    .line 342
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorSpeakers:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->close(Landroid/database/Cursor;)V

    .line 343
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorProducts:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->close(Landroid/database/Cursor;)V

    .line 344
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorApps:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->close(Landroid/database/Cursor;)V

    .line 345
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorPois:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->close(Landroid/database/Cursor;)V

    .line 346
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorNotes:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->close(Landroid/database/Cursor;)V

    .line 347
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onDestroy()V

    .line 348
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 354
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->app_row:I

    if-ne v4, v5, :cond_1

    .line 355
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorApps:Luk/co/alt236/easycursor/EasyCursor;

    add-int/lit8 v5, p3, -0x1

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 356
    new-instance v1, Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;-><init>(Landroid/app/Activity;)V

    .line 357
    .local v1, "helper":Lcom/eventgenie/android/utils/help/MultiEventHelper;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mCursorApps:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {v1, v4}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->tryToChangeEvent(Landroid/database/Cursor;)V

    .line 378
    .end local v1    # "helper":Lcom/eventgenie/android/utils/help/MultiEventHelper;
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->visitor_row:I

    if-ne v4, v5, :cond_2

    .line 360
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v0, "b":Landroid/os/Bundle;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 363
    .local v3, "visitorArray":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 364
    const-string/jumbo v4, "visitor_json"

    aget-object v5, v3, v6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v4, p4, p5, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    .line 372
    .local v2, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 375
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v3    # "visitorArray":[Ljava/lang/String;
    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 384
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 385
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "queryAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->doSearchQuery(Landroid/content/Intent;)V

    .line 389
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onResume()V

    .line 329
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/commonsware/cwac/endless/EndlessAdapter;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->notifyDataSetChanged()V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkData:Lorg/json/JSONArray;

    return-object v0
.end method
