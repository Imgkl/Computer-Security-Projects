.class public Lcom/genie_connect/android/utils/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    const-wide/16 v4, 0x400

    .line 18
    const/4 v2, 0x0

    .line 20
    .local v2, "suffix":Ljava/lang/String;
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 21
    const-string v2, "KB"

    .line 22
    div-long/2addr p0, v4

    .line 23
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 24
    const-string v2, "MB"

    .line 25
    div-long/2addr p0, v4

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "resultBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x3

    .line 31
    .local v0, "commaOffset":I
    :goto_0
    if-lez v0, :cond_1

    .line 32
    const/16 v3, 0x2c

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 33
    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 36
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAvailableBlocks(Landroid/os/StatFs;)J
    .locals 2
    .param p0, "stat"    # Landroid/os/StatFs;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 46
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 51
    invoke-static {}, Lcom/genie_connect/android/utils/StorageUtils;->isExternalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 53
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 54
    .local v5, "stat":Landroid/os/StatFs;
    invoke-static {v5}, Lcom/genie_connect/android/utils/StorageUtils;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v2

    .line 55
    .local v2, "blockSize":J
    invoke-static {v5}, Lcom/genie_connect/android/utils/StorageUtils;->getAvailableBlocks(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 56
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    .line 58
    :goto_0
    return-wide v6

    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 65
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "stat":Landroid/os/StatFs;
    invoke-static {v5}, Lcom/genie_connect/android/utils/StorageUtils;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v2

    .line 67
    .local v2, "blockSize":J
    invoke-static {v5}, Lcom/genie_connect/android/utils/StorageUtils;->getAvailableBlocks(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 68
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getBlockSize(Landroid/os/StatFs;)J
    .locals 2
    .param p0, "stat"    # Landroid/os/StatFs;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 77
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getTotalExternalMemorySize()J
    .locals 8

    .prologue
    .line 82
    invoke-static {}, Lcom/genie_connect/android/utils/StorageUtils;->isExternalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 84
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, "stat":Landroid/os/StatFs;
    invoke-static {v3}, Lcom/genie_connect/android/utils/StorageUtils;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 86
    .local v0, "blockSize":J
    invoke-static {v3}, Lcom/genie_connect/android/utils/StorageUtils;->getAvailableBlocks(Landroid/os/StatFs;)J

    move-result-wide v4

    .line 87
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    .line 89
    :goto_0
    return-wide v6

    .end local v0    # "blockSize":J
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "totalBlocks":J
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 95
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, "stat":Landroid/os/StatFs;
    invoke-static {v3}, Lcom/genie_connect/android/utils/StorageUtils;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 97
    .local v0, "blockSize":J
    invoke-static {v3}, Lcom/genie_connect/android/utils/StorageUtils;->getAvailableBlocks(Landroid/os/StatFs;)J

    move-result-wide v4

    .line 98
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static isExternalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
