.class public Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteAssetHelper.java"


# static fields
.field private static final ASSET_DB_PATH:Ljava/lang/String; = "databases"

.field private static final BEGIN_TRANSACTION:Ljava/lang/String; = "begin transaction"

.field private static final COMMIT_TRANSACTION:Ljava/lang/String; = "commit transaction"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowNestedTransactions:Z

.field private mArchivePath:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabasePath:Ljava/lang/String;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mForcedUpgradeVersion:I

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I

.field private mUpgradePathFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    iput-boolean v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 72
    iput-boolean v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mAllowNestedTransactions:Z

    .line 81
    iput v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mForcedUpgradeVersion:I

    .line 99
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Databse name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 105
    iput p4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mArchivePath:Ljava/lang/String;

    .line 108
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

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    .line 109
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

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mUpgradePathFormat:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 461
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyDatabaseFromAssets()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v6, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    const-string v7, "copying database from assets..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    iget-object v6, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iget-object v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mArchivePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 131
    .local v4, "zipFileStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 134
    :cond_0
    invoke-static {v4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getFileFromZip(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    move-result-object v5

    .line 135
    .local v5, "zis":Ljava/util/zip/ZipInputStream;
    if-nez v5, :cond_1

    .line 136
    new-instance v6, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    const-string v7, "Archive is missing a SQLite database file"

    invoke-direct {v6, v7}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "zipFileStream":Ljava/io/InputStream;
    .end local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "fe":Ljava/io/FileNotFoundException;
    new-instance v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mArchivePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file in assets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "se":Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 145
    throw v3

    .line 138
    .end local v2    # "fe":Ljava/io/FileNotFoundException;
    .end local v3    # "se":Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "zipFileStream":Ljava/io/InputStream;
    .restart local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->writeExtractedFileToDisk(Ljava/util/zip/ZipInputStream;Ljava/io/OutputStream;)V

    .line 140
    sget-object v6, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    const-string v7, "database copy complete"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    return-void

    .line 146
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "zipFileStream":Ljava/io/InputStream;
    .end local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to extract "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mArchivePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to data directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v3    # "se":Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 149
    throw v3
.end method

.method private createOrOpenDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->returnDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 157
    if-eqz p1, :cond_0

    .line 158
    sget-object v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    const-string v3, "forcing database upgrade!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->copyDatabaseFromAssets()V

    .line 160
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->returnDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 167
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 165
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->copyDatabaseFromAssets()V

    .line 166
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->returnDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, v0

    .line 167
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0
.end method

.method private static getFileFromZip(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;
    .locals 5
    .param p0, "zipFileStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 466
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 467
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    sget-object v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extracting file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v1    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    return-object v1

    .restart local v1    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUpgradeFilePaths(IIILjava/util/ArrayList;)V
    .locals 8
    .param p1, "baseVersion"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p4, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getUpgradeSQLStream(II)Ljava/io/InputStream;

    move-result-object v2

    .line 232
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 233
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mUpgradePathFormat:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, p2, -0x1

    .line 237
    .local v0, "a":I
    move v1, p2

    .line 238
    .local v1, "b":I
    const/4 v2, 0x0

    .line 244
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 250
    :goto_1
    return-void

    .line 240
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 241
    .restart local v0    # "a":I
    move v1, p3

    .restart local v1    # "b":I
    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0, p1, v0, v1, p4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getUpgradeFilePaths(IIILjava/util/ArrayList;)V

    goto :goto_1
.end method

.method private getUpgradeSQLStream(II)Ljava/io/InputStream;
    .locals 7
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 253
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mUpgradePathFormat:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing database upgrade script: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidCmd(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 361
    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "trimmedCmd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 371
    iget-boolean v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mAllowNestedTransactions:Z

    if-nez v2, :cond_2

    .line 372
    const-string v2, "begin transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    const-string v2, "begin transaction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const-string v2, "commit transaction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private returnDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 430
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 431
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "successfully opened database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not open database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    goto :goto_0
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
    .line 475
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 477
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "length":I
    if-lez v1, :cond_0

    .line 478
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 481
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 482
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 483
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

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

    .line 120
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 195
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    if-eqz v3, :cond_2

    .line 196
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 200
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    throw v1

    .line 203
    :cond_3
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 209
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    if-eq v3, v4, :cond_5

    .line 212
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

    iget v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

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

    .line 221
    .end local v2    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 222
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    .restart local v2    # "path":Ljava/lang/String;
    :cond_5
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 219
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 222
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 288
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    if-eqz v3, :cond_2

    .line 289
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getWritableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 298
    :cond_2
    const/4 v1, 0x0

    .line 299
    .local v1, "success":Z
    const/4 v0, 0x0

    .line 302
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 308
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->createOrOpenDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 313
    .local v2, "version":I
    if-eqz v2, :cond_3

    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mForcedUpgradeVersion:I

    if-ge v2, v3, :cond_3

    .line 314
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->createOrOpenDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 315
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 316
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 319
    :cond_3
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    if-eq v2, v3, :cond_4

    .line 320
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 322
    if-nez v2, :cond_6

    .line 323
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 331
    :goto_1
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 332
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 334
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 338
    :cond_4
    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 339
    const/4 v1, 0x1

    .line 342
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 343
    if-eqz v1, :cond_a

    .line 344
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    .line 345
    :try_start_6
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 348
    :cond_5
    :goto_2
    :try_start_7
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 325
    :cond_6
    :try_start_8
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    if-le v2, v3, :cond_7

    .line 326
    sget-object v3, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t downgrade read-only database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_7
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 334
    :catchall_1
    move-exception v3

    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 342
    .end local v2    # "version":I
    :catchall_2
    move-exception v3

    const/4 v4, 0x0

    :try_start_a
    iput-boolean v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 343
    if-eqz v1, :cond_b

    .line 344
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_8

    .line 345
    :try_start_b
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 348
    :cond_8
    :goto_3
    :try_start_c
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 351
    :cond_9
    :goto_4
    throw v3

    .restart local v2    # "version":I
    :cond_a
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .end local v2    # "version":I
    :cond_b
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    .line 345
    :catch_0
    move-exception v4

    goto :goto_3

    .restart local v2    # "version":I
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 389
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 394
    sget-object v14, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Upgrading database "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v12, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v14, p3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v14, v2, v12}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getUpgradeFilePaths(IIILjava/util/ArrayList;)V

    .line 399
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 400
    sget-object v14, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no upgrade script path from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v14, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no upgrade script path from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 404
    :cond_0
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 405
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 407
    .local v11, "path":Ljava/lang/String;
    :try_start_0
    sget-object v14, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processing upgrade: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 409
    .local v9, "is":Ljava/io/InputStream;
    invoke-static {v9}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 410
    .local v13, "sql":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 411
    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "cmds":[Ljava/lang/String;
    move-object v3, v5

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v4, v3, v8

    .line 414
    .local v4, "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->isValidCmd(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 415
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 419
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "cmds":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "len$":I
    .end local v13    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 420
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "path":Ljava/lang/String;
    :cond_3
    sget-object v14, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Successfully upgraded database "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public setAllowNestedTransactions(Z)V
    .locals 0
    .param p1, "mAllowNestedTransactions"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mAllowNestedTransactions:Z

    .line 454
    return-void
.end method

.method public setForcedUpgradeVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mForcedUpgradeVersion:I

    .line 458
    return-void
.end method
