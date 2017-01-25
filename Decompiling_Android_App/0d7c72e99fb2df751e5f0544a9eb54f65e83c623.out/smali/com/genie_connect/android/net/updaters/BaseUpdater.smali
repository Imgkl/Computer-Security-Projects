.class public abstract Lcom/genie_connect/android/net/updaters/BaseUpdater;
.super Ljava/lang/Object;
.source "BaseUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static removeDirectory(Ljava/io/File;)Z
    .locals 6
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 180
    if-nez p0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 183
    const/4 v3, 0x1

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ UPDATER: Cleaning directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "list":[Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 193
    new-instance v0, Ljava/io/File;

    aget-object v4, v2, v1

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v0, "entry":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    invoke-static {v0}, Lcom/genie_connect/android/net/updaters/BaseUpdater;->removeDirectory(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 204
    .end local v0    # "entry":Ljava/io/File;
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method protected compareMd5(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "md5_1"    # Ljava/lang/String;
    .param p2, "md5_2"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected copyAssetToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ UPDATER: Copying asset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 66
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "fileTarget":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 72
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 73
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 78
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 82
    .local v4, "istr":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v6, "ostr":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 86
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "length":I
    if-lez v5, :cond_2

    .line 88
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v3    # "fileTarget":Ljava/io/File;
    .end local v4    # "istr":Ljava/io/InputStream;
    .end local v5    # "length":I
    .end local v6    # "ostr":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File-Copy Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p1, v7, v8}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 100
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 90
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v3    # "fileTarget":Ljava/io/File;
    .restart local v4    # "istr":Ljava/io/InputStream;
    .restart local v5    # "length":I
    .restart local v6    # "ostr":Ljava/io/OutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 91
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 92
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public abstract doUpdate()Z
.end method

.method protected downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteFileId"    # Ljava/lang/String;
    .param p3, "localFilePath"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ UPDATER: Downloading file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkPersister;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkPersister;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkPersister;
    invoke-virtual {v0, p2, p3}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadFileByFileId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected extractZip(Ljava/io/FileInputStream;Ljava/lang/String;)Z
    .locals 12
    .param p1, "zipFile"    # Ljava/io/FileInputStream;
    .param p2, "targetDir"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ UPDATER: Extracting Zip: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 123
    move-object v6, p1

    .line 124
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    .local v8, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 130
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .local v7, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_2

    .line 132
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "filename":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 136
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v0    # "buffer":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v7    # "ze":Ljava/util/zip/ZipEntry;
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ UPDATER: Error extracting ZIP: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 159
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return v9

    .line 139
    .restart local v0    # "buffer":[B
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v7    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 141
    .local v5, "fout":Ljava/io/FileOutputStream;
    :goto_2
    invoke-virtual {v8, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_1

    .line 143
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 146
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 147
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 151
    .end local v1    # "count":I
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    const/4 v9, 0x1

    goto :goto_1
.end method

.method protected extractZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "zipFile"    # Ljava/lang/String;
    .param p2, "targetDir"    # Ljava/lang/String;

    .prologue
    .line 164
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "is":Ljava/io/FileInputStream;
    invoke-virtual {p0, v1, p2}, Lcom/genie_connect/android/net/updaters/BaseUpdater;->extractZip(Ljava/io/FileInputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 168
    .end local v1    # "is":Ljava/io/FileInputStream;
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ UPDATER: Error extracting ZIP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getLocalBaseDirectory()Ljava/lang/String;
.end method

.method public abstract getLocalFilePath()Ljava/lang/String;
.end method
