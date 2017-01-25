.class Lcom/genie_connect/android/net/analytics/geniemobile/BreadCrumbGm;
.super Ljava/lang/Object;
.source "BreadCrumbGm.java"


# instance fields
.field private volatile mCurrentWidget:Lcom/genie_connect/android/db/config/GenieWidget;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->APP:Lcom/genie_connect/android/db/config/GenieWidget;

    iput-object v0, p0, Lcom/genie_connect/android/net/analytics/geniemobile/BreadCrumbGm;->mCurrentWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentWidget()Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/analytics/geniemobile/BreadCrumbGm;->mCurrentWidget:Lcom/genie_connect/android/db/config/GenieWidget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentWidget(Lcom/genie_connect/android/db/config/GenieWidget;)V
    .locals 1
    .param p1, "newWidget"    # Lcom/genie_connect/android/db/config/GenieWidget;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/genie_connect/android/net/analytics/geniemobile/BreadCrumbGm;->mCurrentWidget:Lcom/genie_connect/android/db/config/GenieWidget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
