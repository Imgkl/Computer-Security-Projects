.class public abstract Lcom/github/ignition/support/cache/CachedModel;
.super Ljava/lang/Object;
.source "CachedModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private id:Ljava/lang/String;

.field private transactionId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    .line 39
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/CachedModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    .line 49
    iput-object p1, p0, Lcom/github/ignition/support/cache/CachedModel;->id:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static find(Lcom/github/ignition/support/cache/ModelCache;Ljava/lang/String;Ljava/lang/Class;)Lcom/github/ignition/support/cache/CachedModel;
    .locals 4
    .param p0, "modelCache"    # Lcom/github/ignition/support/cache/ModelCache;
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ignition/support/cache/ModelCache;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/github/ignition/support/cache/CachedModel;",
            ">;)",
            "Lcom/github/ignition/support/cache/CachedModel;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/github/ignition/support/cache/CachedModel;>;"
    const/4 v2, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/ignition/support/cache/CachedModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v1, "testObject":Lcom/github/ignition/support/cache/CachedModel;
    invoke-virtual {v1, p1}, Lcom/github/ignition/support/cache/CachedModel;->setId(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, p0}, Lcom/github/ignition/support/cache/CachedModel;->reload(Lcom/github/ignition/support/cache/ModelCache;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    .end local v1    # "testObject":Lcom/github/ignition/support/cache/CachedModel;
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 104
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "testObject":Lcom/github/ignition/support/cache/CachedModel;
    :cond_0
    move-object v1, v2

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public abstract createKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedModel;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedModel;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/github/ignition/support/cache/CachedModel;->createKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ignition/support/cache/CachedModel;->id:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    .line 260
    return-void
.end method

.method public reload(Lcom/github/ignition/support/cache/ModelCache;)Z
    .locals 8
    .param p1, "modelCache"    # Lcom/github/ignition/support/cache/ModelCache;

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/github/ignition/support/cache/CachedModel;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p1, v1}, Lcom/github/ignition/support/cache/ModelCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/ignition/support/cache/CachedModel;

    .line 170
    .local v0, "cachedModel":Lcom/github/ignition/support/cache/CachedModel;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    iget-wide v6, p0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/github/ignition/support/cache/CachedModel;->reloadFromCachedModel(Lcom/github/ignition/support/cache/ModelCache;Lcom/github/ignition/support/cache/CachedModel;)Z

    .line 172
    iget-wide v2, v0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    iput-wide v2, p0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    .line 173
    const/4 v2, 0x1

    .line 178
    .end local v0    # "cachedModel":Lcom/github/ignition/support/cache/CachedModel;
    :cond_0
    return v2
.end method

.method public abstract reloadFromCachedModel(Lcom/github/ignition/support/cache/ModelCache;Lcom/github/ignition/support/cache/CachedModel;)Z
.end method

.method public save(Lcom/github/ignition/support/cache/ModelCache;)Z
    .locals 1
    .param p1, "modelCache"    # Lcom/github/ignition/support/cache/ModelCache;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/github/ignition/support/cache/CachedModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/ignition/support/cache/CachedModel;->save(Lcom/github/ignition/support/cache/ModelCache;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected save(Lcom/github/ignition/support/cache/ModelCache;Ljava/lang/String;)Z
    .locals 1
    .param p1, "modelCache"    # Lcom/github/ignition/support/cache/ModelCache;
    .param p2, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p1, p2, p0}, Lcom/github/ignition/support/cache/ModelCache;->put(Ljava/lang/String;Lcom/github/ignition/support/cache/CachedModel;)Lcom/github/ignition/support/cache/CachedModel;

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/github/ignition/support/cache/CachedModel;->id:Ljava/lang/String;

    .line 69
    return-void
.end method

.method setTransactionId(J)V
    .locals 1
    .param p1, "transactionId"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedModel;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-wide v0, p0, Lcom/github/ignition/support/cache/CachedModel;->transactionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    return-void
.end method
