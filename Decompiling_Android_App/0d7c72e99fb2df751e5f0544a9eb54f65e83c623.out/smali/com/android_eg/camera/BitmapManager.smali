.class public Lcom/android_eg/camera/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android_eg/camera/BitmapManager$1;,
        Lcom/android_eg/camera/BitmapManager$ThreadStatus;,
        Lcom/android_eg/camera/BitmapManager$State;
    }
.end annotation


# static fields
.field private static sManager:Lcom/android_eg/camera/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/android_eg/camera/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android_eg/camera/BitmapManager;->sManager:Lcom/android_eg/camera/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android_eg/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 67
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android_eg/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;

    .line 74
    .local v0, "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;

    .end local v0    # "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android_eg/camera/BitmapManager$ThreadStatus;-><init>(Lcom/android_eg/camera/BitmapManager$1;)V

    .line 76
    .restart local v0    # "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/android_eg/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit p0

    return-object v0

    .line 73
    .end local v0    # "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/android_eg/camera/BitmapManager;
    .locals 2

    .prologue
    .line 169
    const-class v1, Lcom/android_eg/camera/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android_eg/camera/BitmapManager;->sManager:Lcom/android_eg/camera/BitmapManager;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/android_eg/camera/BitmapManager;

    invoke-direct {v0}, Lcom/android_eg/camera/BitmapManager;-><init>()V

    sput-object v0, Lcom/android_eg/camera/BitmapManager;->sManager:Lcom/android_eg/camera/BitmapManager;

    .line 172
    :cond_0
    sget-object v0, Lcom/android_eg/camera/BitmapManager;->sManager:Lcom/android_eg/camera/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android_eg/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/android_eg/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android_eg/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/android_eg/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/android_eg/camera/BitmapManager$State;->ALLOW:Lcom/android_eg/camera/BitmapManager$State;

    iput-object v1, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mState:Lcom/android_eg/camera/BitmapManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    const/4 v0, 0x1

    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android_eg/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .local v1, "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    .line 107
    :goto_0
    monitor-exit p0

    return v0

    .line 106
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mState:Lcom/android_eg/camera/BitmapManager$State;

    sget-object v3, Lcom/android_eg/camera/BitmapManager$State;->CANCEL:Lcom/android_eg/camera/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    .line 107
    .local v0, "result":Z
    :goto_1
    goto :goto_0

    .line 106
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 100
    .end local v1    # "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android_eg/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/android_eg/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 116
    .local v0, "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    sget-object v1, Lcom/android_eg/camera/BitmapManager$State;->CANCEL:Lcom/android_eg/camera/BitmapManager$State;

    iput-object v1, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mState:Lcom/android_eg/camera/BitmapManager$State;

    .line 117
    iget-object v1, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :goto_0
    :try_start_2
    iget-boolean v1, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V

    .line 131
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :catch_0
    move-exception v1

    .line 137
    :goto_1
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 115
    .end local v0    # "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_0

    .line 194
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 185
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/android_eg/camera/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to decode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android_eg/camera/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 191
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/android_eg/camera/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method public getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "origId"    # J
    .param p4, "kind"    # I
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p6, "isVideo"    # Z

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 142
    .local v1, "t":Ljava/lang/Thread;
    invoke-direct {p0, v1}, Lcom/android_eg/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/android_eg/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 144
    .local v0, "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    invoke-virtual {p0, v1}, Lcom/android_eg/camera/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-object v2

    .line 150
    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 151
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 152
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    if-eqz p6, :cond_1

    .line 154
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, p4, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 161
    monitor-enter v0

    .line 162
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 152
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 161
    :catchall_2
    move-exception v2

    monitor-enter v0

    .line 162
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v2

    .line 157
    :cond_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, p4, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v2

    .line 161
    monitor-enter v0

    .line 162
    const/4 v3, 0x0

    :try_start_8
    iput-boolean v3, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2

    :catchall_4
    move-exception v2

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v2
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android_eg/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;

    .line 92
    .local v0, "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android_eg/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    .end local v0    # "status":Lcom/android_eg/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
