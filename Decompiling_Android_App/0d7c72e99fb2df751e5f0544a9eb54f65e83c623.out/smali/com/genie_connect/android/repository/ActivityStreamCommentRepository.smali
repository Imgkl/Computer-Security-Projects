.class public Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "ActivityStreamCommentRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/ActivityStreamComment;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mNetworkDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;

.field private mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;Lcom/genie_connect/android/net/providers/NetworkSender;Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V
    .locals 6
    .param p1, "downloader"    # Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;
    .param p2, "networkSender"    # Lcom/genie_connect/android/net/providers/NetworkSender;
    .param p4, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p5, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p6, "notesRepo"    # Lcom/genie_connect/android/repository/NoteRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;",
            "Lcom/genie_connect/android/net/providers/NetworkSender;",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamComment;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 74
    .local p3, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/ActivityStreamComment;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMCOMMENT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 76
    iput-object p1, p0, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;->mNetworkDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;

    .line 77
    iput-object p2, p0, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;->mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    .line 78
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 3
    .param p1, "activityStreamPostId"    # Ljava/lang/Long;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;->mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v1, p1, p2}, Lcom/genie_connect/android/net/providers/NetworkSender;->postActivityStreamComment(Ljava/lang/Long;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    .line 100
    .local v0, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    if-nez v0, :cond_0

    .line 101
    const-string v1, "^ REPO (AS Comment) - Posting AS comment failed. Network Sender returned null result"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    .line 109
    :goto_0
    return v1

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ REPO (AS Comment) - Posting AS comment failed. Server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    goto :goto_0
.end method

.method public deleteComment(Ljava/lang/Long;)Z
    .locals 3
    .param p1, "activityStreamCommentId"    # Ljava/lang/Long;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;->mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMCOMMENT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2, p1}, Lcom/genie_connect/android/net/providers/NetworkSender;->deleteEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    move-result-object v0

    .line 121
    .local v0, "result":Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    if-nez v0, :cond_0

    .line 122
    const-string v1, "^ REPO (AS Comment) - Posting AS comment failed. Network Sender returned null result"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->isSuccesful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ REPO (AS Comment) - Posting AS comment failed. Server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->isSuccesful()Z

    move-result v1

    goto :goto_0
.end method

.method public getCommentsForPost(Ljava/lang/Long;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;
    .locals 8
    .param p1, "postId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamComment;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;->mNetworkDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;

    const-class v1, Lcom/genie_connect/common/db/model/ActivityStreamComment;

    new-array v2, v7, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "activityStreamPost"

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v7, v2}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getEntityCollection(Ljava/lang/Class;Z[Lorg/apache/http/NameValuePair;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;

    move-result-object v0

    return-object v0
.end method
