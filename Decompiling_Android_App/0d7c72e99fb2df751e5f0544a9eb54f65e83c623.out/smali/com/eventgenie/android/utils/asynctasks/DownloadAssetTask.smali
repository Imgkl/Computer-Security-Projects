.class public Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;
.super Landroid/os/AsyncTask;
.source "DownloadAssetTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDownloadUrl:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mFileName:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mDownloadUrl:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private validate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mDownloadUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mFileName:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/eventgenie/android/utils/constants/RegularExpressions;->HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 32
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .local v11, "res":Ljava/lang/Boolean;
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->validate()Z

    move-result v17

    if-nez v17, :cond_0

    move-object v12, v11

    .line 91
    .end local v11    # "res":Ljava/lang/Boolean;
    .local v12, "res":Ljava/lang/Boolean;
    :goto_0
    return-object v12

    .line 38
    .end local v12    # "res":Ljava/lang/Boolean;
    .restart local v11    # "res":Ljava/lang/Boolean;
    :cond_0
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 42
    .local v2, "conn":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 44
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    .line 46
    .local v8, "lenghOfFile":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ Downloading: \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' from \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 48
    new-instance v6, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/MyEvent/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, "extStore":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 52
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->mFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v10, "outputFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, "state":Ljava/lang/String;
    const-string v17, "mounted"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 58
    const-string v17, "^ SDcard is mounted and writable"

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 66
    :goto_1
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v7, "is":Ljava/io/InputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v9, "os":Ljava/io/OutputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 70
    .local v4, "data":[B
    const-wide/16 v14, 0x0

    .line 73
    .local v14, "total":J
    :cond_1
    :goto_2
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_4

    .line 74
    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    .line 75
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v4, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_1

    .line 77
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    long-to-int v0, v14

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x64

    div-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->onProgressUpdate([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 86
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "extStore":Ljava/io/File;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "lenghOfFile":I
    .end local v9    # "os":Ljava/io/OutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .end local v13    # "state":Ljava/lang/String;
    .end local v14    # "total":J
    .end local v16    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 87
    .local v5, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ DOWNLOADS: Error while downloading : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    move-object v12, v11

    .line 91
    .end local v11    # "res":Ljava/lang/Boolean;
    .restart local v12    # "res":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 59
    .end local v12    # "res":Ljava/lang/Boolean;
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "extStore":Ljava/io/File;
    .restart local v8    # "lenghOfFile":I
    .restart local v10    # "outputFile":Ljava/io/File;
    .restart local v11    # "res":Ljava/lang/Boolean;
    .restart local v13    # "state":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    const-string v17, "mounted_ro"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 60
    const-string v17, "^ SDcard is ReadOnly"

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 62
    :cond_3
    const-string v17, "^ Something wrong with SDcard"

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 81
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    .restart local v14    # "total":J
    :cond_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 82
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 83
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 84
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
