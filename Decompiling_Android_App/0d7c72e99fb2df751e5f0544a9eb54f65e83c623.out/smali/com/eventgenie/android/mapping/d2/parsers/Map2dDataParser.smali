.class public Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;
.super Ljava/lang/Object;
.source "Map2dDataParser.java"


# static fields
.field private static final MAP2D_DIR:Ljava/lang/String; = "map2D/"


# instance fields
.field private final DATA_DIR:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->DATA_DIR:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private addNavi(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 15
    .param p1, "mapItemStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "hallId"    # J

    .prologue
    .line 60
    iget-object v11, p0, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 61
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    new-instance v9, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;

    invoke-direct {v9}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;-><init>()V

    .line 63
    .local v9, "naviParser":Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ".navi"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "naviFileName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "map2D/"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "assetsNaviFile":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "/"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "map2D/"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "dataNaviFile":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ MAP2D: addNavi() Try 1 - Data file ("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ")."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 73
    .local v12, "startTime":J
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 77
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    .local v10, "naviStream":Ljava/io/InputStream;
    move-object/from16 v0, p1

    invoke-virtual {v9, v10, v0}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->Parse(Ljava/io/InputStream;Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object p1

    .line 80
    const-string v11, "^ MAP2D: addNavi() Try 1 - Got them!."

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 81
    invoke-static {v12, v13}, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->printRunTime(J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v7, p1

    .line 109
    .end local v10    # "naviStream":Ljava/io/InputStream;
    .end local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .local v7, "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :goto_0
    return-object v7

    .line 84
    .end local v7    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .restart local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :catch_0
    move-exception v5

    .line 85
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 94
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ MAP2D: addNavi() Try 2 - Asset file ("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ")."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 97
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 98
    .restart local v10    # "naviStream":Ljava/io/InputStream;
    move-object/from16 v0, p1

    invoke-virtual {v9, v10, v0}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->Parse(Ljava/io/InputStream;Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object p1

    .line 100
    const-string v11, "^ MAP2D: addNavi() Try 2 - Got them!."

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 101
    invoke-static {v12, v13}, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->printRunTime(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, p1

    .line 102
    .end local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .restart local v7    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    goto :goto_0

    .line 104
    .end local v7    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .end local v10    # "naviStream":Ljava/io/InputStream;
    .restart local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :catch_1
    move-exception v5

    .line 105
    .local v5, "e":Ljava/io/IOException;
    const-string v11, "^ MAP2D: addNavi() Try 2 - Could not open navi file in assets"

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 108
    const-string v11, "^ MAP2D: addNavi() Could not get any navi data..."

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move-object/from16 v7, p1

    .line 109
    .end local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .restart local v7    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    goto :goto_0
.end method

.method private getLocationsFromShapesFile(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 1
    .param p1, "mapItemStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "hallId"    # J

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method private getShapes(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 5
    .param p1, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "hallId"    # J

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    .local v2, "startTime":J
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->getLocationsFromShapesFile(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v1

    .line 136
    if-nez v1, :cond_0

    .line 137
    new-instance v0, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;

    invoke-direct {v0}, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;-><init>()V

    .line 138
    .local v0, "dbParser":Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;
    const-string v4, "^ MAP2D: getShapes() from DB."

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;->parseDb(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v1

    .line 142
    .end local v0    # "dbParser":Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->isMapItemsEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 143
    const-string v4, "^ MAP2D: getShapes() Got them!."

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 144
    invoke-static {v2, v3}, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->printRunTime(J)V

    .line 148
    .end local v1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :goto_0
    return-object v1

    .line 147
    .restart local v1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :cond_1
    const-string v4, "^ MAP2D: getShapes() Could not get any locations."

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static printRunTime(J)V
    .locals 4
    .param p0, "startTime"    # J

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MAP2D: Time elapsed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->getHumanTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 179
    return-void
.end method


# virtual methods
.method public parse(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 7
    .param p1, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "hallId"    # J

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 157
    .local v1, "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->getShapes(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->isMapItemsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const-string v0, "^ MAP2D: Could not load any shapes. Aborting..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    move-object v6, v1

    .line 174
    .end local v1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .local v6, "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :goto_0
    return-object v6

    .line 165
    .end local v6    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .restart local v1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/eventgenie/android/mapping/navigation/NavigationHelper;->isNavigationAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->addNavi(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v1

    .line 169
    :cond_2
    if-eqz v1, :cond_3

    .line 171
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->reLinkCollections()V

    :cond_3
    move-object v6, v1

    .line 174
    .end local v1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .restart local v6    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    goto :goto_0
.end method
