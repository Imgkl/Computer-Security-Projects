.class Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;
.super Landroid/os/AsyncTask;
.source "DbInfoCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->mActivity:Landroid/app/Activity;

    .line 48
    new-instance v0, Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/help/DebugHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    .line 49
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 53
    new-instance v8, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;

    invoke-direct {v8}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;-><init>()V

    .line 55
    .local v8, "result":Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New Test run started at: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->getTimeStamp()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "...\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 57
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "\n---> DatabaseContents: \n\n"

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 59
    iget-object v11, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    .line 60
    .local v4, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v9, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    .line 63
    .local v1, "array":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 65
    move-object v0, v1

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v0, v6

    .line 66
    .local v5, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEntityCount(Ljava/lang/String;)J

    move-result-wide v2

    .line 67
    .local v2, "count":J
    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v11, " #: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 70
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "count":J
    .end local v5    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_0
    iget-object v11, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-virtual {v11}, Lcom/eventgenie/android/utils/help/DebugHelper;->getDeviceInformation()Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "tmp":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->setDeviceInformation(Ljava/lang/String;)V

    .line 75
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {p0, v11}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 77
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "\n---> Getting Package Information for GenieConnect apps: \n\n"

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 78
    iget-object v11, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-virtual {v11}, Lcom/eventgenie/android/utils/help/DebugHelper;->getPackageInformation()Ljava/lang/String;

    move-result-object v10

    .line 79
    invoke-virtual {v8, v10}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->setPackageInformation(Ljava/lang/String;)V

    .line 80
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {p0, v11}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 82
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "\n---> Fetching Database Log: \n\n"

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 84
    invoke-virtual {v8, v10}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->setDatabaseLog(Ljava/lang/String;)V

    .line 85
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {p0, v11}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 87
    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoCollectorTask;->doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;

    move-result-object v0

    return-object v0
.end method
