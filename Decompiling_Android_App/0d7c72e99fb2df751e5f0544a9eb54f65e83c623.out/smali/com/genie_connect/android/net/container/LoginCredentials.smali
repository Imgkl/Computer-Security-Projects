.class public Lcom/genie_connect/android/net/container/LoginCredentials;
.super Ljava/lang/Object;
.source "LoginCredentials.java"


# instance fields
.field private final mPassword:Ljava/lang/String;

.field private final mUsername:Ljava/lang/String;

.field private final mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/net/container/LoginCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "visitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mUsername:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mPassword:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized getAllVisitorGroupNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getAllVisitorGroupNames()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMugshotUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getMugShotUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryVisitorGroupName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserId()J
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 70
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isShowMe()Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->isShowMe()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginCredentials [mUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVisitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/LoginCredentials;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
