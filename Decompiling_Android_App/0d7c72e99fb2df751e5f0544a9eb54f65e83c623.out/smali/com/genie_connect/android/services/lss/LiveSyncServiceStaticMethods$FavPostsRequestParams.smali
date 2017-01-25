.class public Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$FavPostsRequestParams;
.super Ljava/lang/Object;
.source "LiveSyncServiceStaticMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavPostsRequestParams"
.end annotation


# instance fields
.field private final entityId:J

.field private final mNamespace:J

.field private final shouldFav:Z


# direct methods
.method public constructor <init>(ZJJ)V
    .locals 0
    .param p1, "shouldFav"    # Z
    .param p2, "entityId"    # J
    .param p4, "namespace"    # J

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean p1, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$FavPostsRequestParams;->shouldFav:Z

    .line 118
    iput-wide p2, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$FavPostsRequestParams;->entityId:J

    .line 119
    iput-wide p4, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$FavPostsRequestParams;->mNamespace:J

    .line 120
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$FavPostsRequestParams;->entityId:J

    return-wide v0
.end method

.method public getNamespace()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$FavPostsRequestParams;->mNamespace:J

    return-wide v0
.end method

.method public shouldFav()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$FavPostsRequestParams;->shouldFav:Z

    return v0
.end method
