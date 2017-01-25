.class public final Lcom/julysystems/appx/AppX;
.super Ljava/lang/Object;
.source "AppX.java"


# static fields
.field private static final APPX_PREFERENCES:Ljava/lang/String; = "com.google.android.gcm"

.field private static final PROPERTY_APPX_CLIENTID:Ljava/lang/String; = "appx_clientId"

.field private static final PROPERTY_APPX_DEVELOPER_STATUS:Ljava/lang/String; = "appx_DEVELOPER_status"

.field private static final PROPERTY_APPX_MANIFEST_BASEPATH:Ljava/lang/String; = "manifest_basepath"

.field private static final PROPERTY_APPX_RECURRING_STATUS:Ljava/lang/String; = "appx_recurring_status"

.field private static final PROPERTY_APPX_REGISTRATION_STATUS:Ljava/lang/String; = "appx_reg_status"

.field private static final PROPERTY_APPX_SENDERID:Ljava/lang/String; = "senderID"

.field private static final PROPERTY_APPX_USE_DRAFT:Ljava/lang/String; = "appx_use_draft"

.field private static final PROPERTY_APPX_WEBVIEW_RULES:Ljava/lang/String; = "webview_rules"

.field private static final PROPERTY_APPX_WEBVIEW_SCHEMES:Ljava/lang/String; = "webview_schemes"

.field private static final PUSH_BACKOFF_MS:Ljava/lang/String; = "push_backoff_ms"

.field private static final PUSH_DEFAULT_BACKOFF_MS:J = 0x7d0L

.field private static final REGISTRATION_BACKOFF_MS:Ljava/lang/String; = "reg_backoff_ms"

.field private static final REGISTRATION_DEFAULT_BACKOFF_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "APPX"

.field public static appXClientId:Ljava/lang/String;

.field public static appXPackageName:Ljava/lang/String;

.field public static appXSecretKey:Ljava/lang/String;

.field protected static customLoaderDrawableId:I

.field protected static enableCaching:Z

.field public static enableLogs:Z

.field protected static historyUrls:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static histroyRequest:Z

.field protected static final inlineViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field static isLoading:Z

.field protected static mAppXCustomSchemeListner:Lcom/julysystems/appx/AppXCustomSchemeListner;

.field protected static mAppXNetworkListner:Lcom/julysystems/appx/AppXNetworkListner;

.field protected static mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

.field protected static nextPageDataKey:J

.field protected static final pageDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/julysystems/appx/AppXPageData;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final pushUpdatableViewsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected static final updatableViewsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected static urlTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    sput-boolean v1, Lcom/julysystems/appx/AppX;->enableLogs:Z

    .line 54
    sput-boolean v1, Lcom/julysystems/appx/AppX;->isLoading:Z

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/julysystems/appx/AppX;->enableCaching:Z

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppX;->historyUrls:Ljava/util/Vector;

    .line 63
    sput-boolean v1, Lcom/julysystems/appx/AppX;->histroyRequest:Z

    .line 64
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/julysystems/appx/AppX;->nextPageDataKey:J

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppX;->pageDataCache:Ljava/util/Map;

    .line 80
    sput-object v2, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    .line 81
    sput-object v2, Lcom/julysystems/appx/AppX;->appXSecretKey:Ljava/lang/String;

    .line 82
    sput-object v2, Lcom/julysystems/appx/AppX;->appXPackageName:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppX;->updatableViewsMap:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppX;->inlineViewMap:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppX;->pushUpdatableViewsMap:Ljava/util/Map;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final cachePageData(Lcom/julysystems/appx/AppXPageData;)J
    .locals 5
    .param p0, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    .line 108
    sget-wide v0, Lcom/julysystems/appx/AppX;->nextPageDataKey:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/julysystems/appx/AppX;->nextPageDataKey:J

    .line 109
    .local v0, "key":J
    sget-object v2, Lcom/julysystems/appx/AppX;->pageDataCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-wide v0
.end method

.method private static download(Ljava/lang/String;)V
    .locals 21
    .param p0, "manifestUrl"    # Ljava/lang/String;

    .prologue
    .line 660
    :try_start_0
    sget-object v2, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    .line 661
    .local v2, "appClientId":Ljava/lang/String;
    sget-object v18, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    if-nez v18, :cond_0

    .line 662
    sget-object v18, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/julysystems/appx/AppX;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 664
    :cond_0
    new-instance v9, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/manifests/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    .local v9, "filePath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 666
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 667
    :cond_1
    const-string v8, "live.manifest"

    .line 668
    .local v8, "fileName":Ljava/lang/String;
    sget-object v18, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/julysystems/appx/AppX;->isUseDraft(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 669
    const-string v8, "draft.manifest"

    .line 670
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 672
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 674
    .local v14, "lastModified":J
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 676
    .local v11, "httpUrlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 677
    invoke-virtual {v11, v14, v15}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 679
    :cond_3
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 680
    const-string v18, "APPX"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Manifest download URL "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 682
    .local v16, "responseCode":I
    const-string v18, "APPX"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Manifest download response "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/16 v18, 0xc8

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 684
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 685
    .local v12, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 686
    .local v4, "bis":Ljava/io/BufferedInputStream;
    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v18, 0x32

    move/from16 v0, v18

    invoke-direct {v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 687
    .local v3, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v5, 0x0

    .line 688
    .local v5, "current":I
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 691
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 692
    .local v10, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v13

    .line 693
    .local v13, "manifestData":[B
    new-instance v17, Ljava/lang/String;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 694
    .local v17, "str":Ljava/lang/String;
    const-string v18, "MANIFEST"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v10, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 696
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 698
    .end local v3    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "current":I
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "manifestData":[B
    .end local v17    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 704
    .end local v2    # "appClientId":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "filePath":Ljava/io/File;
    .end local v11    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v14    # "lastModified":J
    .end local v16    # "responseCode":I
    :goto_1
    return-void

    .line 689
    .restart local v2    # "appClientId":Ljava/lang/String;
    .restart local v3    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "current":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "filePath":Ljava/io/File;
    .restart local v11    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v14    # "lastModified":J
    .restart local v16    # "responseCode":I
    :cond_5
    int-to-byte v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    .end local v2    # "appClientId":Ljava/lang/String;
    .end local v3    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "current":I
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "filePath":Ljava/io/File;
    .end local v11    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "lastModified":J
    .end local v16    # "responseCode":I
    :catch_0
    move-exception v6

    .line 702
    .local v6, "e":Ljava/lang/Exception;
    const-string v18, "AppXView: download"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static downloadManifest()V
    .locals 4

    .prologue
    .line 707
    sget-object v0, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    .line 708
    .local v0, "appClientId":Ljava/lang/String;
    sget-object v2, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 709
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/julysystems/appx/AppX;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 710
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/live.manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "manifestUrl":Ljava/lang/String;
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/julysystems/appx/AppX;->isUseDraft(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/draft.manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/julysystems/appx/AppX;->getManifestBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-static {v1}, Lcom/julysystems/appx/AppX;->download(Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private static getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    const-string v0, "com.google.android.gcm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getAppXPushRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 651
    :try_start_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 655
    :goto_0
    return-object v1

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppXView getpush regId"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 391
    .local v1, "applicationName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    if-ne v1, v4, :cond_1

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 395
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "applicationName":Ljava/lang/String;
    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 402
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "applicationName":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 396
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 397
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 398
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    const-string v4, "Appx getApplicationName"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v1, "(unknown)"

    goto :goto_1
.end method

.method protected static final getCachedPageData(J)Lcom/julysystems/appx/AppXPageData;
    .locals 4
    .param p0, "key"    # J

    .prologue
    .line 119
    sget-object v1, Lcom/julysystems/appx/AppX;->pageDataCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 120
    .local v0, "pageDataRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/julysystems/appx/AppXPageData;>;"
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/julysystems/appx/AppXPageData;

    .line 122
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 473
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "appx_clientId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "regStatus":Ljava/lang/String;
    return-object v1
.end method

.method protected static getDeveloperStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 430
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "appx_DEVELOPER_status"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "status":Ljava/lang/String;
    return-object v1
.end method

.method protected static getJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 793
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v3, ""

    .line 795
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, p0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x8

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 796
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 798
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 801
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 802
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 808
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "jObj":Lorg/json/JSONObject;
    .local v2, "jObj":Lorg/json/JSONObject;
    move-object v1, v2

    .line 812
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :goto_2
    return-object v1

    .line 799
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 803
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Appx Registration Buffer Error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 809
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 810
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "Appx Registration JSON Parser"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 1003
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1004
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1005
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 1006
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1007
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_1

    .line 1013
    sget-boolean v5, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v5, :cond_0

    .line 1014
    const-string v5, "MD5 value of UID ::::"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1017
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_1
    return-object v5

    .line 1008
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "hexString":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    .restart local v4    # "messageDigest":[B
    :cond_1
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "h":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 1011
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1007
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1010
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 1016
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "h":Ljava/lang/String;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :catch_0
    move-exception v5

    .line 1017
    const-string v5, ""

    goto :goto_1
.end method

.method protected static getManifestBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 493
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "manifest_basepath"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "manifestPath":Ljava/lang/String;
    return-object v0
.end method

.method protected static final getMessageParams(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p0, "pushmessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "message="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 374
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v4, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v6, "message="

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 377
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "params":[Ljava/lang/String;
    array-length v6, v3

    :goto_0
    if-lt v5, v6, :cond_0

    .line 385
    .end local v3    # "params":[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 378
    .restart local v3    # "params":[Ljava/lang/String;
    :cond_0
    aget-object v2, v3, v5

    .line 379
    .local v2, "param":Ljava/lang/String;
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "nameValue":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "nameValue":[Ljava/lang/String;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Appx getMessageParams"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static getPushBackoff(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 564
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 565
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "push_backoff_ms"

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected static getRecurringStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 444
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "appx_recurring_status"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "status":Ljava/lang/String;
    return-object v1
.end method

.method protected static getRegistrationBackoff(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 549
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "reg_backoff_ms"

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected static getRegistrationStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 486
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "appx_reg_status"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "status":Ljava/lang/String;
    return-object v1
.end method

.method protected static getRulesObjectString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 508
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "webview_rules"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "rulesString":Ljava/lang/String;
    return-object v1
.end method

.method protected static getSchemeObjectString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 521
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 522
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "webview_schemes"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "schemesString":Ljava/lang/String;
    return-object v1
.end method

.method protected static getSenderID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "senderID"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "senderId":Ljava/lang/String;
    return-object v1
.end method

.method protected static getUseDraftStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 450
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "appx_use_draft"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "status":Ljava/lang/String;
    return-object v1
.end method

.method public static handleNotification(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 582
    :try_start_0
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "APPX_PUSH_DATA"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "pushData":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "pageUrl://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    const-string v4, "pageUrl://"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "pageUrl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "iPhoneMode=app&sppMode=true&platform=android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/julysystems/appx/AppXConstants;->url:Ljava/lang/String;

    .line 587
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    new-instance v5, Lcom/julysystems/appx/AppX$1;

    invoke-direct {v5, v1}, Lcom/julysystems/appx/AppX$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 592
    const/4 v3, 0x1

    .line 601
    .end local v1    # "pageUrl":Ljava/lang/String;
    .end local v2    # "pushData":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 595
    :cond_1
    const-string v4, "APPX"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "APPX Not Supported for the version ::::: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Appx handleNotification"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static initAppXGCM(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 540
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "iPhoneMode=app&sppMode=true&platform=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXConstants;->url:Ljava/lang/String;

    .line 541
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    sget-object v2, Lcom/julysystems/appx/AppXConstants;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->saveServerURL(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppXView initAppXGCM"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initGCMRegistration(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 848
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getRegistrationStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 851
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 852
    sput-object p0, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    .line 853
    :cond_0
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getSenderID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, "prefSenderId":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/julysystems/appx/AppXConstants;->pushActivityClass:Ljava/lang/String;

    .line 855
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setPushClass(Landroid/content/Context;)V

    .line 856
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_2

    .line 857
    :cond_1
    invoke-static {p0, p1}, Lcom/julysystems/appx/AppX;->saveSenderID(Landroid/content/Context;Ljava/lang/String;)V

    .line 859
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->checkDevice(Landroid/content/Context;)V

    .line 864
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v2}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 866
    :cond_2
    const-string v2, "Appx get Regid from init GCM"

    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .end local v0    # "appxRegStatus":Ljava/lang/String;
    .end local v1    # "prefSenderId":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected static isAppXSupported()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 922
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 923
    .local v0, "currentapiVersion":I
    const-string v3, "APPX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "APPX Current API Version ::::: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    const/16 v3, 0x8

    if-le v0, v3, :cond_0

    .line 925
    const/4 v2, 0x1

    .line 931
    :cond_0
    :goto_0
    return v2

    .line 928
    :catch_0
    move-exception v1

    .line 929
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Appx isAppXSupported"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static isCustomSchemeValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "customUrl"    # Ljava/lang/String;

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1037
    .local v0, "isValidCustomScheme":Z
    sget-object v1, Lcom/julysystems/appx/AppX;->mAppXCustomSchemeListner:Lcom/julysystems/appx/AppXCustomSchemeListner;

    if-eqz v1, :cond_0

    .line 1038
    sget-object v1, Lcom/julysystems/appx/AppX;->mAppXCustomSchemeListner:Lcom/julysystems/appx/AppXCustomSchemeListner;

    invoke-interface {v1, p0}, Lcom/julysystems/appx/AppXCustomSchemeListner;->canHandleUrl(Ljava/lang/String;)Z

    move-result v0

    .line 1039
    :cond_0
    return v0
.end method

.method protected static isCustomSchemeValid(Ljava/lang/String;Landroid/view/View;)Z
    .locals 2
    .param p0, "customUrl"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "isValidCustomScheme":Z
    sget-object v1, Lcom/julysystems/appx/AppX;->mAppXCustomSchemeListner:Lcom/julysystems/appx/AppXCustomSchemeListner;

    if-eqz v1, :cond_0

    .line 1045
    sget-object v1, Lcom/julysystems/appx/AppX;->mAppXCustomSchemeListner:Lcom/julysystems/appx/AppXCustomSchemeListner;

    invoke-interface {v1, p0, p1}, Lcom/julysystems/appx/AppXCustomSchemeListner;->canHandleUrl(Ljava/lang/String;Landroid/view/View;)Z

    move-result v0

    .line 1046
    :cond_0
    return v0
.end method

.method protected static isDeveloper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 910
    :try_start_0
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getDeveloperStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    const/4 v2, 0x1

    .line 916
    .end local v0    # "appxRegStatus":Ljava/lang/String;
    :goto_0
    return v2

    .line 913
    :catch_0
    move-exception v1

    .line 914
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Appx Registration JSONException"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static isRecurring(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 898
    :try_start_0
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getRecurringStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    const/4 v2, 0x1

    .line 904
    .end local v0    # "appxRegStatus":Ljava/lang/String;
    :goto_0
    return v2

    .line 901
    :catch_0
    move-exception v1

    .line 902
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Appx Registration JSONException"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static isRegIdSendToProtal(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1054
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegIdPortalStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected static isRegistered(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 874
    :try_start_0
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getRegistrationStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    const/4 v2, 0x1

    .line 880
    .end local v0    # "appxRegStatus":Ljava/lang/String;
    :goto_0
    return v2

    .line 877
    :catch_0
    move-exception v1

    .line 878
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Appx Registration JSONException"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static isUseDraft(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 886
    :try_start_0
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getUseDraftStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    const/4 v2, 0x1

    .line 892
    .end local v0    # "appxRegStatus":Ljava/lang/String;
    :goto_0
    return v2

    .line 889
    :catch_0
    move-exception v1

    .line 890
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Appx Registration JSONException"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadAppXFullPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 606
    :try_start_0
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 607
    const/4 v1, 0x0

    .line 609
    .local v1, "appXViewUrl":Ljava/lang/String;
    if-eqz p1, :cond_5

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 610
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->isRegistered(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 611
    invoke-static {p0}, Lcom/julysystems/appx/AppXUtils;->initConstants(Landroid/content/Context;)V

    .line 612
    const-string v5, "http://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 613
    move-object v1, p1

    .line 619
    :cond_0
    :goto_0
    move-object v0, v1

    .line 620
    .local v0, "appXUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "baseUrlStr":Ljava/lang/String;
    sput-object v2, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    .line 622
    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 623
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->isRegIdSendToProtal(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 624
    invoke-static {v1}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sendAppXRegIDToPortal(Ljava/lang/String;)V

    .line 626
    :cond_1
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "regId":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 628
    invoke-static {v0}, Lcom/julysystems/appx/AppX;->initAppXGCM(Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sendAppXRegIDToServer()V

    .line 631
    :cond_2
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    new-instance v6, Lcom/julysystems/appx/AppX$2;

    invoke-direct {v6, v0}, Lcom/julysystems/appx/AppX$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    .end local v0    # "appXUrl":Ljava/lang/String;
    .end local v1    # "appXViewUrl":Ljava/lang/String;
    .end local v2    # "baseUrlStr":Ljava/lang/String;
    .end local v4    # "regId":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 615
    .restart local v1    # "appXViewUrl":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/julysystems/appx/AppX;->updateAppXTagMap()V

    .line 616
    sget-object v5, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 617
    sget-object v5, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "appXViewUrl":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "appXViewUrl":Ljava/lang/String;
    goto :goto_0

    .line 639
    :cond_5
    const-string v5, "APPX"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "APPX Not Supported for the version ::::: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 643
    .end local v1    # "appXViewUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 644
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "AppXView loadAppXFullPage regId"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static final loadUrl(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 366
    if-eqz p0, :cond_0

    .line 367
    invoke-static {p0}, Lcom/julysystems/appx/AppXUtils;->getCorrectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {p0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method protected static networkError(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1023
    sget-object v0, Lcom/julysystems/appx/AppX;->mAppXNetworkListner:Lcom/julysystems/appx/AppXNetworkListner;

    if-eqz v0, :cond_0

    .line 1024
    sget-object v0, Lcom/julysystems/appx/AppX;->mAppXNetworkListner:Lcom/julysystems/appx/AppXNetworkListner;

    invoke-interface {v0, p0}, Lcom/julysystems/appx/AppXNetworkListner;->onNetworkError(Ljava/lang/String;)V

    .line 1025
    :cond_0
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 936
    :try_start_0
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 937
    sput-object p1, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    .line 938
    sput-object p2, Lcom/julysystems/appx/AppX;->appXSecretKey:Ljava/lang/String;

    .line 939
    sput-object p3, Lcom/julysystems/appx/AppX;->appXPackageName:Ljava/lang/String;

    .line 940
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getRegistrationStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 941
    .local v4, "appxRegStatus":Ljava/lang/String;
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getRecurringStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "appxRecurringtatus":Ljava/lang/String;
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getDeveloperStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, "appxDeveloperStatus":Ljava/lang/String;
    const-string v11, "failure"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, ""

    if-eq v4, v11, :cond_1

    const-string/jumbo v11, "true"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, ""

    if-ne v3, v11, :cond_1

    :cond_0
    const-string/jumbo v11, "true"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, ""

    if-eq v3, v11, :cond_4

    .line 944
    :cond_1
    sget-object v11, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    if-nez v11, :cond_2

    .line 945
    sput-object p0, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    .line 948
    :cond_2
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->resetRegistrationBackoff(Landroid/content/Context;)V

    .line 949
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "appId":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 951
    const-string v11, "APPX Register"

    const-string v12, "Application package name is wrong"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_3
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceUtils;->getmd5HashUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 953
    .local v10, "udid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "clientId="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&appId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&platform=android&appXVersion="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1.2.5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&x-july-client=appx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 954
    .local v7, "paramsList":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@99xcl!ents3cr3t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/julysystems/appx/AppX;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 955
    .local v9, "signature":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "clientId="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&appId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&mi_appid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&platform=android&appXVersion="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1.2.5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&appName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&signature="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 956
    .local v8, "postParams":Ljava/lang/String;
    new-instance v5, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;

    sget-object v11, Lcom/julysystems/appx/AppXConstants;->appxRegistrationUrl:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v5, v11, v8, v12, v13}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 957
    .local v5, "dataRequest":Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;
    invoke-static {v5}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 964
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "appxDeveloperStatus":Ljava/lang/String;
    .end local v3    # "appxRecurringtatus":Ljava/lang/String;
    .end local v4    # "appxRegStatus":Ljava/lang/String;
    .end local v5    # "dataRequest":Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;
    .end local v7    # "paramsList":Ljava/lang/String;
    .end local v8    # "postParams":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v10    # "udid":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 960
    :cond_5
    const-string v11, "APPX"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "APPX Not Supported for the version ::::: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 961
    :catch_0
    move-exception v6

    .line 962
    .local v6, "e":Ljava/lang/Exception;
    const-string v11, "Appx Registration JSONException"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerForNotifications(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 821
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getRegistrationStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 823
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 824
    sput-object p0, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    .line 825
    :cond_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, "regId":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/julysystems/appx/AppXConstants;->pushActivityClass:Ljava/lang/String;

    .line 827
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setPushClass(Landroid/content/Context;)V

    .line 828
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 830
    invoke-static {p0, p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 832
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->checkDevice(Landroid/content/Context;)V

    .line 835
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->checkManifest(Landroid/content/Context;)V

    .line 836
    invoke-static {p0, p1}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->registerForNotifications(Landroid/content/Context;Ljava/lang/String;)V

    .line 838
    :cond_1
    const-string v2, "Appx get Regid from registerForNotifications"

    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .end local v0    # "appxRegStatus":Ljava/lang/String;
    .end local v1    # "regId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected static final removeCachedPageData(J)V
    .locals 2
    .param p0, "key"    # J

    .prologue
    .line 131
    sget-object v0, Lcom/julysystems/appx/AppX;->pageDataCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method protected static resetPushBackoff(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 560
    const-wide/16 v0, 0x7d0

    invoke-static {p0, v0, v1}, Lcom/julysystems/appx/AppX;->setPushBackoff(Landroid/content/Context;J)V

    .line 561
    return-void
.end method

.method protected static resetRegistrationBackoff(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 576
    const-wide/16 v0, 0x7d0

    invoke-static {p0, v0, v1}, Lcom/julysystems/appx/AppX;->setRegistrationBackoff(Landroid/content/Context;J)V

    .line 577
    return-void
.end method

.method protected static saveClientId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 479
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 480
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appx_clientId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    return-void
.end method

.method protected static saveDeveloperStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 422
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 423
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appx_DEVELOPER_status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 426
    return-void
.end method

.method protected static saveManifestBasePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manifestPath"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 499
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 500
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "manifest_basepath"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 501
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    return-void
.end method

.method protected static saveRecurringStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 436
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appx_recurring_status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    return-void
.end method

.method protected static saveRegistrationStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 464
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 465
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appx_reg_status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 468
    return-void
.end method

.method protected static saveRulesObjectString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rulesObjString"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 514
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "webview_rules"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 518
    return-void
.end method

.method protected static saveSchemeObjectString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schemeObjString"    # Ljava/lang/String;

    .prologue
    .line 527
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 528
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 529
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "webview_schemes"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    return-void
.end method

.method protected static saveSenderID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderID"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 407
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "senderID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    return-void
.end method

.method protected static saveUseDraftStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 456
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 457
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appx_use_draft"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 460
    return-void
.end method

.method protected static setAppXCustomLoader(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I

    .prologue
    .line 992
    :try_start_0
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    sput p1, Lcom/julysystems/appx/AppX;->customLoaderDrawableId:I

    .line 999
    :goto_0
    return-void

    .line 995
    :cond_0
    const-string v1, "APPX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APPX Not Supported for the version ::::: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Appx set Header view"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAppXCustomSchemeListner(Lcom/julysystems/appx/AppXCustomSchemeListner;)V
    .locals 0
    .param p0, "listner"    # Lcom/julysystems/appx/AppXCustomSchemeListner;

    .prologue
    .line 1032
    sput-object p0, Lcom/julysystems/appx/AppX;->mAppXCustomSchemeListner:Lcom/julysystems/appx/AppXCustomSchemeListner;

    .line 1033
    return-void
.end method

.method public static setAppXPageAnimation(II)V
    .locals 4
    .param p0, "enterAnimation"    # I
    .param p1, "exitAnimation"    # I

    .prologue
    .line 968
    :try_start_0
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    sput p0, Lcom/julysystems/appx/AppXPageActivity;->enterAnimation:I

    .line 970
    sput p1, Lcom/julysystems/appx/AppXPageActivity;->exitAnimation:I

    .line 976
    :goto_0
    return-void

    .line 972
    :cond_0
    const-string v1, "APPX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APPX Not Supported for the version ::::: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Appx set Header view"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAppXPageExitAnimation(II)V
    .locals 4
    .param p0, "enterAnimation"    # I
    .param p1, "exitAnimation"    # I

    .prologue
    .line 980
    :try_start_0
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    sput p0, Lcom/julysystems/appx/AppXPageActivity;->onBackEnterAnimation:I

    .line 982
    sput p1, Lcom/julysystems/appx/AppXPageActivity;->onBackExitAnimation:I

    .line 988
    :goto_0
    return-void

    .line 984
    :cond_0
    const-string v1, "APPX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APPX Not Supported for the version ::::: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Appx set Header view"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCustomSettingsProvider(Lcom/julysystems/appx/AppXCustomSettingsProvider;)V
    .locals 0
    .param p0, "provider"    # Lcom/julysystems/appx/AppXCustomSettingsProvider;

    .prologue
    .line 1050
    sput-object p0, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    .line 1051
    return-void
.end method

.method protected static setPushBackoff(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backoff"    # J

    .prologue
    .line 569
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 570
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 571
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "push_backoff_ms"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 572
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 573
    return-void
.end method

.method public static setRegisterSetup(Z)V
    .locals 1
    .param p0, "isJulyMXP"    # Z

    .prologue
    .line 1058
    if-eqz p0, :cond_0

    .line 1059
    const-string v0, "http://julymxp.com/appx/registerApp"

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->appxRegistrationUrl:Ljava/lang/String;

    .line 1060
    const-string v0, "https://julymxp.com/appx/registerPush"

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->appxPushServerUrl:Ljava/lang/String;

    .line 1062
    :cond_0
    return-void
.end method

.method protected static setRegistrationBackoff(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backoff"    # J

    .prologue
    .line 553
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getAPPXPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 554
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 555
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "reg_backoff_ms"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    return-void
.end method

.method protected static updateAppXTagMap()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 720
    invoke-static {}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    .local v0, "appXDownloadBackgroundTask":Lcom/julysystems/appx/AppXDownloadBackgroundTask;
    :goto_0
    return-void

    .line 722
    .end local v0    # "appXDownloadBackgroundTask":Lcom/julysystems/appx/AppXDownloadBackgroundTask;
    :cond_0
    const-string v1, "APPX"

    const-string v2, "Initiating manifest download request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;

    invoke-direct {v0}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;-><init>()V

    .line 724
    .restart local v0    # "appXDownloadBackgroundTask":Lcom/julysystems/appx/AppXDownloadBackgroundTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 725
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 729
    :goto_1
    invoke-static {}, Lcom/julysystems/appx/AppX;->updateTagMap()V

    goto :goto_0

    .line 727
    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected static updateTagMap()V
    .locals 19

    .prologue
    .line 734
    :try_start_0
    sget-object v1, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    .line 735
    .local v1, "appClientId":Ljava/lang/String;
    sget-object v16, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    if-nez v16, :cond_0

    .line 736
    sget-object v16, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lcom/julysystems/appx/AppX;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 737
    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/manifests/live.manifest"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 738
    .local v7, "filePath":Ljava/lang/String;
    sget-object v16, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lcom/julysystems/appx/AppX;->isUseDraft(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 739
    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/manifests/draft.manifest"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 741
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 743
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 744
    .local v8, "fis":Ljava/io/FileInputStream;
    invoke-static {v8}, Lcom/julysystems/appx/AppX;->getJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v10

    .line 745
    .local v10, "jsonObj":Lorg/json/JSONObject;
    if-eqz v10, :cond_4

    .line 746
    sget-object v16, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    .line 747
    const-string v16, "appxviews"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 748
    .local v3, "appxviews":Lorg/json/JSONArray;
    const-string v16, "MANIFEST"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "JSON "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 751
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v16

    move/from16 v0, v16

    if-lt v9, v0, :cond_5

    .line 762
    .end local v9    # "i":I
    :cond_2
    :try_start_1
    const-string v16, "rules"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 763
    .local v12, "rulesObj":Lorg/json/JSONObject;
    if-eqz v12, :cond_3

    .line 764
    const-string v16, "android"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 765
    .local v11, "rulesAndObj":Lorg/json/JSONObject;
    if-eqz v11, :cond_3

    .line 766
    sget-object v16, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/julysystems/appx/AppX;->saveRulesObjectString(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    .end local v11    # "rulesAndObj":Lorg/json/JSONObject;
    .end local v12    # "rulesObj":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    :try_start_2
    const-string/jumbo v16, "urlschemes"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 775
    .local v13, "schemesObj":Lorg/json/JSONObject;
    if-eqz v13, :cond_4

    .line 776
    sget-object v16, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/julysystems/appx/AppX;->saveSchemeObjectString(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 789
    .end local v3    # "appxviews":Lorg/json/JSONArray;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v13    # "schemesObj":Lorg/json/JSONObject;
    :cond_4
    :goto_2
    return-void

    .line 752
    .restart local v3    # "appxviews":Lorg/json/JSONArray;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "filePath":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "i":I
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    :cond_5
    :try_start_3
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 753
    .local v2, "appxViewObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_6

    .line 754
    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 755
    .local v14, "tagName":Ljava/lang/String;
    const-string/jumbo v16, "url"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 756
    .local v15, "tagUrl":Ljava/lang/String;
    const-string v16, "MANIGEST"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Tag : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " URL : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    sget-object v16, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .end local v14    # "tagName":Ljava/lang/String;
    .end local v15    # "tagUrl":Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 769
    .end local v2    # "appxViewObj":Lorg/json/JSONObject;
    .end local v9    # "i":I
    :catch_0
    move-exception v4

    .line 770
    .local v4, "e":Ljava/lang/Exception;
    const-string v16, "AppXView"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/julysystems/appx/AppXLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 784
    .end local v3    # "appxviews":Lorg/json/JSONArray;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 785
    .local v5, "e1":Ljava/io/FileNotFoundException;
    const-string v16, "AppXView"

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 778
    .end local v5    # "e1":Ljava/io/FileNotFoundException;
    .restart local v3    # "appxviews":Lorg/json/JSONArray;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "filePath":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    :catch_2
    move-exception v4

    .line 779
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v16, "AppXView"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/julysystems/appx/AppXLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 786
    .end local v3    # "appxviews":Lorg/json/JSONArray;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    :catch_3
    move-exception v4

    .line 787
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v16, "AppXView"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/julysystems/appx/AppXLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected final addComponents(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V
    .locals 21
    .param p1, "linearLayout"    # Landroid/widget/LinearLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "element"    # Lorg/w3c/dom/Element;
    .param p5, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/julysystems/appx/AppXViewElement;",
            ">;",
            "Lorg/w3c/dom/Element;",
            "Lcom/julysystems/appx/AppXPageActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, "viewElements":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXViewElement;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p5, :cond_3

    .line 167
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppX;->preloadComponents(Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V

    .line 170
    :cond_0
    :goto_0
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    .local v17, "veList":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXViewElement;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 172
    const/4 v13, 0x0

    .line 173
    .local v13, "liveUpdateNodeCount":I
    const/4 v10, 0x0

    .line 174
    .local v10, "autoRefNodeCount":I
    if-eqz p5, :cond_1

    .line 175
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "liveUpdate"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 176
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "autoRefreshPage"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 178
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 228
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 229
    const-string v4, "APPX"

    const-string v5, "Processing view completed "

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 168
    .end local v10    # "autoRefNodeCount":I
    .end local v13    # "liveUpdateNodeCount":I
    .end local v17    # "veList":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXViewElement;>;"
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppX;->preloadComponents(Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V

    goto :goto_0

    .line 178
    .restart local v10    # "autoRefNodeCount":I
    .restart local v13    # "liveUpdateNodeCount":I
    .restart local v17    # "veList":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXViewElement;>;"
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/julysystems/appx/AppXViewElement;

    .line 179
    .local v19, "viewElement":Lcom/julysystems/appx/AppXViewElement;
    invoke-virtual/range {v19 .. v19}, Lcom/julysystems/appx/AppXViewElement;->getView()Landroid/view/View;

    move-result-object v18

    .line 180
    .local v18, "view":Landroid/view/View;
    if-eqz v18, :cond_7

    .line 182
    :try_start_0
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/julysystems/appx/AppXViewElement;->element:Lorg/w3c/dom/Element;

    const-string/jumbo v5, "uid"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 183
    .local v16, "uid":Ljava/lang/String;
    if-eqz v16, :cond_6

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz p5, :cond_6

    .line 184
    sget-object v4, Lcom/julysystems/appx/AppX;->inlineViewMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    if-lez v13, :cond_5

    .line 186
    sget-object v4, Lcom/julysystems/appx/AppX;->pushUpdatableViewsMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_5
    if-lez v10, :cond_6

    .line 188
    sget-object v4, Lcom/julysystems/appx/AppX;->updatableViewsMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/julysystems/appx/AppXScrollView;

    if-eqz v4, :cond_2

    if-eqz p5, :cond_2

    .line 192
    move-object/from16 v0, v18

    check-cast v0, Lcom/julysystems/appx/AppXScrollView;

    move-object v12, v0

    .line 193
    .local v12, "jScrollView":Lcom/julysystems/appx/AppXScrollView;
    invoke-virtual/range {p5 .. p5}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v4

    iput-object v12, v4, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    .line 194
    iget-object v5, v12, Lcom/julysystems/appx/AppXScrollView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v7, v12, Lcom/julysystems/appx/AppXScrollView;->viewElements:Ljava/util/List;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/julysystems/appx/AppXViewElement;->element:Lorg/w3c/dom/Element;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/julysystems/appx/AppX;->addComponents(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V

    .line 195
    invoke-virtual/range {p5 .. p5}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v4

    iget-object v4, v4, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/julysystems/appx/AppXScrollView;->scrollTo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 198
    .end local v12    # "jScrollView":Lcom/julysystems/appx/AppXScrollView;
    .end local v16    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 199
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 203
    .local v14, "startJView":J
    if-eqz p5, :cond_b

    .line 204
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/julysystems/appx/AppXViewElement;->element:Lorg/w3c/dom/Element;

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/julysystems/appx/AppX;->getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;

    move-result-object v18

    .line 208
    :goto_2
    if-eqz v18, :cond_a

    .line 209
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/julysystems/appx/AppXViewElement;->element:Lorg/w3c/dom/Element;

    const-string/jumbo v5, "uid"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 210
    .restart local v16    # "uid":Ljava/lang/String;
    if-eqz v16, :cond_9

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz p5, :cond_9

    .line 211
    sget-object v4, Lcom/julysystems/appx/AppX;->inlineViewMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    if-lez v13, :cond_8

    .line 213
    sget-object v4, Lcom/julysystems/appx/AppX;->pushUpdatableViewsMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_8
    if-lez v10, :cond_9

    .line 215
    sget-object v4, Lcom/julysystems/appx/AppX;->updatableViewsMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/julysystems/appx/AppXScrollView;

    if-eqz v4, :cond_a

    if-eqz p5, :cond_a

    move-object/from16 v12, v18

    .line 219
    check-cast v12, Lcom/julysystems/appx/AppXScrollView;

    .line 220
    .restart local v12    # "jScrollView":Lcom/julysystems/appx/AppXScrollView;
    invoke-virtual/range {p5 .. p5}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v4

    iput-object v12, v4, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    .line 221
    iget-object v5, v12, Lcom/julysystems/appx/AppXScrollView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v7, v12, Lcom/julysystems/appx/AppXScrollView;->viewElements:Ljava/util/List;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/julysystems/appx/AppXViewElement;->element:Lorg/w3c/dom/Element;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/julysystems/appx/AppX;->addComponents(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V

    .line 222
    invoke-virtual/range {p5 .. p5}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v4

    iget-object v4, v4, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/julysystems/appx/AppXScrollView;->scrollTo(II)V

    .line 225
    .end local v12    # "jScrollView":Lcom/julysystems/appx/AppXScrollView;
    .end local v16    # "uid":Ljava/lang/String;
    :cond_a
    sget-boolean v4, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v4, :cond_2

    .line 226
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "addComponents "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/julysystems/appx/AppXViewElement;->viewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    goto/16 :goto_1

    .line 206
    :cond_b
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/julysystems/appx/AppXViewElement;->element:Lorg/w3c/dom/Element;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/julysystems/appx/AppX;->getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_2
.end method

.method protected final addViewContainer(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p4, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;

    .prologue
    const/4 v4, 0x0

    .line 351
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 352
    .local v6, "containerLayout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 354
    const/4 v0, 0x3

    invoke-virtual {v6, v4, v4, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 356
    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 357
    .local v8, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    return-object v6

    .line 357
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 358
    .local v2, "viewNode":Lorg/w3c/dom/Element;
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;

    move-result-object v7

    .line 359
    .local v7, "containerView":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 360
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p4, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;
    .param p5, "appxView"    # Lcom/julysystems/appx/AppXViewUpdateListner;

    .prologue
    const/4 v3, 0x0

    .line 267
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 268
    check-cast v2, Landroid/app/Activity;

    sput-object v2, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 269
    :cond_0
    const-string v2, "name"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "attributeName":Ljava/lang/String;
    const-string v2, "header"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    :try_start_0
    new-instance v2, Lcom/julysystems/appx/AppXHeader;

    invoke-direct {v2, p1, p2}, Lcom/julysystems/appx/AppXHeader;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-object v2

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "AppX Header"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    move-object v2, v3

    .line 334
    goto :goto_0

    .line 276
    :cond_2
    const-string v2, "section_header"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    :try_start_1
    new-instance v2, Lcom/julysystems/appx/AppXSectionHeader;

    invoke-direct {v2, p1, p2}, Lcom/julysystems/appx/AppXSectionHeader;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 279
    :catch_1
    move-exception v1

    .line 280
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v2, "AppX Section_Header"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    :try_start_2
    new-instance v2, Lcom/julysystems/appx/AppXInfo;

    invoke-direct {v2, p1, p2}, Lcom/julysystems/appx/AppXInfo;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 286
    :catch_2
    move-exception v1

    .line 287
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v2, "AppX info"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 289
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_4
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    :try_start_3
    new-instance v2, Lcom/julysystems/appx/AppXText;

    invoke-direct {v2, p1, p2}, Lcom/julysystems/appx/AppXText;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 292
    :catch_3
    move-exception v1

    .line 293
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v2, "AppX Text"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5
    const-string v2, "scroll_view"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 297
    if-nez p4, :cond_6

    move-object v2, v3

    .line 298
    goto :goto_0

    .line 299
    :cond_6
    :try_start_4
    new-instance v2, Lcom/julysystems/appx/AppXScrollView;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/julysystems/appx/AppXScrollView;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 300
    :catch_4
    move-exception v1

    .line 301
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v2, "AppX JScrollView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 303
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_7
    const-string v2, "screencast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "sctabContainer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 305
    :cond_8
    :try_start_5
    new-instance v2, Lcom/julysystems/appx/AppXRenderScreenCastView;

    invoke-direct {v2, p1, p2}, Lcom/julysystems/appx/AppXRenderScreenCastView;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 306
    :catch_5
    move-exception v1

    .line 307
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v2, "AppX ScreenCast"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 309
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_9
    const-string/jumbo v2, "viewContainer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 310
    if-nez p4, :cond_a

    sget-object v2, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_a

    move-object v2, v3

    .line 311
    goto/16 :goto_0

    .line 312
    :cond_a
    new-instance v2, Lcom/julysystems/appx/AppXViewContainer;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/julysystems/appx/AppXViewContainer;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;)V

    goto/16 :goto_0

    .line 313
    :cond_b
    const-string v2, "clear_cache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "clear_all_cache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 314
    :cond_c
    invoke-static {}, Lcom/julysystems/appx/AppXCache;->clearAllCache()V

    goto/16 :goto_1

    .line 315
    :cond_d
    const-string v2, "clear_disk_cache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 316
    invoke-static {}, Lcom/julysystems/appx/AppXCache;->clearDiskCache()V

    goto/16 :goto_1

    .line 317
    :cond_e
    const-string v2, "ad_image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 318
    :cond_f
    new-instance v2, Lcom/julysystems/appx/AppXInfoImagedetails;

    invoke-direct {v2, p1, p2}, Lcom/julysystems/appx/AppXInfoImagedetails;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 319
    :cond_10
    const-string/jumbo v2, "webview"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 321
    :try_start_6
    new-instance v2, Lcom/julysystems/appx/AppXWebView;

    sget-object v4, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-direct {v2, v4, p2, p3, p5}, Lcom/julysystems/appx/AppXWebView;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXViewUpdateListner;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 322
    :catch_6
    move-exception v1

    .line 323
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v2, "AppX jwebview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 325
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_11
    const-string v2, "deviceInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    if-nez p4, :cond_12

    move-object v2, v3

    .line 327
    goto/16 :goto_0

    .line 328
    :cond_12
    new-instance v2, Lcom/julysystems/appx/AppXDeviceInfo;

    invoke-direct {v2, p1, p2, p4}, Lcom/julysystems/appx/AppXDeviceInfo;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V

    move-object v2, v3

    .line 329
    goto/16 :goto_0
.end method

.method protected final loadTabMap(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "tabElement"    # Lorg/w3c/dom/Element;
    .param p3, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;

    .prologue
    .line 338
    const-string/jumbo v5, "tabbar_item"

    invoke-static {p2, v5}, Lcom/julysystems/appx/AppXXMLUtils;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v0

    .line 339
    .local v0, "itemList":[Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/julysystems/appx/AppXPageView;->tabKeys:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {p3}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/julysystems/appx/AppXPageView;->tabMap:Ljava/util/HashMap;

    .line 341
    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 348
    return-void

    .line 341
    :cond_0
    aget-object v3, v0, v5

    .line 342
    .local v3, "tabItem":Lorg/w3c/dom/Element;
    const-string v7, "a"

    invoke-static {v3, v7}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 343
    .local v2, "linkElement":Lorg/w3c/dom/Element;
    const-string v7, "name"

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "tabItemName":Ljava/lang/String;
    const-string v7, "href"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "link":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v7

    iget-object v7, v7, Lcom/julysystems/appx/AppXPageView;->tabKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {p3}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v7

    iget-object v7, v7, Lcom/julysystems/appx/AppXPageView;->tabMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected preloadComponents(Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "element"    # Lorg/w3c/dom/Element;
    .param p4, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/julysystems/appx/AppXViewElement;",
            ">;",
            "Lorg/w3c/dom/Element;",
            "Lcom/julysystems/appx/AppXPageData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p2, "viewElements":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXViewElement;>;"
    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 145
    .local v6, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    return-void

    .line 145
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 146
    .local v2, "viewNode":Lorg/w3c/dom/Element;
    const-string v0, "name"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "viewJName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 148
    .local v8, "startJView":J
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;

    move-result-object v7

    .line 149
    .local v7, "view":Landroid/view/View;
    new-instance v0, Lcom/julysystems/appx/AppXViewElement;

    invoke-direct {v0, v10, v2, v7}, Lcom/julysystems/appx/AppXViewElement;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;Landroid/view/View;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    sget-boolean v0, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "preloadComponents "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAppXNetworkListner(Lcom/julysystems/appx/AppXNetworkListner;)V
    .locals 0
    .param p1, "listner"    # Lcom/julysystems/appx/AppXNetworkListner;

    .prologue
    .line 1028
    sput-object p1, Lcom/julysystems/appx/AppX;->mAppXNetworkListner:Lcom/julysystems/appx/AppXNetworkListner;

    .line 1029
    return-void
.end method
