.class Lcom/urbanairship/location/FusedLocationAdapter$1;
.super Ljava/lang/Object;
.source "FusedLocationAdapter.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/FusedLocationAdapter;->connect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/FusedLocationAdapter;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/FusedLocationAdapter;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/urbanairship/location/FusedLocationAdapter$1;->this$0:Lcom/urbanairship/location/FusedLocationAdapter;

    iput-object p2, p0, Lcom/urbanairship/location/FusedLocationAdapter$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 101
    const-string v0, "FusedLocationAdapter - Google Play services failed to connect for fused location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 103
    return-void
.end method
