.class public Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteAssetHelperGenieMobile.java"


# static fields
.field private static final ASSET_DB_PATH:Ljava/lang/String; = "databases"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabasePath:Ljava/lang/String;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mForcedUpgradeVersion:I

.field private mIsInitializing:Z

.field private mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mMasterUpgradePathFormat:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I

.field private final mSlaveName:Ljava/lang/String;

.field private mSlaveUpgradePathFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "masterName"    # Ljava/lang/String;
    .param p3, "slaveName"    # Ljava/lang/String;
    .param p4, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "version"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    iput-boolean v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    .line 92
    iput v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mForcedUpgradeVersion:I

    .line 110
    const/4 v0, 0x1

    if-ge p5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Databse name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mSlaveName:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 117
    iput p5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mDatabasePath:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_upgrade_%s-%s.sql"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterUpgradePathFormat:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_upgrade_%s-%s.sql"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mSlaveUpgradePathFormat:Ljava/lang/String;

    .line 124
    const-string v0, "_secondary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_secondary"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_upgrade_%s-%s.sql"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterUpgradePathFormat:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_secondary"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_upgrade_%s-%s.sql"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mSlaveUpgradePathFormat:Ljava/lang/String;

    .line 128
    :cond_2
    return-void
.end method

.method private static checkTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 663
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 664
    .local v1, "count":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 665
    if-gtz v1, :cond_0

    const/4 v2, 0x0

    .line 666
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 670
    if-nez p0, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private copyDatabaseFromAssets(Z)Z
    .locals 12
    .param p1, "isSlave"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    sget-object v8, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "^ DB: creating database from assets..."

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :try_start_0
    iget-object v8, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getArchivePath(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 176
    .local v4, "zipFileStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mDatabasePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 179
    :cond_0
    invoke-static {v4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getFileFromZip(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    move-result-object v5

    .line 180
    .local v5, "zis":Ljava/util/zip/ZipInputStream;
    if-nez v5, :cond_1

    .line 181
    sget-object v8, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "Archive is missing a SQLite database file. Creating from script"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "zipFileStream":Ljava/io/InputStream;
    .end local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    return v6

    .line 184
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "zipFileStream":Ljava/io/InputStream;
    .restart local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabasePath(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->writeExtractedFileToDisk(Ljava/util/zip/ZipInputStream;Ljava/io/OutputStream;)V

    .line 186
    sget-object v8, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "^ DB: database copy complete"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v7

    .line 188
    goto :goto_0

    .line 190
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "zipFileStream":Ljava/io/InputStream;
    .end local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "fe":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "Archive is missing a SQLite database file. Creating from script"

    aput-object v9, v7, v6

    invoke-static {v8, v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    .end local v2    # "fe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to extract "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getArchivePath(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to data directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, "se":Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 196
    throw v3
.end method

.method private createDatabaseFromScript(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "isSlave"    # Z

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabasePath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->createDatabaseFromScript(ZLjava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private createOrOpenDatabase(ZZ)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .param p1, "isSlave"    # Z
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->returnDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 287
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2

    .line 289
    if-eqz p2, :cond_0

    .line 290
    sget-object v1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "^ DB: forcing database upgrade!"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->copyDatabaseFromAssets(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->returnDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->createDatabaseFromScript(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->copyDatabaseFromAssets(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->returnDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_3
    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->createDatabaseFromScript(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private getArchivePath(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isSlave"    # Z

    .prologue
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabaseName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDatabaseName(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isSlave"    # Z

    .prologue
    .line 608
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mSlaveName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getFileFromZip(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;
    .locals 7
    .param p0, "zipFileStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 679
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 680
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    sget-object v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DB: extracting file: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    .end local v1    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    return-object v1

    .restart local v1    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUpgradeFilePaths(IIILjava/util/ArrayList;Z)V
    .locals 8
    .param p1, "baseVersion"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p5, "isSlave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p4, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3, p5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getUpgradeSQLStream(IIZ)Ljava/io/InputStream;

    move-result-object v6

    .line 373
    .local v6, "is":Ljava/io/InputStream;
    if-eqz v6, :cond_1

    .line 374
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mSlaveUpgradePathFormat:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found script: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    add-int/lit8 v2, p2, -0x1

    .line 378
    .local v2, "a":I
    move v3, p2

    .line 379
    .local v3, "b":I
    const/4 v6, 0x0

    .line 385
    .end local v7    # "path":Ljava/lang/String;
    :goto_1
    if-ge v2, p1, :cond_2

    .line 391
    :goto_2
    return-void

    .line 374
    .end local v2    # "a":I
    .end local v3    # "b":I
    :cond_0
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterUpgradePathFormat:Ljava/lang/String;

    goto :goto_0

    .line 381
    :cond_1
    add-int/lit8 v2, p2, -0x1

    .line 382
    .restart local v2    # "a":I
    move v3, p3

    .restart local v3    # "b":I
    goto :goto_1

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v4, p4

    move v5, p5

    .line 388
    invoke-direct/range {v0 .. v5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getUpgradeFilePaths(IIILjava/util/ArrayList;Z)V

    goto :goto_2
.end method

.method private getUpgradeSQLStream(IIZ)Ljava/io/InputStream;
    .locals 8
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I
    .param p3, "isSlave"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 398
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mSlaveUpgradePathFormat:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 404
    :goto_1
    return-object v1

    .line 398
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterUpgradePathFormat:Ljava/lang/String;

    goto :goto_0

    .line 402
    .restart local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DB: missing database upgrade script: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getVersionWithLegacyFallback(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 411
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 414
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "db_schema_version"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 416
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method private static isValidCmd(Ljava/lang/String;)Z
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 688
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 693
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BEGIN TRANSACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    const-string v1, "BEGIN TRANSACTION"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    const-string v1, "COMMIT TRANSACTION"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private obtainDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 9
    .param p1, "isSlave"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, "success":Z
    const/4 v0, 0x0

    .line 477
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->createOrOpenDatabase(ZZ)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 479
    invoke-direct {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getVersionWithLegacyFallback(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    .line 482
    .local v2, "version":I
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mForcedUpgradeVersion:I

    if-ge v2, v3, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->removeDatabases()V

    .line 487
    invoke-direct {p0, p1, v8}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->createOrOpenDatabase(ZZ)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 488
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 490
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 493
    :cond_0
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    if-eq v2, v3, :cond_1

    .line 494
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 496
    if-nez v2, :cond_3

    .line 497
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 505
    :goto_0
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 506
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 513
    :cond_1
    invoke-virtual {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getTablesForValidation(Z)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->validateTableExistance(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 514
    invoke-direct {p0, p1, v8}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->createOrOpenDatabase(ZZ)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 515
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 518
    :cond_2
    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 519
    const/4 v1, 0x1

    .line 520
    return-object v0

    .line 499
    :cond_3
    :try_start_1
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    if-le v2, v3, :cond_4

    .line 500
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ DB: Can\'t downgrade secondary database from version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :cond_4
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private removeDatabases()V
    .locals 4

    .prologue
    .line 524
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mDatabasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabaseName(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, "masterFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 529
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mDatabasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabaseName(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, "slaveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 533
    :cond_1
    return-void
.end method

.method private returnDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 10
    .param p1, "slave"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 616
    invoke-direct {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabaseName(Z)Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mDatabasePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 620
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ DB: successfully opened database "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v0

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DB: could not open database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateTableExistance(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tables"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    array-length v4, p2

    if-lez v4, :cond_0

    sget-object v4, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "^ DB: checking the existance of tables..."

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_2

    .line 650
    aget-object v4, p2, v0

    invoke-static {p1, v4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->checkTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 651
    .local v1, "res":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 652
    sget-object v4, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DB: table \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' does not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    .end local v1    # "res":Ljava/lang/Boolean;
    :goto_1
    return v2

    .line 649
    .restart local v1    # "res":Ljava/lang/Boolean;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    .end local v1    # "res":Ljava/lang/Boolean;
    :cond_2
    array-length v4, p2

    if-lez v4, :cond_3

    sget-object v4, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "^ tables ok"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v2, v3

    .line 658
    goto :goto_1
.end method

.method private static writeExtractedFileToDisk(Ljava/util/zip/ZipInputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "zin"    # Ljava/util/zip/ZipInputStream;
    .param p1, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 709
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "length":I
    if-lez v1, :cond_0

    .line 710
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 712
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 713
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 714
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 715
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected createDatabaseFromScript(ZLjava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 12
    .param p1, "isSlave"    # Z
    .param p2, "dbPath"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0, p2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->openOrCreateDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 229
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating database from script: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "databases/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_0

    const-string v7, "eventgenie_v.sql"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "scriptPath":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 235
    .local v4, "sqlStream":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 236
    new-instance v7, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find required SQL script "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in assets"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    .end local v4    # "sqlStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "ex":Ljava/io/IOException;
    new-instance v7, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error retrieving required SQL script "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from assets"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 231
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "scriptPath":Ljava/lang/String;
    :cond_0
    const-string v7, "eventgenie_u.sql"

    goto :goto_0

    .line 239
    .restart local v2    # "scriptPath":Ljava/lang/String;
    .restart local v4    # "sqlStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-static {v4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "sql":Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ";"

    invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    .local v6, "statements":Ljava/util/StringTokenizer;
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 246
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 247
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "statement":Ljava/lang/String;
    invoke-static {v5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->isValidCmd(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 250
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 257
    .end local v5    # "statement":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 264
    .end local v3    # "sql":Ljava/lang/String;
    .end local v4    # "sqlStream":Ljava/io/InputStream;
    .end local v6    # "statements":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "ex":Landroid/database/SQLException;
    new-instance v7, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error executing SQL script to create database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 254
    .end local v1    # "ex":Landroid/database/SQLException;
    .restart local v3    # "sql":Ljava/lang/String;
    .restart local v4    # "sqlStream":Ljava/io/InputStream;
    .restart local v6    # "statements":Ljava/util/StringTokenizer;
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 257
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 260
    iget v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 268
    return-object v0
.end method

.method protected getDatabasePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mDatabasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabasePath(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isSlave"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mSlaveName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabasePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;
    .locals 2

    .prologue
    .line 536
    new-instance v0, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-virtual {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 8

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 336
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    if-eqz v3, :cond_2

    .line 337
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 341
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    throw v1

    .line 344
    :cond_3
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for writing (will try read-only):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    .line 350
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    if-eq v3, v4, :cond_5

    .line 353
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t upgrade read-only database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 362
    .end local v2    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    .line 363
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 357
    .restart local v2    # "path":Ljava/lang/String;
    :cond_5
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 358
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opened "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in read-only mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 360
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 362
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    .line 363
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public getTablesForValidation(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "isSlave"    # Z

    .prologue
    .line 641
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->slaveTablesForValidation()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->masterTablesForValidation()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :goto_0
    monitor-exit p0

    return-object v2

    .line 445
    :cond_0
    :try_start_1
    sget-object v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "AAAAAA Creating Database"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iget-boolean v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    if-eqz v2, :cond_1

    .line 447
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getWritableDatabase called recursively"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 450
    :cond_1
    const/4 v0, 0x0

    .line 451
    .local v0, "masterDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 453
    .local v1, "slaveDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    .line 455
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->obtainDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 456
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->obtainDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 458
    if-eqz v1, :cond_2

    .line 459
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    :cond_2
    :goto_1
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATTACH \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabasePath(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AS Slave"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 466
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    .line 467
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 470
    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 466
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mIsInitializing:Z

    .line 467
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 459
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected hotSwapSlaveDatabase(Ljava/lang/String;)V
    .locals 7
    .param p1, "replacementPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 722
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabasePath(Z)Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "slavePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    .local v2, "slaveFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v1, "replacementFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 727
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to hot-swap with non-existent database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 731
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DETACH Slave"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 735
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 737
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mMasterDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATTACH \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AS Slave"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public masterTablesForValidation()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public needsCreateOrUpgrade()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 540
    invoke-direct {p0, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->returnDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 541
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v2

    .line 544
    :cond_1
    invoke-direct {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getVersionWithLegacyFallback(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 545
    .local v1, "version":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 546
    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mNewVersion:I

    if-ne v1, v4, :cond_0

    move v2, v3

    .line 550
    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 556
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;IIZ)V

    .line 561
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;IIZ)V
    .locals 24
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .param p4, "isSlave"    # Z

    .prologue
    .line 564
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const-string v4, "^ DB:  >> ===================================================== << "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DB: Upgrading database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v7, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v5, p3, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getUpgradeFilePaths(IIILjava/util/ArrayList;Z)V

    .line 570
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v12, "otherPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v10, p3, -0x1

    if-nez p4, :cond_0

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v11, p3

    invoke-direct/range {v8 .. v13}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getUpgradeFilePaths(IIILjava/util/ArrayList;Z)V

    .line 573
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DB: no upgrade script (master nor slave) path from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no upgrade script path from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 571
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 578
    :cond_1
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 579
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 581
    .local v22, "path":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DB: processing upgrade: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 583
    .local v20, "is":Ljava/io/InputStream;
    invoke-static/range {v20 .. v20}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v23

    .line 584
    .local v23, "sql":Ljava/lang/String;
    if-eqz v23, :cond_2

    .line 585
    const-string v3, ";"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 586
    .local v16, "cmds":[Ljava/lang/String;
    move-object/from16 v14, v16

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v15, v14, v19

    .line 587
    .local v15, "cmd":Ljava/lang/String;
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {v15}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->isValidCmd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 589
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 593
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v15    # "cmd":Ljava/lang/String;
    .end local v16    # "cmds":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v21    # "len$":I
    .end local v23    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 594
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 598
    .end local v17    # "e":Ljava/io/IOException;
    .end local v22    # "path":Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DB: Successfully upgraded database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->onUpgradeComplete(II)V

    .line 601
    return-void
.end method

.method protected onUpgradeComplete(II)V
    .locals 0
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 605
    return-void
.end method

.method protected openOrCreateDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6
    .param p1, "dbPath"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mDatabasePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "dbDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 217
    :cond_0
    sget-object v1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating database from script: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    invoke-static {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method public setForcedUpgradeVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 629
    iput p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->mForcedUpgradeVersion:I

    .line 630
    return-void
.end method

.method public slaveTablesForValidation()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
