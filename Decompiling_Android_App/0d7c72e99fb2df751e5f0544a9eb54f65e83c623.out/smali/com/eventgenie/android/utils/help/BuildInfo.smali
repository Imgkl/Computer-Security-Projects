.class public Lcom/eventgenie/android/utils/help/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# instance fields
.field private final mFirstInstallTime:Ljava/lang/String;

.field private final mGenieBuildVersion:Ljava/lang/String;

.field private final mGenieDevMode:Z

.field private final mGenieProoferAvailable:Z

.field private final mLastUpdateTime:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mVersionCode:I

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v6, Lcom/eventgenie/android/R$string;->library_build:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieBuildVersion:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$bool;->proofer_available:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieProoferAvailable:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$bool;->development:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieDevMode:Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mPackageName:Ljava/lang/String;

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 67
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 68
    .local v5, "tmpVersion":Ljava/lang/String;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 69
    .local v2, "tmpCode":I
    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v6, v7}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toJsonString(J)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "tmpFirstInstallTime":Ljava/lang/String;
    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v6, v7}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toJsonString(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 78
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .local v4, "tmpLastUpdateTime":Ljava/lang/String;
    :goto_0
    iput-object v5, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mVersionName:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mVersionCode:I

    .line 80
    iput-object v3, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mFirstInstallTime:Ljava/lang/String;

    .line 81
    iput-object v4, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mLastUpdateTime:Ljava/lang/String;

    .line 82
    return-void

    .line 71
    .end local v2    # "tmpCode":I
    .end local v3    # "tmpFirstInstallTime":Ljava/lang/String;
    .end local v4    # "tmpLastUpdateTime":Ljava/lang/String;
    .end local v5    # "tmpVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "-1"

    .line 73
    .restart local v5    # "tmpVersion":Ljava/lang/String;
    const/4 v2, -0x1

    .line 74
    .restart local v2    # "tmpCode":I
    const/4 v3, 0x0

    .line 75
    .restart local v3    # "tmpFirstInstallTime":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "tmpLastUpdateTime":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getCodeVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieBuildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstInstallTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mFirstInstallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mLastUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public isDevModeEnabled()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieDevMode:Z

    return v0
.end method

.method public isProoferAvailable()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieProoferAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuildInfo [mGenieProoferAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieProoferAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGenieDevMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieDevMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFirstInstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mFirstInstallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mLastUpdateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGenieBuildVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mGenieBuildVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/BuildInfo;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
