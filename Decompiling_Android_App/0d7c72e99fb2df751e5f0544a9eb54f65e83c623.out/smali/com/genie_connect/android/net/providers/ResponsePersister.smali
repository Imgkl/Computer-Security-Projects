.class public Lcom/genie_connect/android/net/providers/ResponsePersister;
.super Ljava/lang/Object;
.source "ResponsePersister.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/genie_connect/android/net/providers/ResponsePersister;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private static generateFilename(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "timestamp"    # J
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toJsonString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/genie_connect/android/net/providers/ResponsePersister;->normaliseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normaliseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "[^\\p{L}\\p{Nd}]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public saveResponse(JLjava/lang/String;Lcom/genie_connect/android/net/container/NetworkResultUdm;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/genie_connect/android/net/container/NetworkResultUdm;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/ResponsePersister;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p4}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/genie_connect/android/net/providers/ResponsePersister;->generateFilename(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/FileIoUtil;->copyToExternalPrivateStorage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public saveResponse(JLjava/lang/String;Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .prologue
    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 23
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/genie_connect/android/net/providers/ResponsePersister;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/genie_connect/android/net/providers/ResponsePersister;->generateFilename(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/FileIoUtil;->writeToExternalPrivateStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
