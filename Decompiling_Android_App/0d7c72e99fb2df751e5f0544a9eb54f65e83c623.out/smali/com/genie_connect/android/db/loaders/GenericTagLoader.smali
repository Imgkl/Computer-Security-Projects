.class public Lcom/genie_connect/android/db/loaders/GenericTagLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "GenericTagLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/loaders/GenericTagLoader$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/eventgenie/android/container/MultiCursorContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mTagId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "tag"    # Ljava/lang/Long;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ^ GENERICTAGLOADER new instance tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Entity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 54
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    .line 55
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/eventgenie/android/container/MultiCursorContainer;
    .locals 8

    .prologue
    .line 59
    const-string v5, "^ GENERICTAGLOADER: loadinBackbround start"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 60
    new-instance v4, Lcom/eventgenie/android/container/MultiCursorContainer;

    iget-object v5, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/eventgenie/android/container/MultiCursorContainer;-><init>(Landroid/app/Activity;)V

    .line 61
    .local v4, "result":Lcom/eventgenie/android/container/MultiCursorContainer;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    .line 65
    .local v0, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/access/DbTagsV2;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    .line 67
    .local v3, "mThisTagCursor":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ^ GENERICTAGLOADER: getRelevantChildTagsForEntity TagID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Entity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 69
    sget-object v5, Lcom/genie_connect/android/db/loaders/GenericTagLoader$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v6}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    const/4 v1, 0x0

    .line 102
    .local v1, "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ TAGLIST: No idea what to do with: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 105
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ^ GENERICTAGLOADER: getRelevantChildTagsForEntity mTagsCursor count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ^ GENERICTAGLOADER: getRelevantChildTagsForEntity mEntityCursor count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ^ GENERICTAGLOADER: getRelevantChildTagsForEntity mThisTagCursor count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 114
    const-string v5, "Tags"

    invoke-virtual {v4, v2, v5}, Lcom/eventgenie/android/container/MultiCursorContainer;->addCursor(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;)V

    .line 115
    const-string v5, "Data"

    invoke-virtual {v4, v1, v5}, Lcom/eventgenie/android/container/MultiCursorContainer;->addCursor(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;)V

    .line 116
    const-string v5, "This Tag"

    invoke-virtual {v4, v3, v5}, Lcom/eventgenie/android/container/MultiCursorContainer;->addCursor(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;)V

    .line 117
    const-string v5, "^ GENERICTAGLOADER: loadinBackbround stop"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 119
    return-object v4

    .line 71
    .end local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_0
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .line 72
    .restart local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ^ GENERICTAGLOADER: getRelevantChildTagsForEntity mTagsCursor count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 74
    invoke-interface {v2}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ^ GENERICTAGLOADER: getRelevantChildTagsForEntity mTagsCursor first element label: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "label"

    invoke-interface {v2, v6}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ^ GENERICTAGLOADER: getRelevantChildTagsForEntity mTagsCursor first element id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "id"

    invoke-interface {v2, v6}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/access/DbExhibitors;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 82
    .restart local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto/16 :goto_0

    .line 84
    .end local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_1
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .line 85
    .restart local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getProductsDb()Lcom/genie_connect/android/db/access/DbProducts;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/access/DbProducts;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 86
    .restart local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto/16 :goto_0

    .line 88
    .end local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_2
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .line 89
    .restart local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/access/DbPoi;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 90
    .restart local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto/16 :goto_0

    .line 92
    .end local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_3
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .line 93
    .restart local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/access/DbAppRefs;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 94
    .restart local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto/16 :goto_0

    .line 96
    .end local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_4
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .line 97
    .restart local v2    # "mTagsCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->mTagId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/access/DbSpeakers;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 98
    .restart local v1    # "mEntityCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->loadInBackground()Lcom/eventgenie/android/container/MultiCursorContainer;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "^ GENERICTAGLOADER: onAbandon"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 143
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onAbandon()V

    .line 144
    return-void
.end method

.method public onCanceled(Lcom/eventgenie/android/container/MultiCursorContainer;)V
    .locals 1
    .param p1, "data"    # Lcom/eventgenie/android/container/MultiCursorContainer;

    .prologue
    .line 136
    const-string v0, "^ GENERICTAGLOADER: onCanceled"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Lcom/eventgenie/android/container/MultiCursorContainer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->onCanceled(Lcom/eventgenie/android/container/MultiCursorContainer;)V

    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 130
    const-string v0, "^ GENERICTAGLOADER: onForceLoad"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 131
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onForceLoad()V

    .line 132
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 148
    const-string v0, "^ GENERICTAGLOADER: onReset"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 149
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 150
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "^ GENERICTAGLOADER: onStopLoading"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/GenericTagLoader;->cancelLoad()Z

    .line 126
    return-void
.end method
