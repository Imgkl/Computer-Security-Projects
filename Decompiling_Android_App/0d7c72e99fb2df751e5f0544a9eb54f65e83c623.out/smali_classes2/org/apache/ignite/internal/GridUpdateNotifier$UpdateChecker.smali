.class Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridUpdateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/GridUpdateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateChecker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final log:Lorg/apache/ignite/IgniteLogger;

.field final synthetic this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    const-class v0, Lorg/apache/ignite/internal/GridUpdateNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/GridUpdateNotifier;Lorg/apache/ignite/IgniteLogger;)V
    .locals 2
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 254
    iput-object p1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    .line 255
    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->gridName:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$000(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "grid-version-checker"

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->log:Lorg/apache/ignite/IgniteLogger;

    .line 258
    return-void
.end method

.method private obtainVersionFrom(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 331
    sget-boolean v6, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 333
    :cond_0
    instance-of v6, p1, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_1

    const-string v6, "meta"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, p1

    .line 334
    check-cast v3, Lorg/w3c/dom/Element;

    .line 336
    .local v3, "meta":Lorg/w3c/dom/Element;
    const-string v6, "name"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "name":Ljava/lang/String;
    const-string v6, "version"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 339
    const-string v6, "content"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "content":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 355
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "meta":Lorg/w3c/dom/Element;
    .end local v4    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 346
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 348
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 349
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->obtainVersionFrom(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "ver":Ljava/lang/String;
    if-eqz v5, :cond_2

    move-object v1, v5

    .line 352
    goto :goto_0

    .line 348
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 355
    .end local v5    # "ver":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected body()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 263
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->gw:Lorg/apache/ignite/internal/GridKernalGateway;
    invoke-static {v12}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$100(Lorg/apache/ignite/internal/GridUpdateNotifier;)Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->gw:Lorg/apache/ignite/internal/GridKernalGateway;
    invoke-static {v12}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$100(Lorg/apache/ignite/internal/GridUpdateNotifier;)Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalGateway;->userStackTrace()Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "stackTrace":Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gridName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->gridName:Ljava/lang/String;
    invoke-static {v13}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$000(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->UPD_STATUS_PARAMS:Ljava/lang/String;
    invoke-static {}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$200()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->UPD_STATUS_PARAMS:Ljava/lang/String;
    invoke-static {}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$200()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->topSize:I
    invoke-static {v12}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$300(Lorg/apache/ignite/internal/GridUpdateNotifier;)I

    move-result v12

    if-lez v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&topSize="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->topSize:I
    invoke-static {v14}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$300(Lorg/apache/ignite/internal/GridUpdateNotifier;)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&stackTrace="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "UTF-8"

    invoke-static {v9, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->vmProps:Ljava/lang/String;
    invoke-static {v12}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$400(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&vmProps="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->vmProps:Ljava/lang/String;
    invoke-static {v14}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$400(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_4
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "postParams":Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->url:Ljava/lang/String;
    invoke-static {v13}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$500(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 274
    .local v1, "conn":Ljava/net/URLConnection;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_1

    .line 275
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 276
    const-string v12, "Accept-Charset"

    const-string v13, "UTF-8"

    invoke-virtual {v1, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {v1, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/16 v12, 0xbb8

    invoke-virtual {v1, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 280
    const/16 v12, 0xbb8

    invoke-virtual {v1, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 282
    const/4 v2, 0x0

    .line 285
    .local v2, "dom":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .local v6, "os":Ljava/io/OutputStream;
    const/4 v13, 0x0

    .line 286
    :try_start_2
    const-string v12, "UTF-8"

    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 287
    if-eqz v6, :cond_0

    if-eqz v13, :cond_8

    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 289
    :cond_0
    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    .local v4, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 290
    if-nez v4, :cond_c

    .line 307
    if-eqz v4, :cond_1

    if-eqz v13, :cond_b

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 322
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v2    # "dom":Lorg/w3c/dom/Document;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "postParams":Ljava/lang/String;
    .end local v9    # "stackTrace":Ljava/lang/String;
    :cond_1
    :goto_6
    return-void

    .line 263
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 265
    .restart local v9    # "stackTrace":Ljava/lang/String;
    :cond_3
    :try_start_6
    const-string v12, ""

    goto/16 :goto_1

    :cond_4
    const-string v12, ""

    goto/16 :goto_2

    :cond_5
    const-string v12, ""

    goto/16 :goto_3

    :cond_6
    const-string v12, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 287
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v2    # "dom":Lorg/w3c/dom/Document;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "postParams":Ljava/lang/String;
    :catch_0
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v13, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 309
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v10    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 310
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to connect to Ignite update server. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 314
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    :goto_7
    if-eqz v2, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->obtainVersionFrom(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    # setter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->latestVer:Ljava/lang/String;
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$702(Lorg/apache/ignite/internal/GridUpdateNotifier;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 318
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v2    # "dom":Lorg/w3c/dom/Document;
    .end local v7    # "postParams":Ljava/lang/String;
    .end local v9    # "stackTrace":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 319
    .local v3, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected exception in update checker. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 287
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v2    # "dom":Lorg/w3c/dom/Document;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "postParams":Ljava/lang/String;
    .restart local v9    # "stackTrace":Ljava/lang/String;
    :cond_8
    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_5

    .line 285
    :catch_3
    move-exception v12

    :try_start_a
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 287
    :catchall_0
    move-exception v13

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    :goto_8
    if-eqz v6, :cond_9

    if-eqz v13, :cond_a

    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :cond_9
    :goto_9
    :try_start_c
    throw v12

    :catch_4
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    .line 307
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_6

    .line 293
    :cond_c
    :try_start_d
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    const-string v14, "UTF-8"

    invoke-direct {v12, v4, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 295
    .local v8, "reader":Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v11, "xml":Ljava/lang/StringBuilder;
    :goto_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 300
    const-string v12, "<meta"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "/>"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 301
    const-string v12, ">"

    const-string v14, "/>"

    invoke-virtual {v5, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 303
    :cond_d
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v14, 0xa

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    .line 289
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "xml":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v12

    :try_start_e
    throw v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 307
    :catchall_1
    move-exception v13

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    :goto_b
    if-eqz v4, :cond_e

    if-eqz v13, :cond_11

    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :cond_e
    :goto_c
    :try_start_10
    throw v12
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 306
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "xml":Ljava/lang/StringBuilder;
    :cond_f
    :try_start_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    # getter for: Lorg/apache/ignite/internal/GridUpdateNotifier;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {v12}, Lorg/apache/ignite/internal/GridUpdateNotifier;->access$600(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v12, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-result-object v2

    .line 307
    if-eqz v4, :cond_7

    if-eqz v13, :cond_10

    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_7

    :catch_7
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    :try_start_13
    invoke-virtual {v13, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_7

    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "xml":Ljava/lang/StringBuilder;
    :catch_8
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_c

    :catchall_2
    move-exception v12

    goto :goto_b

    .line 287
    .end local v4    # "in":Ljava/io/InputStream;
    :catchall_3
    move-exception v12

    goto/16 :goto_8
.end method
