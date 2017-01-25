.class public Lcom/github/ignition/support/cache/CachedList;
.super Lcom/github/ignition/support/cache/CachedModel;
.source "CachedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CO:",
        "Lcom/github/ignition/support/cache/CachedModel;",
        ">",
        "Lcom/github/ignition/support/cache/CachedModel;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/github/ignition/support/cache/CachedList",
            "<",
            "Lcom/github/ignition/support/cache/CachedModel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/github/ignition/support/cache/CachedModel;",
            ">;"
        }
    .end annotation
.end field

.field protected list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TCO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/github/ignition/support/cache/CachedList$1;

    invoke-direct {v0}, Lcom/github/ignition/support/cache/CachedList$1;-><init>()V

    sput-object v0, Lcom/github/ignition/support/cache/CachedList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    invoke-direct {p0}, Lcom/github/ignition/support/cache/CachedModel;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    invoke-direct {p0, p1}, Lcom/github/ignition/support/cache/CachedModel;-><init>(Landroid/os/Parcel;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/github/ignition/support/cache/CachedModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/github/ignition/support/cache/CachedModel;>;"
    invoke-direct {p0}, Lcom/github/ignition/support/cache/CachedModel;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "initialLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/github/ignition/support/cache/CachedModel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/github/ignition/support/cache/CachedModel;>;"
    invoke-direct {p0}, Lcom/github/ignition/support/cache/CachedModel;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/github/ignition/support/cache/CachedModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/github/ignition/support/cache/CachedModel;>;"
    invoke-direct {p0, p2}, Lcom/github/ignition/support/cache/CachedModel;-><init>(Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    .line 94
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/github/ignition/support/cache/CachedModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCO;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    .local p1, "cachedObject":Lcom/github/ignition/support/cache/CachedModel;, "TCO;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 166
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    const/4 v2, 0x0

    .line 153
    monitor-enter p0

    :try_start_0
    instance-of v3, p1, Lcom/github/ignition/support/cache/CachedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 157
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/github/ignition/support/cache/CachedList;

    move-object v1, v0

    .line 158
    .local v1, "that":Lcom/github/ignition/support/cache/CachedList;
    iget-object v3, p0, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    iget-object v4, v1, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "that":Lcom/github/ignition/support/cache/CachedList;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized get(I)Lcom/github/ignition/support/cache/CachedModel;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCO;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/ignition/support/cache/CachedModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TCO;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    invoke-super {p0, p1}, Lcom/github/ignition/support/cache/CachedModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    .line 239
    iget-object v2, p0, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    const-string v3, "CREATOR"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reload(Lcom/github/ignition/support/cache/ModelCache;)Z
    .locals 4
    .param p1, "modelCache"    # Lcom/github/ignition/support/cache/ModelCache;

    .prologue
    .line 172
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    invoke-super {p0, p1}, Lcom/github/ignition/support/cache/CachedModel;->reload(Lcom/github/ignition/support/cache/ModelCache;)Z

    move-result v2

    .line 176
    .local v2, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/ignition/support/cache/CachedModel;

    .line 178
    .local v1, "listModel":Lcom/github/ignition/support/cache/CachedModel;
    invoke-virtual {v1, p1}, Lcom/github/ignition/support/cache/CachedModel;->reload(Lcom/github/ignition/support/cache/ModelCache;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const/4 v2, 0x1

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "listModel":Lcom/github/ignition/support/cache/CachedModel;
    :cond_1
    return v2
.end method

.method public declared-synchronized reloadFromCachedModel(Lcom/github/ignition/support/cache/ModelCache;Lcom/github/ignition/support/cache/CachedModel;)Z
    .locals 3
    .param p1, "modelCache"    # Lcom/github/ignition/support/cache/ModelCache;
    .param p2, "cachedModel"    # Lcom/github/ignition/support/cache/CachedModel;

    .prologue
    .line 192
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    monitor-enter p0

    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/github/ignition/support/cache/CachedList;

    move-object v1, v0

    .line 193
    .local v1, "cachedList":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    iget-object v2, v1, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    iput-object v2, p0, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    .line 194
    iget-object v2, v1, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 192
    .end local v1    # "cachedList":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized set(ILcom/github/ignition/support/cache/CachedModel;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITCO;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    .local p2, "cachedObject":Lcom/github/ignition/support/cache/CachedModel;, "TCO;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 250
    .local p0, "this":Lcom/github/ignition/support/cache/CachedList;, "Lcom/github/ignition/support/cache/CachedList<TCO;>;"
    invoke-super {p0, p1, p2}, Lcom/github/ignition/support/cache/CachedModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/github/ignition/support/cache/CachedList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 254
    return-void
.end method
