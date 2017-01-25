.class public Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;
.super Lcom/genie_connect/android/net/updaters/BaseUpdater;
.source "FeedbackFormUpdater.java"


# static fields
.field public static final BASE_DIRECTORY:Ljava/lang/String; = "feedback/"


# instance fields
.field private final mConfigFileId:Ljava/lang/String;

.field private final mConfigFileMd5:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNamespace:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/genie_connect/android/net/updaters/BaseUpdater;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getFeedbackZipFileMd5()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mConfigFileMd5:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getFeedbackZipFileId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mConfigFileId:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mNamespace:J

    .line 58
    return-void
.end method

.method public static clearDirectory(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "feedback/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->removeDirectory(Ljava/io/File;)Z

    .line 177
    return-void
.end method

.method private isUpdateNeeded()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ UPDATER_FB: File md5: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mConfigFileMd5:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ UPDATER_FB: File Id : \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mConfigFileId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 110
    iget-object v9, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mConfigFileMd5:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 112
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalBaseDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->removeDirectory(Ljava/io/File;)Z

    .line 167
    :cond_0
    :goto_0
    return v7

    .line 117
    :cond_1
    iget-object v9, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 119
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "feedback/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mNamespace:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "assetsFile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "dataFile":Ljava/lang/String;
    const-string v6, ""

    .line 126
    .local v6, "md5":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ UPDATER_FB: isUpdateNeeded() Try 1 - Data file ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 127
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 131
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 132
    .local v5, "fileStream":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 134
    iget-object v9, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mConfigFileMd5:Ljava/lang/String;

    invoke-virtual {p0, v6, v9}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->compareMd5(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    .line 137
    goto :goto_0

    .line 140
    .end local v5    # "fileStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ FBKUP: isUpdateNeeded() Try 2 - Asset file ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 150
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 152
    .restart local v5    # "fileStream":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 154
    iget-object v9, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mConfigFileMd5:Ljava/lang/String;

    invoke-virtual {p0, v6, v9}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->compareMd5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 155
    iget-object v9, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v1, v10}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->copyAssetToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 161
    .end local v5    # "fileStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 162
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "^ UPDATER_FB: isUpdateNeeded() Try 2 - Could not open feedback file in assets"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 165
    const-string v7, "^ UPDATER_FB: isUpdateNeeded() Could not get any feedback data..."

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 167
    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "fileStream":Ljava/io/InputStream;
    :cond_3
    move v7, v8

    .line 158
    goto/16 :goto_0
.end method

.method private performUpdate()Z
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mConfigFileId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public copyAndExtractAssetsFile()Z
    .locals 6

    .prologue
    .line 61
    iget-object v3, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 62
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feedback/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mNamespace:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "assetsFile":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalBaseDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->removeDirectory(Ljava/io/File;)Z

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 67
    iget-object v3, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->copyAssetToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalBaseDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->extractZip(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "^ UPDATER_FB: Error extracting AssetsFile."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 71
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public doUpdate()Z
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "result":Z
    const-string v1, "^ UPDATER_FB: Checking for Feedback form update..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->isUpdateNeeded()Z

    move-result v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ UPDATER_FB: Do we update? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 84
    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalBaseDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->removeDirectory(Ljava/io/File;)Z

    .line 86
    invoke-direct {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->performUpdate()Z

    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalBaseDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->extractZip(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    :cond_0
    return v0
.end method

.method public getLocalBaseDirectory()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feedback/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->mNamespace:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalBaseDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
