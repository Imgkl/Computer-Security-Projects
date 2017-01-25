.class public Lcom/genie_connect/android/net/updaters/NavigationUpdater;
.super Lcom/genie_connect/android/net/updaters/BaseUpdater;
.source "NavigationUpdater.java"


# static fields
.field private static final BASE_DIRECTORY:Ljava/lang/String; = "map2D/"


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
    .line 55
    invoke-direct {p0}, Lcom/genie_connect/android/net/updaters/BaseUpdater;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getAndroidMappingNavFileMd5()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mConfigFileMd5:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getAndroidMappingNavFileId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mConfigFileId:Ljava/lang/String;

    .line 59
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mNamespace:J

    .line 60
    return-void
.end method

.method private isUpdateNeeded()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ UPDATER_NAV: Navi md5: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mConfigFileMd5:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ UPDATER_NAV: Navi Id : \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mConfigFileId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 92
    iget-object v10, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mConfigFileMd5:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v8

    .line 97
    :cond_1
    iget-object v10, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 99
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mNamespace:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".navi"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "naviFileName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "map2D/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "assetsNaviFile":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "map2D/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "dataNaviFile":Ljava/lang/String;
    const-string v6, ""

    .line 107
    .local v6, "md5":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ UPDATER_NAV: addNavi() Try 1 - Data file ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 108
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 112
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 113
    .local v5, "fileStream":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 115
    iget-object v10, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mConfigFileMd5:Ljava/lang/String;

    invoke-virtual {p0, v6, v10}, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->compareMd5(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    .line 118
    goto/16 :goto_0

    .line 121
    .end local v5    # "fileStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 129
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ UPDATER_NAV: addNavi() Try 2 - Asset file ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 131
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 133
    .restart local v5    # "fileStream":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 135
    iget-object v10, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mConfigFileMd5:Ljava/lang/String;

    invoke-virtual {p0, v6, v10}, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->compareMd5(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    .line 138
    goto/16 :goto_0

    .line 141
    .end local v5    # "fileStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 142
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "^ UPDATER_NAV: addNavi() Try 2 - Could not open navi file in assets"

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 145
    const-string v8, "^ UPDATER_NAV: addNavi() Could not get any navi data..."

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v8, v9

    .line 147
    goto/16 :goto_0
.end method

.method private performUpdate()Z
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mConfigFileId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public doUpdate()Z
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "result":Z
    const-string v1, "^ UPDATER_NAV: Checking for NAVI update..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->isUpdateNeeded()Z

    move-result v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ UPDATER_NAV: Do we update? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->performUpdate()Z

    move-result v0

    .line 74
    :cond_0
    return v0
.end method

.method public getLocalBaseDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map2D/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->mNamespace:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".navi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "naviFileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/updaters/NavigationUpdater;->getLocalBaseDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
