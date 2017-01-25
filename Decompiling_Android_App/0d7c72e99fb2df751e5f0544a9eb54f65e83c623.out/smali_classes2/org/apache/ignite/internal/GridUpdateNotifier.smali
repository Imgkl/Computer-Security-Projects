.class Lorg/apache/ignite/internal/GridUpdateNotifier;
.super Ljava/lang/Object;
.source "GridUpdateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final THROTTLE_PERIOD:J = 0x5265c00L

.field private static final UPD_STATUS_PARAMS:Ljava/lang/String;


# instance fields
.field private checker:Lorg/apache/ignite/internal/util/worker/GridWorker;

.field private final documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private final gridName:Ljava/lang/String;

.field private final gw:Lorg/apache/ignite/internal/GridKernalGateway;

.field private lastLog:J

.field private volatile latestVer:Ljava/lang/String;

.field private volatile reportOnlyNew:Z

.field private volatile topSize:I

.field private final url:Ljava/lang/String;

.field private final ver:Ljava/lang/String;

.field private final vmProps:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/internal/GridUpdateNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridUpdateNotifier;->$assertionsDisabled:Z

    .line 43
    const-string v0, "ignite.update.status.params"

    invoke-static {v0}, Lorg/apache/ignite/internal/IgniteProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/GridUpdateNotifier;->UPD_STATUS_PARAMS:Ljava/lang/String;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/GridKernalGateway;Z)V
    .locals 4
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "ver"    # Ljava/lang/String;
    .param p3, "gw"    # Lorg/apache/ignite/internal/GridKernalGateway;
    .param p4, "reportOnlyNew"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->lastLog:J

    .line 93
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 95
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 97
    iget-object v2, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Lorg/apache/ignite/internal/GridUpdateNotifier$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/GridUpdateNotifier$1;-><init>(Lorg/apache/ignite/internal/GridUpdateNotifier;)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 106
    iput-object p2, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->ver:Ljava/lang/String;

    .line 108
    const-string v2, "http://tiny.cc/updater/update_status_ignite.php"

    iput-object v2, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->url:Ljava/lang/String;

    .line 110
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "gridName":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->gridName:Ljava/lang/String;

    .line 111
    iput-boolean p4, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->reportOnlyNew:Z

    .line 112
    iput-object p3, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->gw:Lorg/apache/ignite/internal/GridKernalGateway;

    .line 114
    invoke-static {}, Lorg/apache/ignite/internal/GridUpdateNotifier;->getSystemProperties()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->vmProps:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 116
    .end local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to create xml parser."

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridUpdateNotifier;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/GridUpdateNotifier;)Lorg/apache/ignite/internal/GridKernalGateway;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridUpdateNotifier;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->gw:Lorg/apache/ignite/internal/GridKernalGateway;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/apache/ignite/internal/GridUpdateNotifier;->UPD_STATUS_PARAMS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/GridUpdateNotifier;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridUpdateNotifier;

    .prologue
    .line 41
    iget v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->topSize:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridUpdateNotifier;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->vmProps:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridUpdateNotifier;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/GridUpdateNotifier;)Ljavax/xml/parsers/DocumentBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridUpdateNotifier;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    return-object v0
.end method

.method static synthetic access$702(Lorg/apache/ignite/internal/GridUpdateNotifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridUpdateNotifier;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->latestVer:Ljava/lang/String;

    return-object p1
.end method

.method private static getSystemProperties()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 128
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .local v1, "sw":Ljava/io/StringWriter;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :try_start_2
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 140
    :goto_0
    return-object v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_0

    .line 139
    .end local v0    # "ignore":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "ignore":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private throttle(Lorg/apache/ignite/IgniteLogger;ZLjava/lang/String;)V
    .locals 7
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "warn"    # Z
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 220
    sget-boolean v2, Lorg/apache/ignite/internal/GridUpdateNotifier;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 221
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/GridUpdateNotifier;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 223
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 225
    .local v0, "now":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->lastLog:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 226
    if-nez p2, :cond_4

    .line 227
    invoke-static {p1, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 235
    :cond_2
    :goto_0
    iput-wide v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->lastLog:J

    .line 237
    :cond_3
    return-void

    .line 229
    :cond_4
    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v6, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 231
    invoke-interface {p1}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    invoke-interface {p1, p3}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method checkForNewVersion(Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 172
    sget-boolean v1, Lorg/apache/ignite/internal/GridUpdateNotifier;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 174
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object p2

    .line 177
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;

    invoke-direct {v1, p0, p2}, Lorg/apache/ignite/internal/GridUpdateNotifier$UpdateChecker;-><init>(Lorg/apache/ignite/internal/GridUpdateNotifier;Lorg/apache/ignite/IgniteLogger;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->checker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule a thread due to execution rejection (safely ignoring): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method latestVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->latestVer:Ljava/lang/String;

    return-object v0
.end method

.method reportOnlyNew(Z)V
    .locals 0
    .param p1, "reportOnlyNew"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->reportOnlyNew:Z

    .line 149
    return-void
.end method

.method reportStatus(Lorg/apache/ignite/IgniteLogger;)V
    .locals 4
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    const/4 v2, 0x0

    .line 191
    sget-boolean v1, Lorg/apache/ignite/internal/GridUpdateNotifier;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object p1

    .line 197
    iget-object v1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->checker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 199
    iget-object v0, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->latestVer:Ljava/lang/String;

    .line 201
    .local v0, "latestVer":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 202
    iget-object v1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-boolean v1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->reportOnlyNew:Z

    if-nez v1, :cond_1

    .line 204
    const-string v1, "Your version is up to date."

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/ignite/internal/GridUpdateNotifier;->throttle(Lorg/apache/ignite/IgniteLogger;ZLjava/lang/String;)V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New version is available at ignite.incubator.apache.org: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/ignite/internal/GridUpdateNotifier;->throttle(Lorg/apache/ignite/IgniteLogger;ZLjava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->reportOnlyNew:Z

    if-nez v1, :cond_1

    .line 210
    const-string v1, "Update status is not available."

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/ignite/internal/GridUpdateNotifier;->throttle(Lorg/apache/ignite/IgniteLogger;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method topologySize(I)V
    .locals 0
    .param p1, "topSize"    # I

    .prologue
    .line 155
    iput p1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier;->topSize:I

    .line 156
    return-void
.end method
