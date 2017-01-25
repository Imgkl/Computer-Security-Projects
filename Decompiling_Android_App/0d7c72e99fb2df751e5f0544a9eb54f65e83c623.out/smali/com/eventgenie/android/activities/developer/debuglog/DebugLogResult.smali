.class Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;
.super Ljava/lang/Object;
.source "DebugLogResult.java"


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# instance fields
.field private mDebugLog:Ljava/lang/String;

.field private mDeviceInformation:Ljava/lang/String;

.field private mPackageInformation:Ljava/lang/String;

.field private final mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getNowAsJsonString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->mTimeStamp:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getDebugLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->mDebugLog:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->mDeviceInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->mPackageInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public setDebugLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->mDebugLog:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDeviceInformation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeviceInformation"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->mDeviceInformation:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPackageInformation(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageInformation"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->mPackageInformation:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "--- BEGIN REPORT ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeStamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "*** DEVICE INFORMATION ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->getDeviceInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "*** PACKAGE INFORMATION ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->getPackageInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "*** DEBUG LOG***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->getDebugLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "--- END REPORT ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/crypt/HashHelper;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DO NOT EDIT BELOW THIS LINE\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
