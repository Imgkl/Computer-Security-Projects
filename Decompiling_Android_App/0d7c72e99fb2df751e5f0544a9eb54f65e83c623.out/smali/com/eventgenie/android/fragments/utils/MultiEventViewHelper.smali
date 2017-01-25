.class public Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;
.super Lcom/eventgenie/android/fragments/utils/BaseViewHelper;
.source "MultiEventViewHelper.java"


# static fields
.field public static final TAG_ALL:Ljava/lang/String; = "tab_all"

.field public static final TAG_UPCOMING:Ljava/lang/String; = "tab_upcoming"

.field public static final TYPE_ALL:I = 0x0

.field public static final TYPE_UPCOMING:I = 0x1


# instance fields
.field private final mCursorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mNamespace:J


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;J)V
    .locals 2
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "namespace"    # J

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 77
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB(I)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    .line 79
    iput-wide p2, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mNamespace:J

    .line 80
    return-void
.end method

.method private addAppsListSection(Landroid/database/Cursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    new-instance v0, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mNamespace:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    .line 85
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ MULTI: Cursor empty for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAllEventsAdapter()Landroid/widget/ListAdapter;
    .locals 16

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 145
    new-instance v3, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v3}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    .line 146
    .local v3, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v10, v11, v14}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v10

    sget-object v11, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MULTIEVENT:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v12, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v10, v11, v12}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "noun":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v10, v11, v14}, Lcom/genie_connect/android/db/datastore/Datastore;->getSecondaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v8

    .line 155
    .local v8, "secondConfig":Lcom/genie_connect/android/db/config/AppConfig;
    if-eqz v8, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v10

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefByNamespace(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .line 160
    .local v2, "activeApp":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    sget v11, Lcom/eventgenie/android/R$string;->event_last_viewed:I

    invoke-virtual {v10, v11}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v3

    check-cast v10, Lcom/commonsware/cwac/merge/MergeAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v10}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->addAppsListSection(Landroid/database/Cursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 171
    .end local v2    # "activeApp":Landroid/database/Cursor;
    :goto_0
    if-nez v8, :cond_2

    const/4 v4, 0x0

    .line 173
    .local v4, "excludedId":Ljava/lang/Long;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ MULTI: Excluding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v10

    new-instance v11, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    invoke-direct {v11}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;-><init>()V

    sget-object v12, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->NOT:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    invoke-virtual {v11, v12, v4}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setAppIdFilter(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;Ljava/lang/Long;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v11

    sget-object v12, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->YES:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    invoke-virtual {v11, v12}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setFeatured(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefs(Lcom/genie_connect/android/db/access/queryparam/AppRefParams;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    .line 181
    .local v5, "feturedApps":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    sget v11, Lcom/eventgenie/android/R$string;->featured_format:I

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v6, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v3

    check-cast v10, Lcom/commonsware/cwac/merge/MergeAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v10}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->addAppsListSection(Landroid/database/Cursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v10

    new-instance v11, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    invoke-direct {v11}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;-><init>()V

    sget-object v12, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->NOT:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    invoke-virtual {v11, v12, v4}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setAppIdFilter(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;Ljava/lang/Long;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v11

    sget-object v12, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->FUTURE:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    invoke-virtual {v11, v12}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setTimePosition(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefs(Lcom/genie_connect/android/db/access/queryparam/AppRefParams;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v9

    .line 194
    .local v9, "upcomingApps":Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ QUERy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v9

    check-cast v0, Luk/co/alt236/easycursor/EasyCursor;

    move-object v10, v0

    invoke-interface {v10}, Luk/co/alt236/easycursor/EasyCursor;->getQueryModel()Luk/co/alt236/easycursor/EasyQueryModel;

    move-result-object v10

    invoke-interface {v10}, Luk/co/alt236/easycursor/EasyQueryModel;->toJson()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    sget v11, Lcom/eventgenie/android/R$string;->upcoming_format:I

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v6, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v3

    check-cast v10, Lcom/commonsware/cwac/merge/MergeAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v10}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->addAppsListSection(Landroid/database/Cursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v10

    new-instance v11, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    invoke-direct {v11}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;-><init>()V

    sget-object v12, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->NOT:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    invoke-virtual {v11, v12, v4}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setAppIdFilter(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;Ljava/lang/Long;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v11

    sget-object v12, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->PAST:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    invoke-virtual {v11, v12}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setTimePosition(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v11

    sget-object v12, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->NO:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    invoke-virtual {v11, v12}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setFeatured(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefs(Lcom/genie_connect/android/db/access/queryparam/AppRefParams;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 208
    .local v7, "otherApps":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    sget v11, Lcom/eventgenie/android/R$string;->old_format:I

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v6, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v3

    check-cast v10, Lcom/commonsware/cwac/merge/MergeAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11, v10}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->addAppsListSection(Landroid/database/Cursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-object v3

    .line 165
    .end local v4    # "excludedId":Ljava/lang/Long;
    .end local v5    # "feturedApps":Landroid/database/Cursor;
    .end local v7    # "otherApps":Landroid/database/Cursor;
    .end local v9    # "upcomingApps":Landroid/database/Cursor;
    :cond_0
    const-string v10, "^ MULTI: Error getting secondary config!"

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    .end local v8    # "secondConfig":Lcom/genie_connect/android/db/config/AppConfig;
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "secondConfig":Lcom/genie_connect/android/db/config/AppConfig;
    goto/16 :goto_0

    .line 171
    :cond_2
    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_1

    .line 195
    .restart local v4    # "excludedId":Ljava/lang/Long;
    .restart local v5    # "feturedApps":Landroid/database/Cursor;
    .restart local v9    # "upcomingApps":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private getUpcomingEventsAdapter()Landroid/widget/ListAdapter;
    .locals 6

    .prologue
    .line 218
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v2

    new-instance v3, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    invoke-direct {v3}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;-><init>()V

    sget-object v4, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->FUTURE:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setTimePosition(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefs(Lcom/genie_connect/android/db/access/queryparam/AppRefParams;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 220
    .local v1, "apps":Landroid/database/Cursor;
    new-instance v0, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mNamespace:J

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    .line 225
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-object v0
.end method


# virtual methods
.method public addAppsListView(I)Landroid/view/View;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getAllEventsAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const-string/jumbo v1, "tab_all"

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getUpcomingEventsAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const-string/jumbo v1, "tab_upcoming"

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addAppsListView(Ljava/lang/Long;)Landroid/view/View;
    .locals 11
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 104
    iget-object v1, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, p1, v2}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    .line 111
    .local v3, "dataCategories":Landroid/database/Cursor;
    if-nez p1, :cond_0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v1

    new-instance v2, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    invoke-direct {v2}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;-><init>()V

    invoke-virtual {v2, p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setTagFilter(Ljava/lang/Long;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefs(Lcom/genie_connect/android/db/access/queryparam/AppRefParams;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v9

    .line 115
    .local v9, "data":Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ MULTI: addAppsListView() Tag \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_tagv2:I

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "label"

    aput-object v5, v4, v6

    new-array v5, v10, [I

    const v10, 0x1020014

    aput v10, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 125
    .local v0, "adapterCategories":Landroid/widget/ListAdapter;
    new-instance v8, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v4, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mNamespace:J

    invoke-direct {v8, v1, v9, v4, v5}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    .line 127
    .local v8, "adapterData":Landroid/widget/ListAdapter;
    new-instance v7, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v7}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    .line 128
    .local v7, "adapter":Lcom/commonsware/cwac/merge/MergeAdapter;
    invoke-virtual {v7, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-virtual {v7, v8}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v1, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 138
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 139
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .line 141
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->mCursorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 142
    return-void
.end method

.method public bridge synthetic createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ResourceCursorTreeAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleColour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
