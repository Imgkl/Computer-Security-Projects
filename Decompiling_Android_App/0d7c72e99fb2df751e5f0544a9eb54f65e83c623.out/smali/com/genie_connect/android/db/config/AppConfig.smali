.class public Lcom/genie_connect/android/db/config/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field private static final CONFIG_PREFS_PRIMARY:Ljava/lang/String; = "app_config"

.field private static final CONFIG_PREFS_SECONDARY:Ljava/lang/String; = "app_config_secondary"


# instance fields
.field private mArtworkConfig:Lcom/genie_connect/android/db/config/ArtworkConfig;

.field private mEventName:Ljava/lang/String;

.field private mEventNameId:Ljava/lang/String;

.field private mEventNameShort:Ljava/lang/String;

.field private mFeatureConfig:Lcom/genie_connect/android/db/config/FeatureConfig;

.field private mLabelsAndNouns:Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;

.field private mNamespace:J

.field private mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

.field private mWidgetConfig:Lcom/genie_connect/android/db/config/widgets/WidgetConfig;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "configObject"    # Lorg/json/JSONObject;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/config/AppConfig;->initFromJson(Lorg/json/JSONObject;)V

    .line 84
    return-void
.end method

.method public static declared-synchronized getLocalConfigJSON(Landroid/content/Context;I)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # I

    .prologue
    .line 258
    const-class v14, Lcom/genie_connect/android/db/config/AppConfig;

    monitor-enter v14

    :try_start_0
    sget v10, Lcom/eventgenie/android/R$raw;->config:I

    .line 259
    .local v10, "res":I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 260
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .line 263
    .local v4, "forceRead":Z
    packed-switch p1, :pswitch_data_0

    .line 272
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Datastore getDB() requested instance "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v4    # "forceRead":Z
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "res":I
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 265
    .restart local v4    # "forceRead":Z
    .restart local v8    # "prefs":Landroid/content/SharedPreferences;
    .restart local v10    # "res":I
    :pswitch_0
    :try_start_1
    const-string v13, "package_was_updated"

    const/4 v15, 0x0

    invoke-interface {v8, v13, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 266
    const-string v7, "app_config"

    .line 275
    .local v7, "prefKey":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 276
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ CONFIG: Force Reading bundled Config for instance: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    const/4 v2, 0x0

    .line 282
    .local v2, "configString":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_3

    .line 283
    const/4 v5, 0x0

    .line 285
    .local v5, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 286
    if-eqz v5, :cond_2

    .line 287
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 288
    .local v12, "writer":Ljava/io/Writer;
    const/16 v13, 0x400

    new-array v1, v13, [C
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 290
    .local v1, "buffer":[C
    :try_start_3
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    const-string v15, "UTF-8"

    invoke-direct {v13, v5, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 292
    .local v9, "reader":Ljava/io/Reader;
    :goto_2
    invoke-virtual {v9, v1}, Ljava/io/Reader;->read([C)I

    move-result v6

    .local v6, "n":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_1

    .line 293
    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v6}, Ljava/io/Writer;->write([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 296
    .end local v6    # "n":I
    .end local v9    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v13

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v13
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 310
    .end local v1    # "buffer":[C
    .end local v12    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v11

    .line 311
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ CONFIG: Exception: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v15}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 313
    :try_start_6
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 319
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v11    # "t":Ljava/lang/Throwable;
    :goto_3
    monitor-exit v14

    return-object v2

    .line 269
    .end local v2    # "configString":Ljava/lang/String;
    .end local v7    # "prefKey":Ljava/lang/String;
    :pswitch_1
    :try_start_7
    const-string v7, "app_config_secondary"

    .line 270
    .restart local v7    # "prefKey":Ljava/lang/String;
    goto :goto_0

    .line 279
    :cond_0
    const/4 v13, 0x0

    invoke-interface {v8, v7, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    .restart local v2    # "configString":Ljava/lang/String;
    goto :goto_1

    .line 296
    .restart local v1    # "buffer":[C
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "n":I
    .restart local v9    # "reader":Ljava/io/Reader;
    .restart local v12    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 298
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 301
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ CONFIG: Config from file "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 313
    .end local v1    # "buffer":[C
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "n":I
    .end local v9    # "reader":Ljava/io/Reader;
    .end local v12    # "writer":Ljava/io/Writer;
    :goto_4
    :try_start_9
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 308
    :cond_2
    :try_start_a
    const-string v13, "^ CONFIG: Problem opening the file"

    sget-object v15, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v15}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 313
    :catchall_2
    move-exception v13

    :try_start_b
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v13

    .line 317
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ CONFIG: Config from prefs "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static updateRemoteConfig(Landroid/content/Context;IJLjava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # I
    .param p2, "namespace"    # J
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 323
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 324
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "^ CONFIG: updateRemoteConfig() for instance %s, namespace=%s, version=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 328
    packed-switch p1, :pswitch_data_0

    .line 336
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppConfig updateRemoteConfig() requested instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 330
    :pswitch_0
    const-string v3, "app_config"

    .line 339
    .local v3, "prefKey":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    const-string v6, "Basic YW5vbnltb3VzOmd1ZXN0"

    invoke-direct {v2, p0, v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    .local v2, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    invoke-virtual {v2, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getConfig(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "appJson":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 344
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    .line 348
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v5

    .line 333
    .end local v0    # "appJson":Ljava/lang/String;
    .end local v2    # "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .end local v3    # "prefKey":Ljava/lang/String;
    :pswitch_1
    const-string v3, "app_config_secondary"

    .line 334
    .restart local v3    # "prefKey":Ljava/lang/String;
    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static updateRemoteConfig(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "namespace"    # J

    .prologue
    .line 361
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v0

    invoke-static {p0, v0, p2, p3, p1}, Lcom/genie_connect/android/db/config/AppConfig;->updateRemoteConfig(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static writeToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "outputName"    # Ljava/lang/String;

    .prologue
    .line 366
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 369
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 370
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ File write ok: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ File write failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mArtworkConfig:Lcom/genie_connect/android/db/config/ArtworkConfig;

    return-object v0
.end method

.method public getEventExpiryMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getEventExpiryMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventNameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventNameId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventNameShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventNameShort:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getEventTimeZone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mFeatureConfig:Lcom/genie_connect/android/db/config/FeatureConfig;

    return-object v0
.end method

.method public getFeedbackEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getFeedbackEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;
    .locals 1
    .param p1, "label"    # Lcom/genie_connect/android/db/config/misc/Label;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mLabelsAndNouns:Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mNamespace:J

    return-wide v0
.end method

.method public getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .param p2, "type"    # Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mLabelsAndNouns:Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;

    invoke-virtual {v0, p1, p2}, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoun(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "type"    # Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mLabelsAndNouns:Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;

    invoke-virtual {v0, p1, p2}, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->getNoun(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getRegistrationUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetup()Lcom/genie_connect/android/db/config/SetupConfig;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    return-object v0
.end method

.method public getTimeZoneOfEvent()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getEventTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getTwitterKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getTwitterKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTwitterSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getTwitterSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrbanAirshipAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getUrbanAirshipAppSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrbanAirshipKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getUrbanAirshipKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrbanAirshipMasterSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getUrbanAirshipMasterSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mWidgetConfig:Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    return-object v0
.end method

.method public hasEventExpired()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->hasEventExpired()Z

    move-result v0

    return v0
.end method

.method public initFromJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "configObject"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mNamespace:J

    .line 88
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventName:Ljava/lang/String;

    .line 89
    const-string v0, "shortName"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventNameShort:Ljava/lang/String;

    .line 90
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventNameId:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/config/SetupConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    .line 93
    new-instance v0, Lcom/genie_connect/android/db/config/ArtworkConfig;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/config/ArtworkConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mArtworkConfig:Lcom/genie_connect/android/db/config/ArtworkConfig;

    .line 94
    new-instance v0, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mLabelsAndNouns:Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;

    .line 96
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    invoke-direct {v0, p1, p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;-><init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mWidgetConfig:Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    .line 97
    new-instance v0, Lcom/genie_connect/android/db/config/FeatureConfig;

    invoke-direct {v0, p1, p0}, Lcom/genie_connect/android/db/config/FeatureConfig;-><init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mFeatureConfig:Lcom/genie_connect/android/db/config/FeatureConfig;

    .line 98
    return-void
.end method

.method public isContinueAsGuestEnabled()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isContinueAsGuestEnabled()Z

    move-result v0

    return v0
.end method

.method public isFavouritesEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isFavouritesEnabled()Z

    move-result v0

    return v0
.end method

.method public isForgottenPasswordEnabled()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isForgottenPasswordEnabled()Z

    move-result v0

    return v0
.end method

.method public isLoginEnabled()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isLoginEnabled()Z

    move-result v0

    return v0
.end method

.method public isNewSponsorship()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isNewSponsorship()Z

    move-result v0

    return v0
.end method

.method public isNotesEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isNotesEnabled()Z

    move-result v0

    return v0
.end method

.method public isPleaseRegisterEnabled()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isPleaseRegisterEnabled()Z

    move-result v0

    return v0
.end method

.method public isSecureApp()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isSecureApp()Z

    move-result v0

    return v0
.end method

.method public isSecureFavourites()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isSecureFavourites()Z

    move-result v0

    return v0
.end method

.method public isUseEventSelectorAsHomescreen()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isUseEventSelectorAsHomescreen()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppConfig [mArtworkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppConfig;->mArtworkConfig:Lcom/genie_connect/android/db/config/ArtworkConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFeatureConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppConfig;->mFeatureConfig:Lcom/genie_connect/android/db/config/FeatureConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabelsAndNouns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppConfig;->mLabelsAndNouns:Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSetupConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppConfig;->mSetupConfig:Lcom/genie_connect/android/db/config/SetupConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventNameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventNameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventNameShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppConfig;->mEventNameShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidgetConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppConfig;->mWidgetConfig:Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/AppConfig;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
