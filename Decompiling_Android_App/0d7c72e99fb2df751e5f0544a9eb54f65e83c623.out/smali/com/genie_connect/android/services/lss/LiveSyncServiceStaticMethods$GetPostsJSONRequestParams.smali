.class public Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;
.super Ljava/lang/Object;
.source "LiveSyncServiceStaticMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetPostsJSONRequestParams"
.end annotation


# instance fields
.field private final deleteOtherOnPersist:Z

.field private final jsonOffset:I

.field private final jsonRequestLimit:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "requestLimit"    # I
    .param p2, "offset"    # I
    .param p3, "deleteOthers"    # Z

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p2, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->jsonOffset:I

    .line 143
    iput p1, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->jsonRequestLimit:I

    .line 144
    iput-boolean p3, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->deleteOtherOnPersist:Z

    .line 145
    return-void
.end method


# virtual methods
.method public deleteOtherOnPersist()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->deleteOtherOnPersist:Z

    return v0
.end method

.method public getJsonOffset()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->jsonOffset:I

    return v0
.end method

.method public getJsonRequestLimit()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->jsonRequestLimit:I

    return v0
.end method
