.class Lcom/genie_connect/android/db/caching/imageloader/Util;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderFields;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 44
    const/16 v0, 0x400

    .line 46
    .local v0, "buffer_size":I
    const/16 v3, 0x400

    :try_start_0
    new-array v1, v3, [B

    .line 48
    .local v1, "bytes":[B
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 49
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 53
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :goto_1
    return-void

    .line 50
    .restart local v1    # "bytes":[B
    .restart local v2    # "count":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected static deleteFilesOlderThan(ILjava/io/File;)V
    .locals 12
    .param p0, "maxAgeInDays"    # I
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 57
    .local v1, "cal":Ljava/util/Calendar;
    const/4 v10, 0x5

    mul-int/lit8 v11, p0, -0x1

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 59
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 60
    .local v8, "purgeTime":J
    const-wide/16 v2, 0x0

    .line 62
    .local v2, "fileCount":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 65
    .local v7, "listFiles":[Ljava/io/File;
    move-object v0, v7

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    .line 66
    .local v6, "listFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-gez v10, :cond_0

    .line 67
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 68
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_1

    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ IMAGELOADER - Unable to delete file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    goto :goto_1

    .line 77
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "listFile":Ljava/io/File;
    .end local v7    # "listFiles":[Ljava/io/File;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ IMAGELOADER - Files were not deleted. \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' does not exist!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 80
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_4

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ IMAGELOADER - Files deleted    :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 83
    :cond_4
    return-void
.end method

.method protected static getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static isValidImageUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "lcase":Ljava/lang/String;
    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    const-string v2, ".htm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string v2, ".aspx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    const-string v2, ".jsp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    const-string v2, ".asp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const-string v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const/4 v1, 0x1

    goto :goto_0
.end method
