.class Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;
.super Landroid/os/AsyncTask;
.source "DebugLogCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    new-instance v0, Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/help/DebugHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    .line 43
    return-void
.end method

.method private getDebugLog()Ljava/lang/String;
    .locals 11

    .prologue
    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v6, "report":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getLogArray()[Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "log":[Ljava/lang/String;
    const-wide/16 v2, 0x1

    .line 75
    .local v2, "count":J
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v7, v0, v1

    .line 76
    .local v7, "string":Ljava/lang/String;
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v7    # "string":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    new-instance v0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;

    invoke-direct {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;-><init>()V

    .line 49
    .local v0, "result":Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;
    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Test run started at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 51
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\n---> Getting Device Information: \n\n"

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 52
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/help/DebugHelper;->getDeviceInformation()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->setDeviceInformation(Ljava/lang/String;)V

    .line 54
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 56
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\n---> Getting Package Information for GenieConnect apps: \n\n"

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/help/DebugHelper;->getPackageInformation()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->setPackageInformation(Ljava/lang/String;)V

    .line 59
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 61
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\n---> Fetching Application Log: \n\n"

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 62
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->getDebugLog()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->setDebugLog(Ljava/lang/String;)V

    .line 64
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->publishProgress([Ljava/lang/Object;)V

    .line 66
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;->doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;

    move-result-object v0

    return-object v0
.end method
