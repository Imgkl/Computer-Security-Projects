.class public final Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;
.super Ljava/lang/Object;
.source "ReflectiveDrawableLoader.java"


# static fields
.field private static final CACHE_SIZE:I = 0x64

.field public static final ICON_PREFIX_BASE:Ljava/lang/String; = "ic_"

.field public static final ICON_PREFIX_DIALOG:Ljava/lang/String; = "ic_dialog_"

.field public static final ICON_PREFIX_LAUNCHER:Ljava/lang/String; = "ic_launcher_"

.field public static final ICON_PREFIX_LIST:Ljava/lang/String; = "ic_list_"

.field public static final ICON_PREFIX_MENU:Ljava/lang/String; = "ic_menu_"

.field public static final ICON_PREFIX_STATUS_BAR:Ljava/lang/String; = "ic_stat_notify_"

.field public static final ICON_PREFIX_TAB:Ljava/lang/String; = "ic_tab_"

.field private static final TIME_LOGGING_ENABLED:Z

.field private static instance:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAddDrawableNameToContainer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCache:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheMisses:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogErrors:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mReflectionUtils:Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->instance:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->TAG:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mReflectionUtils:Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;

    .line 50
    iput-object v1, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mCache:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    .line 51
    iput-object v1, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mAddDrawableNameToContainer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    iput-object v1, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mLogErrors:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->TAG:Ljava/lang/String;

    const-string v1, "ReflectiveDrawableLoader() The default Constructor was called! This should never happen..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The default Constructor was called! This should never happen..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mReflectionUtils:Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;

    .line 60
    new-instance v0, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    invoke-direct {v0, v4, v2}, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mCache:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    .line 61
    new-instance v0, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    invoke-direct {v0, v4, v2}, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mCacheMisses:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mAddDrawableNameToContainer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mLogErrors:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    return-void
.end method

.method private fetchDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 3
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableId(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "res":I
    new-instance v1, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mAddDrawableNameToContainer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1    # "drawableName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->tryColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    return-object v1

    .restart local p1    # "drawableName":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized fetchDrawableId(Ljava/lang/String;I)I
    .locals 4
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "fallbackDrawableId"    # I

    .prologue
    .line 72
    monitor-enter p0

    const/4 v1, 0x0

    .line 80
    .local v1, "result":Ljava/lang/Integer;
    :try_start_0
    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mCacheMisses:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    invoke-virtual {v2, p1}, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 83
    :cond_1
    :try_start_1
    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mCache:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    invoke-virtual {v2, p1}, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    .line 85
    if-nez v1, :cond_0

    .line 86
    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mReflectionUtils:Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;

    iget-object v3, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mLogErrors:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->reflectDrawable(Ljava/lang/String;IZ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 89
    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mCache:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    invoke-virtual {v2, p1, v1}, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 92
    :cond_2
    :try_start_2
    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mCacheMisses:Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "family"    # Ljava/lang/String;

    .prologue
    .line 382
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 383
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 385
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static formatKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;

    .prologue
    .line 390
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 391
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    sget-object v0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->instance:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    if-nez v0, :cond_1

    .line 405
    const-class v1, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    monitor-enter v1

    .line 406
    :try_start_0
    sget-object v0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->instance:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    invoke-direct {v0, p0}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->instance:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    .line 405
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_1
    sget-object v0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->instance:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    return-object v0

    .line 405
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private tryColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "colorString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 367
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-object v1

    .line 372
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mLogErrors:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryColor() - IllegalArgumentException while trying to parse color \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getDialogDrawable(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_dialog_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->getDrawableId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDialogDrawableContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "colorString"    # Ljava/lang/String;
    .param p4, "fallbackDrawableId"    # I

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_dialog_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 1
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "colorString"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->getDrawableContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 1
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "colorString"    # Ljava/lang/String;
    .param p4, "fallbackDrawableId"    # I

    .prologue
    .line 160
    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableId(Ljava/lang/String;I)I
    .locals 1
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "fallbackDrawableId"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->getDrawableId(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDrawableId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 183
    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLauncherDrawableContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "colorString"    # Ljava/lang/String;
    .param p4, "fallbackDrawableId"    # I

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_launcher_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherDrawableId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_launcher_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getListDrawableContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "colorString"    # Ljava/lang/String;
    .param p4, "fallbackDrawableId"    # I

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_list_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method public getListDrawableId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_list_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMenuDrawableContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "colorString"    # Ljava/lang/String;
    .param p4, "fallbackDrawableId"    # I

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_menu_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMenuDrawableId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_menu_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStatusBarDrawableContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "colorString"    # Ljava/lang/String;
    .param p4, "fallbackDrawableId"    # I

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_stat_notify_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarDrawableId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_stat_notify_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTabDrawableContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "colorString"    # Ljava/lang/String;
    .param p4, "fallbackDrawableId"    # I

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_tab_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableContainer(Ljava/lang/String;Ljava/lang/String;I)Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method public getTabDrawableId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_tab_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->fetchDrawableId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public printDrawablesToLogCat()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mReflectionUtils:Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;

    const-string v1, ".R.drawable"

    invoke-virtual {v0, v1}, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->logFields(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public declared-synchronized setAddDrawableNameToContainer(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mAddDrawableNameToContainer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLogErrors(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->mLogErrors:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
