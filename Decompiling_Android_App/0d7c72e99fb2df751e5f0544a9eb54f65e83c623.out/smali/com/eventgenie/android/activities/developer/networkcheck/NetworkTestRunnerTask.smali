.class Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;
.super Landroid/os/AsyncTask;
.source "NetworkTestRunnerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;",
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
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->mActivity:Landroid/app/Activity;

    .line 44
    new-instance v0, Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/help/DebugHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    .line 45
    return-void
.end method

.method private getNetworkTestInformation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "report":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTester;

    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTester;-><init>(Landroid/app/Activity;)V

    .line 75
    .local v1, "tester":Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTester;
    invoke-virtual {v1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTester;->getConnectionInformation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTester;->getClientInformation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTester;->performPreAggreedContentCheck()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->publishProgress([Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 82
    :cond_0
    const-string v2, "DEVICE OFFLINE! Skipping tests!\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    new-instance v0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;

    invoke-direct {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;-><init>()V

    .line 51
    .local v0, "result":Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;
    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Test run started at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->publishProgress([Ljava/lang/Object;)V

    .line 53
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\n---> Getting Device Information: \n\n"

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->publishProgress([Ljava/lang/Object;)V

    .line 54
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/help/DebugHelper;->getDeviceInformation()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;->setDeviceInformation(Ljava/lang/String;)V

    .line 56
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->publishProgress([Ljava/lang/Object;)V

    .line 58
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\n---> Getting Package Information for GenieConnect apps: \n\n"

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->publishProgress([Ljava/lang/Object;)V

    .line 59
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->mDebugHelp:Lcom/eventgenie/android/utils/help/DebugHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/help/DebugHelper;->getPackageInformation()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;->setPackageInformation(Ljava/lang/String;)V

    .line 61
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->publishProgress([Ljava/lang/Object;)V

    .line 63
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\n---> Performing Network tests: \n\n"

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->publishProgress([Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->getNetworkTestInformation()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;->setNetworkTests(Ljava/lang/String;)V

    .line 66
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->publishProgress([Ljava/lang/Object;)V

    .line 68
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;->doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;

    move-result-object v0

    return-object v0
.end method
