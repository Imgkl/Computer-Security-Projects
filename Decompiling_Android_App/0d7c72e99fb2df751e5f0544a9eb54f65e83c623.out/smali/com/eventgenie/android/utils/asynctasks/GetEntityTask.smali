.class public Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;
.super Landroid/os/AsyncTask;
.source "GetEntityTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/genie_connect/common/net/container/NetworkResultGsonContent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mEntityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/EntityGsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "J",
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/EntityGsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p5, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/EntityGsonModel;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 52
    iput-object p5, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mEntityClass:Ljava/lang/Class;

    .line 53
    iput-wide p3, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mId:J

    .line 54
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mEntityClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v4, p0, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->mId:J

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntityAsGson(Ljava/lang/Class;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v6

    .line 63
    .end local v1    # "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    :goto_0
    return-object v6

    .line 62
    :cond_0
    const-string v0, "^ GetEntityTask: Device Offline..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    return-object v0
.end method
