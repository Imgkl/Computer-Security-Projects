.class public Lcom/eventgenie/android/utils/constants/IfDefs;
.super Ljava/lang/Object;
.source "IfDefs.java"


# static fields
.field public static final USE_SHAPES_FILE:Z

.field private static sBrowseAndSearchEnabled:Z

.field private static sDebugBoundingBoxes:Z

.field private static sDebugImageLoader:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sGamificationEnabled:Z

.field private static sSaveNetworkDataToSd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sShowEntityIds:Z

.field private static sShowNavigationGrod:Z

.field private static sUseNewDownloadables:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sDebugImageLoader:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sSaveNetworkDataToSd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    sput-boolean v2, Lcom/eventgenie/android/utils/constants/IfDefs;->sGamificationEnabled:Z

    .line 41
    sput-boolean v1, Lcom/eventgenie/android/utils/constants/IfDefs;->sBrowseAndSearchEnabled:Z

    .line 42
    sput-boolean v1, Lcom/eventgenie/android/utils/constants/IfDefs;->sDebugBoundingBoxes:Z

    .line 43
    sput-boolean v1, Lcom/eventgenie/android/utils/constants/IfDefs;->sShowNavigationGrod:Z

    .line 44
    sput-boolean v1, Lcom/eventgenie/android/utils/constants/IfDefs;->sShowEntityIds:Z

    .line 45
    sput-boolean v2, Lcom/eventgenie/android/utils/constants/IfDefs;->sUseNewDownloadables:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBrowseAndSearchEnabled()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sBrowseAndSearchEnabled:Z

    return v0
.end method

.method public static isDebugBoundingBoxes()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sDebugBoundingBoxes:Z

    return v0
.end method

.method public static isDebugImageLoader()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sDebugImageLoader:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isGamificationEnabled()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sGamificationEnabled:Z

    return v0
.end method

.method public static isSaveNetworkDataToSd()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sSaveNetworkDataToSd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isShowEntityIdsEnabled()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sShowEntityIds:Z

    return v0
.end method

.method public static isShowNavigationGrid()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sShowNavigationGrod:Z

    return v0
.end method

.method public static isUseNewDownloadables()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sUseNewDownloadables:Z

    return v0
.end method

.method public static setBrowseAndSearchEnabled(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 80
    sput-boolean p0, Lcom/eventgenie/android/utils/constants/IfDefs;->sBrowseAndSearchEnabled:Z

    .line 81
    return-void
.end method

.method public static setDebugBoundingBoxes(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 84
    sput-boolean p0, Lcom/eventgenie/android/utils/constants/IfDefs;->sDebugBoundingBoxes:Z

    .line 85
    return-void
.end method

.method public static setDebugImageLoader(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 88
    sget-object v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sDebugImageLoader:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    return-void
.end method

.method public static setGamificationEnabled(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 92
    sput-boolean p0, Lcom/eventgenie/android/utils/constants/IfDefs;->sGamificationEnabled:Z

    .line 93
    return-void
.end method

.method public static setSaveNetworkDataToSd(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 96
    sget-object v0, Lcom/eventgenie/android/utils/constants/IfDefs;->sSaveNetworkDataToSd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    return-void
.end method

.method public static setShowEntityIds(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/eventgenie/android/utils/constants/IfDefs;->sShowEntityIds:Z

    .line 101
    return-void
.end method

.method public static setShowNavigationGrid(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 104
    sput-boolean p0, Lcom/eventgenie/android/utils/constants/IfDefs;->sShowNavigationGrod:Z

    .line 105
    return-void
.end method

.method public static setUseNewDownloadables(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 108
    sput-boolean p0, Lcom/eventgenie/android/utils/constants/IfDefs;->sUseNewDownloadables:Z

    .line 109
    return-void
.end method
