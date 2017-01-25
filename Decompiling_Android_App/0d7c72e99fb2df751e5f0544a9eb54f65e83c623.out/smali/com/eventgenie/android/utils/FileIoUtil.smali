.class public Lcom/eventgenie/android/utils/FileIoUtil;
.super Ljava/lang/Object;
.source "FileIoUtil.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyToExternalPrivateStorage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "newFileName"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v0, "destFile":Ljava/io/File;
    invoke-static {p1, v0}, Lcom/genie_connect/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "destFile":Ljava/io/File;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getAssetStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 73
    .local v1, "mAssetsManager":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    .end local v1    # "mAssetsManager":Landroid/content/res/AssetManager;
    .local v2, "res":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 74
    .end local v2    # "res":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ FILEIO: ERROR opening asset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 76
    const/4 v2, 0x0

    .restart local v2    # "res":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static readFileAsJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x400

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    .local v2, "fileData":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v5, "reader":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 88
    .local v0, "buf":[C
    const/4 v3, 0x0

    .line 90
    .local v3, "numRead":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 91
    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "readData":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 94
    goto :goto_0

    .line 96
    .end local v4    # "readData":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 98
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    .end local v0    # "buf":[C
    .end local v3    # "numRead":I
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v6

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ FILEIO: readFileAsJsonArray() FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 108
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 102
    :catch_1
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ FILEIO: readFileAsJsonArray() IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 105
    .local v1, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ FILEIO: readFileAsJsonArray() JSONException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static readFileAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x400

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .local v2, "fileData":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    .local v5, "reader":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 118
    .local v0, "buf":[C
    const/4 v3, 0x0

    .line 120
    .local v3, "numRead":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 121
    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "readData":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 124
    goto :goto_0

    .line 126
    .end local v4    # "readData":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 128
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    .end local v0    # "buf":[C
    .end local v3    # "numRead":I
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v6

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "^ FILEIO: readFileAsJsonObject() FileNotFoundException: "

    invoke-static {v6, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "^ FILEIO: readFileAsJsonObject() IOException: "

    invoke-static {v6, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 135
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "^ FILEIO: readFileAsJsonObject() JSONException: "

    invoke-static {v6, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x400

    .line 142
    if-nez p0, :cond_0

    .line 178
    :goto_0
    return-object v7

    .line 144
    :cond_0
    const-string v8, "file://"

    const-string v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 146
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .local v3, "fileData":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v9}, Lcom/genie_connect/common/utils/StreamUtils;->getDecompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 157
    .local v6, "reader":Ljava/io/BufferedReader;
    const/16 v8, 0x400

    new-array v0, v8, [C

    .line 158
    .local v0, "buf":[C
    const/4 v4, 0x0

    .line 161
    .local v4, "numRead":I
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 162
    const/4 v8, 0x0

    invoke-static {v0, v8, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "readData":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const/16 v8, 0x400

    new-array v0, v8, [C

    goto :goto_1

    .line 167
    .end local v5    # "readData":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    goto :goto_0

    .line 170
    .end local v0    # "buf":[C
    .end local v4    # "numRead":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FILEIO: readFileAsString() - FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FILEIO: readFileAsString() - IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileData":Ljava/lang/StringBuilder;
    :cond_2
    const-string v8, "^ FILEIO: readFileAsString() - File not found."

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static readTwoColumnFile(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 220
    :goto_0
    return-object v6

    .line 186
    :cond_0
    const-string v8, "file://"

    const-string v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 188
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 193
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, "fstream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 197
    .local v4, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 204
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "strLine":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 205
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "lineArr":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 208
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "lineArr":[Ljava/lang/String;
    .end local v7    # "strLine":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FILEIO: readTwoColumnFile() - Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "strLine":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 217
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v7    # "strLine":Ljava/lang/String;
    :cond_3
    const-string v8, "^ FILEIO: readTwoColumnFile() - File not found."

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeToExternalPrivateStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 224
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "finalFilename":Ljava/lang/String;
    invoke-static {v0, p2, v3, v3, v3}, Lcom/eventgenie/android/utils/FileIoUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    .line 226
    return-void
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 16
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "newline"    # Z
    .param p4, "gzip"    # Z

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 232
    .local v8, "time1":J
    const/4 v4, 0x0

    .line 233
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    .line 236
    .local v7, "res":Z
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v5, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_1

    .line 240
    :try_start_1
    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    const/16 v13, 0x2800

    invoke-direct {v12, v5, v13}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const-string v13, "UTF-8"

    invoke-direct {v6, v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 249
    .local v6, "osw":Ljava/io/OutputStreamWriter;
    :goto_0
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 250
    .local v2, "bw":Ljava/io/BufferedWriter;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 252
    if-eqz p3, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 254
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 263
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 264
    .local v10, "time2":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ FILEIO: writeToFile(\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\') Size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    int-to-long v14, v13

    const/4 v13, 0x0

    invoke-static {v14, v15, v13}, Lcom/genie_connect/android/utils/string/StringUtils;->getHumanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v10, v8

    invoke-static {v14, v15}, Lcom/genie_connect/android/utils/string/StringUtils;->getHumanReadableTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 266
    return v7

    .line 244
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "time2":J
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v12, "UTF-8"

    invoke-direct {v6, v5, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 255
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 256
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ FILEIO: Error when writing to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\': "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    const/4 v7, 0x0

    .line 259
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_3
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v12

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 255
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
