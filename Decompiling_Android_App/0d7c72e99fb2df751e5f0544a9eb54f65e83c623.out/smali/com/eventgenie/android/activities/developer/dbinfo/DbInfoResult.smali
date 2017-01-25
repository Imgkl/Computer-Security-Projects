.class Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;
.super Ljava/lang/Object;
.source "DbInfoResult.java"


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# instance fields
.field private mDatabaseLog:Ljava/lang/String;

.field private mDeviceInformation:Ljava/lang/String;

.field private mPackageInformation:Ljava/lang/String;

.field private final mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getNowAsJsonString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->mTimeStamp:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getDatabaseLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->mDatabaseLog:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->mDeviceInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->mPackageInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public setDatabaseLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "databaseLog"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->mDatabaseLog:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDeviceInformation(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceInformation"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->mDeviceInformation:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPackageInformation(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageInformation"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->mPackageInformation:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public toEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "--- BEGIN REPORT ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeStamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "*** DEVICE INFORMATION ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->getDeviceInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "*** PACKAGE INFORMATION ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->getPackageInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "*** DATABASE LOG ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoResult;->getDatabaseLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "--- END REPORT ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
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

    .line 91
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
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
